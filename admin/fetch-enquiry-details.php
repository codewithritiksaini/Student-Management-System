<?php
include('includes/dbconnection.php');

if (isset($_POST['enquiry_id'])) {
    $eid = intval($_POST['enquiry_id']);
    $sql = "SELECT * FROM contact_messages WHERE id = :eid";
    $query = $dbh->prepare($sql);
    $query->bindParam(':eid', $eid, PDO::PARAM_INT);
    $query->execute();
    $row = $query->fetch(PDO::FETCH_ASSOC);

    if ($row) {
        echo "<p><strong>Name:</strong> " . htmlentities($row['name']) . "</p>";
        echo "<p><strong>Mobile:</strong> " . htmlentities($row['mobile']) . "</p>";
        echo "<p><strong>Subject:</strong> " . htmlentities($row['subject']) . "</p>";
        echo "<p><strong>Message:</strong> " . htmlentities($row['message']) . "</p>";
        echo "<p><strong>Received At:</strong> " . htmlentities($row['created_at']) . "</p>";
    } else {
        echo "<p class='text-danger'>No details found!</p>";
    }
}
?>
