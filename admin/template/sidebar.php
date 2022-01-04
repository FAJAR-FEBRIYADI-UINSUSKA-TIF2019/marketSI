   
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
<?php 
	session_start();
						if($id = $_SESSION['admin']['id_member']) {
  $hasil_profil = $lihat -> member_edit($id);
?>
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a><img src="assets/img/user/<?php echo $hasil_profil['gambar'];?>" class="img-circle" width="100" height="110"></a></p>
              	  <h5 class="centered"><?php echo $hasil_profil['nm_member'];?></h5>
              	  <h5 class="centered">( <?php echo $hasil_profil['NIK'];?> )</h5>
              	  	
                  <li class="mt">
                      <a href="index.php">
                          <i class="fa fa-home"></i>
                          <span>Home</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cloud"></i>
                          <span>Data <span style="padding-left:2px;"> <i class="fa fa-angle-down"></i></span></span>
                      </a>

                      <ul class="sub">
                          <li><a  href="index.php?page=barang">Barang</a></li>
                          <li><a  href="index.php?page=kategori">Kategori</a></li>
                          <li><a  href="index.php?page=user">User</a></li>
                      </ul>

                  </li>

                  <li class="sub-menu">
                      <a href="index.php?page=jual" >
                          <i class="fa fa-money"></i>
                          <span>Kasir <span style="padding-left:2px;"></span></span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="index.php?page=laporan" >
                          <i class="fa fa-book"></i>
                          <span>Report Penjualan<span style="padding-left:2px;"></span></span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="index.php?page=pengaturan" >
                          <i class="fa fa-shopping-cart"></i>
                          <span>Supermarket Set <span style="padding-left:2px;"></span></span>
                      </a>
                  </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
	  
	  			 <?php } else if($id = $_SESSION['user']['id_member']) {
  $hasil_profil = $lihat -> member_edit($id);
?>

      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a><img src="assets/img/user/<?php echo $hasil_profil['gambar'];?>" class="img-circle" width="100" height="110"></a></p>
              	  <h5 class="centered"><?php echo $hasil_profil['nm_member'];?></h5>
              	  <h5 class="centered">( <?php echo $hasil_profil['NIK'];?> )</h5>
              	  	
                  <li class="mt">
                      <a href="index.php">
                          <i class="fa fa-home"></i>
                          <span>Home</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cloud"></i>
                          <span>Data <span style="padding-left:2px;"> <i class="fa fa-angle-down"></i></span></span>
                      </a>

                      <ul class="sub">
                          <li><a  href="index.php?page=barang">Barang</a></li>
                          <li><a  href="index.php?page=kategori">Kategori</a></li>
                          <li><a  href="index.php?page=user">User</a></li>
                      </ul>

                  </li>

                  <li class="sub-menu">
                      <a href="index.php?page=jual" >
                          <i class="fa fa-money"></i>
                          <span>Kasir <span style="padding-left:2px;"></span></span>
                      </a>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
	  

				<?php } ?>
      
