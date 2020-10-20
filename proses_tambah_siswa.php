<?php

    $koneksi = new mysqli ("localhost", "root", "", "siakad");

    $nim = $_POST ['nim'];
    $nama = $_POST ['nama'];
    $alamat = $_POST ['alamat'];
	$password = $_POST ['password'];
	$nama_ortu = $_POST ['nama_ortu'];
	$pkjr_ortu = $_POST ['pkjr_ortu'];
	$kode_kelas = $_POST ['kode_kelas'];
	$semester = $_POST ['semester'];
	$thn_ajaran = $_POST ['thn_ajaran'];
    

        include "koneksi.php";
        $sql = "insert into siswa (nim, nama, alamat, password, nama_ortu, pkjr_ortu, semester, kode_kelas, thn_ajaran) 
                values
                ('$nim', '$nama', '$alamat', '$password', '$nama_ortu', '$pkjr_ortu', '$semester', '$kode_kelas', '$thn_ajaran')";
        $hasil = mysqli_query($kon, $sql);
        $bos = mysqli_query($kon, "INSERT INTO akun (username, password,  level) VALUES($nim, $password, 2)");

        if (!$hasil || !$bos){
    echo "Gagal Simpan, silahkan diulangi!<br />";
    echo mysqli_error($kon);
    echo "<br/><input type='button' value='Kembali'
          onClick='self.history.back()'>";
    exit;
    } else {
        ?>
        <script language="JavaScript">
            alert('Anda Berhasil Menambah Data');
            window.location='index.php?act=data_siswa';
        </script>
        <?php
    }
    ?>
