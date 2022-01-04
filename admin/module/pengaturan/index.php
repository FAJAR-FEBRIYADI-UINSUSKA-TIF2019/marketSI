 <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

              <div class="row">
                  <div class="col-lg-12 main-chart">
						<h3>Keterangan Supermarket</h3>
						<br>
						<?php if(isset($_GET['success'])){?>
						<div class="alert alert-success">
							<p>Ubah Data Berhasil !</p>
						</div>
						<?php }?>
						<table class="table table-stripped">
							<thead>
								<tr>
									<td>Supermarket Name</td>
									<td>Alamat</td>
									<td>Kontak</td>
									<td>Owner</td>
									<td>Tindakan</td>
								</tr>
							</thead>
							<tbody>
								<form method="post" action="fungsi/edit/edit.php?pengaturan=ubah">		
								<tr>
									<td><input class="form-control" name="namatoko" required="" value="<?php echo $toko['nama_toko'];?>" placeholder="Nama Toko"></td>
									<td><input class="form-control" name="alamat" required="" value="<?php echo $toko['alamat_toko'];?>" placeholder="Alamat Toko"></td>
									<td><input class="form-control" name="kontak" required="" value="<?php echo $toko['tlp'];?>" placeholder="Kontak (Hp)"></td>
									<td><input class="form-control" name="pemilik" required="" value="<?php echo $toko['nama_pemilik'];?>" placeholder="Nama Pemilik Toko"></td>
									<td><button id="tombol-simpan" class="btn btn-info">Ubah</button></td>
								</tr>
								</form>
							</tbody>
						</table>
						<div class="clearfix" style="padding-top:41%;"></div>
				  </div>
              </div>
          </section>
      </section>
	
