<?php
// Database connection
include('includes/dbconnection.php');

// PHPMailer classes
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Form data sanitization
    $name = htmlspecialchars(trim($_POST['name']));
    $mobile = htmlspecialchars(trim($_POST['mobile']));
    $subject = htmlspecialchars(trim($_POST['subject']));
    $message = htmlspecialchars(trim($_POST['message']));

    // Validation
    if (!preg_match("/^[a-zA-Z ]*$/", $name)) {
        echo "<script>alert('Only letters and spaces are allowed in Name'); window.history.back();</script>";
        exit();
    }

    if (!preg_match("/^[0-9]{10,15}$/", $mobile)) {
        echo "<script>alert('Enter a valid mobile number (10-15 digits)'); window.history.back();</script>";
        exit();
    }

    // Database insertion first (priority)
    $sql = "INSERT INTO contact_messages (name, mobile, subject, message) VALUES (:name, :mobile, :subject, :message)";
    $stmt = $dbh->prepare($sql);
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':mobile', $mobile);
    $stmt->bindParam(':subject', $subject);
    $stmt->bindParam(':message', $message);

    $db_success = $stmt->execute();
    
    // Email sending (secondary)
    $email_sent = false;
    $email_error = '';
    
    if ($db_success) {
        $mail = new PHPMailer(true);
        
        try {
            // Hostinger SMTP Configuration
            $mail->isSMTP();
            $mail->Host = 'smtp.hostinger.com';
            $mail->Port = 587;
            $mail->SMTPAuth = true;
            // $mail->Username = '*-- Your SMTP mail Here --*';
            // $mail->Password = '* -- your account password here -- *';
            $mail->SMTPSecure = 'tls';
            
            // Email content
            // $mail->setFrom('*-- Your SMTP mail Here --*', 'Website Contact Form');
            // $mail->addAddress('*-- Your Receiver mail Here --*');
            // $mail->addReplyTo('*-- Your SMTP mail Here --*', $name);
            
            $mail->isHTML(true);
            $mail->Subject = 'New Contact Form: ' . $subject;
            $mail->Body = "
                <h2>New Contact Form Submission</h2>
                <p><strong>Name:</strong> $name</p>
                <p><strong>Mobile:</strong> $mobile</p>
                <p><strong>Subject:</strong> $subject</p>
                <p><strong>Message:</strong></p>
                <p>$message</p>
            ";
            
            $mail->send();
            $email_sent = true;
        } catch (Exception $e) {
            $email_error = $mail->ErrorInfo;
        }
    }

    // Show appropriate message based on results
    if ($db_success && $email_sent) {
        echo "<script>alert('Your message has been sent successfully!'); window.location.href='index.php';</script>";
    } 
    elseif ($db_success) {
        echo "<script>alert('Your message has been received! We may take longer to respond due to technical issues.'); window.location.href='index.php';</script>";
    }
    else {
        echo "<script>alert('Failed to process your request. Please try again later.'); window.history.back();</script>";
    }
}
?>