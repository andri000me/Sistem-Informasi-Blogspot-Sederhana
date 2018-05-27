<?php require_once "../view/header-admin.php"; ?>

<?php
$id = $_SESSION["user"];

?>


<aside class="right-side">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Welcome <?php echo $_SESSION["user"]; ?></h1>

    </section><!-- /.content -->
</aside><!-- /.right-side -->

<?php require_once '../view/footer-admin.php' ?>
