<?php require_once "../view/header-admin.php"; ?>

<?php
$error="";
$sukses="";
$tampil_kategori = $tampil_kategori = tampil_kategori_admin();

//show content in form  get data form db
if (isset($_GET['edit'])) {
  $id=$_GET['edit'];
  $db = edit_artikel($id);
  $row = mysqli_fetch_array($db);
}


if (isset($_POST['submit'])) { //update file

  //array for form
  $submit = $_POST['submit'];
  $judul = $_POST ['judul'];
  $konten = $_POST ['editor1'];
  $kategori = $_POST['kategori'];

  //array for image
  $nama       = $_FILES ['image'] ['name'];
  $lokasi     = $_FILES ['image'] ['tmp_name'];
  $type_image = $_FILES ['image'] ['type'];
  $size       = $_FILES ['image'] ['size'];
  $error      = $_FILES ['image'] ['error'];
  $time = time();
  $namafile =  '../gambar/'. $nama;
  $filenama = $nama;

  if (!empty(trim($judul)) && !empty(trim($konten))) { //dont empty form , user must field the form
  if(!empty($_FILES['image']['name'])){
  if ($error == 0){ //check error image
    if ($size < 5000000) {// size image dont more from 5 Mb
      if ($type_image == 'image/jpeg' || $type_image == 'image/png' || $type_image == 'image/gif'){ //type image Jpeg,Png, and gif
        if (file_exists ($namafile) && $filenama) { //if namefile exist in folder, automatically add time in back the image
          if ($type_image == 'image/jpeg'  ) { //replace name for Jpeg
            $namafile = str_replace(".jpg", "", $namafile);
            $namafile = $namafile. "_". $time . ".jpg";
            $filenama = str_replace(".jpg","",$filenama,$i);
            $i = $filenama."_". $time . ".jpg";
          } elseif ($type_image == 'image/png') { //replace name for PNG
              $namafile = str_replace(".png", "", $namafile);
              $namafile = $namafile. "_". $time . ".png";
              $filenama = str_replace(".png","",$filenama,$i);
              $i = $filenama."_". $time . "png";
          }elseif ($type_image == 'image/gif') {  //replace name for gif
            $namafile = str_replace(".gif", "", $namafile);
            $namafile = $namafile. "_". $time . ".gif";
            $filenama = str_replace(".gif","",$filenama,$i);
            $i = $filenama."_". $time . ".gif";
          }
  }
   if (move_uploaded_file($lokasi,$namafile)) {  //save image to folder
     if (edit($judul, $konten, $kategori , $i, $id)) { //save image to database
       $sukses='file telah ditambahkan';
       echo "<meta http-equiv='refresh' content='0'; url=''>";
       }else {
               $error ='File tidak dapat dimasukan ke dalam database';
             }
   } else { $error = "file tidak dapat di upload";}

  }else {$error ="format harus JPEG/PNG";}
  } else {$error = "File harus kurang dari 5 Mb"; }
  }else {$error = "Terdapat error pada image";}
//  } else {$error ='Semua form wajib di isi';}
} else // no image uploaded
{
   // save data, but no change the image column in MYSQL, so it will stay the same value
   if (artikel_id($judul, $konten, $kategori, $id)) {
     $sukses='file telah ditambahkan';
     echo "<meta http-equiv='refresh' content='0'; url=''>";
}else{echo"gagal ditambahkan";}
}
}
}
 ?>
 <aside class="right-side">
     <!-- Content Header (Page header) -->
     <section class="content-header">

       <form action="" method="post" enctype="multipart/form-data">
         <h1>
             Post
             <small>Tulis</small>
         </h1>
         <ol class="breadcrumb">
             <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
             <li class="active">Post</li>
         </ol>
     </section>

     <!-- Main content -->
     <section class="content">
       <div class='row'>
           <div class='col-md-12'>

             <div class='box box-info'>


             <div class="box-header form-title">
               <div class="row">
               <div class='col-md-8 '>
                 <div class="box-tools">
                 <div class="input-group">
                   <span class="input-group-addon" id="sizing-addon2">Judul</span>
                   <input type="text" class="form-control" placeholder="Masukan Judul" name="judul" aria-describedby="sizing-addon2" value="<?php echo $row['judul']; ?>">
              </div>

              <!-- Upload & tag -->
              <div style="padding:5px 4px";>

                <!--tag -->
                <div class="col-md-4">
                  <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon2">Kategori</span>
                    <select class="form-control" name="kategori">
                      <?php while ($raw= mysqli_fetch_assoc ($tampil_kategori)):?>
                        <option value="<?php echo $raw ['id_tag'] ?>">  <?php echo $raw ['judul_tag'];
                        ?></option>
                      <?php endwhile ?>

                    </select>
                   </div>
              </div>


                <!--Upload -->
              <div class="col-md-8">
              <input type="file" name="image" id="fileToUpload">
              </div>


          </div>

             </div>
                </div>

               <div class="col-md-4 ">
               <div class="pull-right box-tools">
               <button class="btn btn-success" name="submit" value="upload image">Publikasikan</button>
               <button class="btn btn-success" >Simpan</button>
               <button class="btn btn-success" >Tutup</button>
             </div>
                     </div>
                   </div>
                 </div>
</div>

               <div class='box box-info'>
                   <div class='box-header'>
                       <h3 class='box-title'>Editor <small>Mulailah menulis</small></h3>
                       <?php if ($sukses): ?>
                       <p class='box-title' id="sukses"> <?php echo $sukses; ?></p>
                        <?php else: ?>
                       <p class='box-title' id="error"> <?php echo $error; ?></p>
                       <?php endif ?>
     <!-- tools box -->
                       <div class="pull-right box-tools">
                           <button class="btn btn-info btn-sm" data-widget='collapse' data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                           <button class="btn btn-info btn-sm" data-widget='remove' data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                       </div><!-- /. tools -->
                   </div><!-- /.box-header -->
                   <div class='box-body pad'>

                     <div class='box-body pad'>
                       <?php if($sukses){ ?>
                         <div class="alert alert-success alert-dismissable">
                         <i class="fa fa-check"></i>
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <p><?php echo $sukses; ?></P>
                       </div>
                     <?php } ?>

                              <?php if($error){ ?>
                                <div class="alert alert-danger
                                 alert-dismissable">
                                <i class="fa fa-ban"></i>
                               <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                               <p><?php echo $error; ?></P>
                              </div>
                            <?php } ?>






                           <textarea id="editor1" name="editor1" rows="10" cols="80">
                             <?php echo $row['isi'];?>
                           </textarea>


                       </form>
                   </div>
               </div><!-- /.box -->
     </section><!-- /.content -->
 </aside><!-- /.right-side -->


 <!-- jQuery 2.0.2 -->
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<!-- CK-Editor  -->
<script src="//cdn.ckeditor.com/4.8.0/full/ckeditor.js"></script>
 <!-- Bootstrap -->
 <script src="<?php echo $siteurl;?>/view/js/bootstrap.min.js" type="text/javascript"></script>
 <!-- AdminLTE App -->
 <script src="<?php echo $siteurl;?>/view/js/AdminLTE/app.js" type="text/javascript"></script>
  <!-- Bootstrap WYSIHTML5 -->
 <script src="<?php echo $siteurl;?>/view/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
 <script type="text/javascript">
if ( typeof CKEDITOR == 'undefined' ){
document.write(
   'CKEditor not found');
}else{
var editor = CKEDITOR.replace( 'editor1' );
CKFinder.setupCKEditor( editor, '' ) ;
}
</script>

</body>
</html>
