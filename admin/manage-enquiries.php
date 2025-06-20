<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if (strlen($_SESSION['sturecmsaid']) == 0) {
    header('location:logout.php');
} else {

    // Delete Enquiry
    if (isset($_GET['delid'])) {
        $eid = intval($_GET['delid']);
        $sql = "DELETE FROM contact_messages WHERE id = :eid";
        $query = $dbh->prepare($sql);
        $query->bindParam(':eid', $eid, PDO::PARAM_INT);
        $query->execute();

        if ($query->rowCount() > 0) {
            echo "<script>alert('Enquiry deleted successfully.');</script>";
        } else {
            echo "<script>alert('Error: Enquiry not deleted.');</script>";
        }
        echo "<script>window.location.href='manage-enquiries.php';</script>";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Student Management System | Manage Enquiries</title>
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="./css/style.css">
    <script src="vendors/js/vendor.bundle.base.js"></script>
</head>
<body>
<div class="container-scroller">
    <?php include_once('includes/header.php'); ?>
    <div class="container-fluid page-body-wrapper">
        <?php include_once('includes/sidebar.php'); ?>
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="page-header">
                    <h3 class="page-title">Manage Enquiries</h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Manage Enquiries</li>
                        </ol>
                    </nav>
                </div>

                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">All Enquiries</h4>
                                <div class="table-responsive border rounded p-1">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>S.No</th>
                                                <th>Name</th>
                                                <th>Mobile</th>
                                                <th>Subject</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $sql = "SELECT * FROM contact_messages ORDER BY created_at DESC";
                                            $query = $dbh->prepare($sql);
                                            $query->execute();
                                            $results = $query->fetchAll(PDO::FETCH_OBJ);
                                            $cnt = 1;
                                            if ($query->rowCount() > 0) {
                                                foreach ($results as $row) { ?>
                                                    <tr>
                                                        <td><?php echo htmlentities($cnt); ?></td>
                                                        <td><?php echo htmlentities($row->name); ?></td>
                                                        <td><?php echo htmlentities($row->mobile); ?></td>
                                                        <td><?php echo htmlentities($row->subject); ?></td>
                                                        <td>
                                                            <a href="#" class="btn btn-info btn-xs" onclick="viewDetails('<?php echo htmlentities($row->name); ?>', '<?php echo htmlentities($row->mobile); ?>', '<?php echo htmlentities($row->subject); ?>', '<?php echo htmlentities($row->message); ?>')">View</a>
                                                            <a href="manage-enquiries.php?delid=<?php echo htmlentities($row->id); ?>" onclick="return confirm('Are you sure you want to delete this enquiry?');" class="btn btn-danger btn-xs">Delete</a>
                                                        </td>
                                                    </tr>
                                                <?php $cnt++;
                                                }
                                            } else { ?>
                                                <tr>
                                                    <td colspan="5" style="color:red;">No Record Found</td>
                                                </tr>
                                            <?php } ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <?php include_once('includes/footer.php'); ?>
        </div>
    </div>
</div>

<!-- Enquiry Details Modal -->
<div id="enquiryModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h3>Enquiry Details</h3>
        <p><strong>Name:</strong> <span id="modalName"></span></p>
        <p><strong>Mobile:</strong> <span id="modalMobile"></span></p>
        <p><strong>Subject:</strong> <span id="modalSubject"></span></p>
        <p><strong>Message:</strong></p>
        <p id="modalMessage"></p>
    </div>
</div>

<style>
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.4);
    }

    .modal-content {
        background-color: #fff;
        margin: 10% auto;
        padding: 20px;
        width: 50%;
        border-radius: 10px;
    }

    .close {
        float: right;
        font-size: 28px;
        font-weight: bold;
        cursor: pointer;
    }
</style>

<script>
    function viewDetails(name, mobile, subject, message) {
        document.getElementById("modalName").innerText = name;
        document.getElementById("modalMobile").innerText = mobile;
        document.getElementById("modalSubject").innerText = subject;
        document.getElementById("modalMessage").innerText = message;
        document.getElementById("enquiryModal").style.display = "block";
    }

    function closeModal() {
        document.getElementById("enquiryModal").style.display = "none";
    }
</script>

</body>
</html>

<?php } ?>
