 <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
	  <?php 
			$bulan_tes =array(
				'01'=>"Januari",
				'02'=>"Februari",
				'03'=>"Maret",
				'04'=>"April",
				'05'=>"Mei",
				'06'=>"Juni",
				'07'=>"Juli",
				'08'=>"Agustus",
				'09'=>"September",
				'10'=>"Oktober",
				'11'=>"November",
				'12'=>"Desember"
			);
		?>
      <section id="main-content">
          <section class="wrapper">

              <div class="row">
                  <div class="col-lg-12 main-chart">
						<h3>
							<!--<a  style="padding-left:2pc;" href="fungsi/hapus/hapus.php?laporan=jual" onclick="javascript:return confirm('Data Laporan akan di Hapus ?');">
								<button class="btn btn-danger">RESET</button>
							</a>-->
							<?php if(!empty($_GET['cari'])){ ?>
								Laporan Penjualan <?= $bulan_tes[$_POST['bln']];?> <?= $_POST['thn'];?>
							<?php }elseif(!empty($_GET['hari'])){?>
								Laporan Penjualan <?= $_POST['hari'];?>
							<?php }else{?>
								Laporan Penjualan <?= $bulan_tes[date('m')];?> <?= date('Y');?>
							<?php }?>
						</h3>
						<br/>
						<h4>Search Report of Month</h4>
						<form method="post" action="index.php?page=laporan&cari=ok">
							<table class="table table-striped">
								<tr>
									<th>
										Month
									</th>
									<th>
										Year
									</th>
									<th>
										Tindakan
									</th>
								</tr>
								<tr>
								<td>
								<select name="bln" class="form-control">
									<option selected="selected">Choose Month</option>
									<?php
										$bulan=array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
										$jlh_bln=count($bulan);
										$bln1 = array('01','02','03','04','05','06','07','08','09','10','11','12');
										$no=1;
										for($c=0; $c<$jlh_bln; $c+=1){
											echo"<option value='$bln1[$c]'> $bulan[$c] </option>";
										$no++;}
									?>
									</select>
								</td>
								<td>
								<?php
									$now=date('Y');
									echo "<select name='thn' class='form-control'>";
									echo '
									<option selected="selected">Choose Year</option>';
									for ($a=2017;$a<=$now;$a++)
									{
										echo "<option value='$a'>$a</option>";
									}
									echo "</select>";
									?>
								</td>
								<td>
									<input type="hidden" name="periode" value="ya">
									<button class="btn btn-default">
										Search
									</button>
									<a href="index.php?page=laporan" class="btn btn-info">
										Muat Ulang</a>
										
									<?php if(!empty($_GET['cari'])){?>
										<a href="excel.php?cari=yes&bln=<?=$_POST['bln'];?>&thn=<?=$_POST['thn'];?>" class="btn btn-success">
										Export XLS</a>
									<?php }else{?>
										<a href="excel.php" class="btn btn-success">
										Export XLS</a>
									<?php }?>
								</td>
								</tr>
							</table>
						</form>
						<form method="post" action="index.php?page=laporan&hari=cek">
							<table class="table table-striped">
								<tr>
									<th>
										Choose Day
									</th>
									<th>
										Tindakan
									</th>
								</tr>
								<tr>
								<td>
									<input type="date" value="<?= date('Y-m-d');?>" class="form-control" name="hari">
								</td>
								<td>
									<input type="hidden" name="periode" value="ya">
									<button class="btn btn-default">
										Search
									</button>
									<a href="index.php?page=laporan" class="btn btn-primary">
										Muat Ulang</a>
										
									<?php if(!empty($_GET['hari'])){?>
										<a href="excel.php?hari=cek&tgl=<?= $_POST['hari'];?>" class="btn btn-success">
										Export XLS</a>
									<?php }else{?>
										<a href="excel.php" class="btn btn-success">
										Export XLS</a>
									<?php }?>
								</td>
								</tr>
							</table>
						</form>
						<div class="clearfix" style="border-top:1px solid #ccc;"></div>
						<br/>
						<br/>
						<!-- view barang -->	
						<div class="modal-view">
							<table class="table table-bordered" id="example1">
								<thead>
									<tr style="background:#FF5009;color:#333;">
										<th> No</th>
										<th> ID Barang</th>
										<th> Nama Barang</th>
										<th style="width:10%;"> Jumlah</th>
										<th style="width:10%;"> Modal</th>
										<th style="width:10%;"> Total</th>
										<th> Kasir</th>
										<th> Tanggal Input</th>
									</tr>
								</thead>
								<tbody>
									<?php 
										$no=1; 
										if(!empty($_GET['cari'])){
											$periode = $_POST['bln'].'-'.$_POST['thn'];
											$no=1; 
											$jumlah = 0;
											$bayar = 0;
											$hasil = $lihat -> periode_jual($periode);
										}elseif(!empty($_GET['hari'])){
											$hari = $_POST['hari'];
											$no=1; 
											$jumlah = 0;
											$bayar = 0;
											$hasil = $lihat -> hari_jual($hari);
										}else{
											$hasil = $lihat -> jual();
										}
									?>
									<?php 
										$bayar = 0;
										$jumlah = 0;
										$modal = 0;
										foreach($hasil as $isi){ 
											$bayar += $isi['total'];
											$modal += $isi['harga_beli']* $isi['jumlah'];
											$jumlah += $isi['jumlah'];
									?>
									<tr>
										<td><?php echo $no;?></td>
										<td><?php echo $isi['id_barang'];?></td>
										<td><?php echo $isi['nama_barang'];?></td>
										<td><?php echo $isi['jumlah'];?> </td>
										<td>Rp.<?php echo number_format($isi['harga_beli']* $isi['jumlah']);?>,-</td>
										<td>Rp.<?php echo number_format($isi['total']);?>,-</td>
										<td><?php echo $isi['nm_member'];?></td>
										<td><?php echo $isi['tanggal_input'];?></td>
									</tr>
									<?php $no++; }?>
								</tbody>
								<tfoot>
									<tr>
										<th colspan="3">Jumlah Barang Dijual</td>
										<th><?php echo $jumlah;?></td>
										<th>Rp.<?php echo number_format($modal);?>,-</th>
										<th>Rp.<?php echo number_format($bayar);?>,-</th>
										<th style="background:#0017FF;color:#fff;">Laba</th>
										<th style="background:#0017FF;color:#fff;">
											Rp.<?php echo number_format($bayar-$modal);?>,-</th>
									</tr>
								</tfoot>
							</table>
						</div>
						<div class="clearfix" style="padding-top:5pc;"></div>
					</div>
				  </div>
              </div>
          </section>
      </section>
	

