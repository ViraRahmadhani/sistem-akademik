        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				    <li class="text-center">
                        <img src="assets/img/logoPOLMED.jpg" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a  href="index.php"><i class="fa fa-home fa-3x"></i>&nbsp;&nbsp;&nbsp; Beranda</a>
                    </li>
                    <li>
                        <a  href=""><i class="fa fa-table fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp; Data</a>
                        <ul class="nav nav-second-level">

                            <?php
                                if($_SESSION['level'] != '1'){

                            ?>
                            <li>
                                <a  href="?act=data_siswa">&nbsp;&nbsp;&nbsp; Data Siswa</a>
                            </li>
                            <li>
                                <a  href="?act=data_dosen">&nbsp;&nbsp;&nbsp; Data Dosen</a>
                            </li> 
                            <li>
                                <a  href="?act=data_kelas">&nbsp;&nbsp;&nbsp; Data Kelas</a>
                            </li>   
                            <?php
                                }
                            ?>
                            <?php
                                if($_SESSION['level'] == '1'){

                            ?>
                            <li>
                                <a  href="?act=data_mengajar">&nbsp;&nbsp;&nbsp; Data Jadwal Mengajar</a>
                            </li>
                            <li>
                                <a  href="?act=dosen_nilai_rekapitulasi">&nbsp;&nbsp;&nbsp; Data Nilai</a>
                            </li>
                            <?php
                                }
                            ?>
                        </ul>
                    </li>
                            <?php
                                if($_SESSION['level'] != '1'){

                            ?>
                    <li>
                        <a  href=""><i class="fa fa-bar-chart-o fa-3x"></i>&nbsp;&nbsp;&nbsp; Laporan</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a  href="?act=laporan_siswa">&nbsp;&nbsp;&nbsp; Laporan Siswa</a>
                            </li>
                            <li>
                                <a  href="?act=laporan_dosen">&nbsp;&nbsp;&nbsp; Laporan Dosen</a>
                            </li> 
                            <li>
                                <a  href="?act=laporan_kelas">&nbsp;&nbsp;&nbsp; Laporan Kelas</a>
                            </li> 
                            <?php
                                }
                            ?>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>  