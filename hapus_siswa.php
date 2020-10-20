<?php 
include('koneksi.php');

$nim = $_GET['nim'];

$query = mysqli_query($kon, "delete from siswa where nim='$nim'") or die(mysqli_error());
$bos = mysqli_query($kon, "delete from akun where username='$nim'") or die(mysqli_error());

if ($query || $bos) {
	?>
	<script language="JavaScript">
		alert('Anda Berhasil Menghapus Data');
	 	window.location='index.php?act=data_siswa';
	</script>
	<?php }
?>