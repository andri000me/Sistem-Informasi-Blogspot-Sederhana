<?php require_once '../core/session.php';?>
<?php require_once '../database/db.php';?>
<?php require_once '../function/user.php';?>
<?php require_once '../function/blog.php';?>
<?php

$id = $_GET['delete'];
$query = "SELECT * FROM komentar WHERE id_artikel='$id'";
$result=mysqli_query($link,$query);
//print_r($result);
  if(mysqli_num_rows ($result)==0){
    if (isset($_GET['delete'])){
    if(delete_artikel($id)){
    header ('Location:post.php');
  }else {echo "gagal kosong";}
    }else {echo 'gagal';}

  }//numrow

else {
  if (isset($_GET['delete'])){
  if(delete_artikel_komentar($_GET['delete'])){
  header ('Location:post.php');
  }else {echo "gagal menghapus";}
  }else {echo 'gagal';}
}//else







?>
