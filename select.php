<?php
if (empty($_GET['act']))
{include"beranda.php";}
else{
	switch($_GET['act']){

        case('profil'): include('profil.php');
        break; 
        case('cetak_dosen'): include('cetak_dosen.php');
        break;
        case('data_siswa'): include('data_siswa.php');
    	break;
        case('data_dosen'): include('data_dosen.php');
        break; 
        case('data_kelas'): include('data_kelas.php');
        break;    
        case('tambah_siswa'): include('tambah_siswa.php');
        break;
        case('tambah_dosen'): include('tambah_dosen.php');
        break; 
        case('tambah_kelas'): include('tambah_kelas.php');
        break;  
        case('edit_dosen'): include('edit_dosen.php');
        break; 
        case('edit_kelas'): include('edit_kelas.php');
        break;  
        case('edit_siswa'): include('edit_siswa.php');
        break; 
        case('laporan'): include('laporan.php');
    	break;
        case('laporan_siswa'): include('laporan_siswa.php');
        break;
        case('laporan_dosen'): include('laporan_dosen.php');
        break; 
        case('laporan_kelas'): include('laporan_kelas.php');
        break; 
        case('ganti_password'): include('ganti_password.php');
        break;
	default:include('beranda.php');
	}
}
?>
