
<div class="container" style="margin-top: 170px">
	<div class="card">
		<form method="post" enctype="multipart/form-data" action="<?php echo base_url('Dashboard/simpan_laporan')?>">
			<center><h2 style="margin-top: 10px">Form Pelaporan Kerusakan Jalan</h2></center>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" width="100%" cellspacing="0">
						<div class="row">
							<div class="col-md-4">
								<div class="form-group ">
									<label>Pelapor</label>
									<input type="text" class="form-control" name="pelapor" placeholder="Masukkan nama anda" required autocomplete="off">
								</div>
								<div class="form-group ">
									<label>NIK</label>
									<input type="text" class="form-control" name="nik" placeholder="Masukkan NIK" required autocomplete="off">
								</div>
								<div class="form-group">
									<label>Email</label>
									<input type="text" class="form-control" name="email" placeholder="ex : akhiruddin@gmail.com"required autocomplete="off">
								</div>
								<div class="form-group">
									<label>Telepon</label>
									<input type="text" class="form-control" name="telepon" placeholder="ex : 081357462039"required autocomplete="off">
								</div>
								<div class="form-group">
									<label>Lokasi</label>
									<textarea name="lokasi" class="form-control" rows="2"  placeholder="ex : jl.SM Raja Gg. Selamat" required autocomplete="off"></textarea>
									
								</div>	
							</div>


							<div class="col-md-4">
								<div class="form-group">
									<label id="labelKec">Kecamatan</label>
									<select class="form-control" name="id_kecamatan" id="filterKec" onchange="kec(value)">
										<option disabled selected>-Pilih Kecamatan-</option>
										<option value="1"> Padangsidimpuan Angkola Julu</option>
										<option value="2">Padangsidimpuan Batunadua</option>
										<option value="3">Padangsidimpuan Hutaimbaru</option>
										<option value="4">Padangsidimpuan Selatan</option>
										<option value="5">Padangsidimpuan Tenggara</option>
										<option value="6">Padangsidimpuan Utara</option>



										<!-- <?php foreach($kecamatan as $kec): ?>
											<option value="<?= $kec['id_kecamatan'] ?>"><?= $kec['nama_kecamatan'] ?></option>
											<?php endforeach ?> -->
										</select>
									</div>
									<div class="form-group">
										<label>Kerusakan</label>
										<select  class="form-control" name="id_kerusakan">
											<option disabled selected>-Pilih Kerusakan-</option>
											<option value="1">Retak Memanjang</option>
											<option value="2">Retak Melintang</option>
											<option value="3">Retak Tepi</option>
											<option value="4">Retak Buaya</option>
											<!-- <?php foreach($kerusakan as $rus): ?>
												<option value="<?= $rus['id_kerusakan'] ?>"><?= $rus['jenis'] ?></option>
												<?php endforeach ?> -->
											</select>
										</div>
										<div class="form-group">
											<label>Keterangan </label>
											<!-- <textarea name="keterangan" class="form-control" rows="4"  placeholder="Keterangan detail kerusakan"></textarea> -->
											<input type="text"  class="form-control" name="keterangan" placeholder="Keterangan tambahan" required autocomplete="off">
										</div>

										<div class="form-group">
											<label>Titik Koordinat (Klik pada maps disamping)</label>
											<!-- <div class="form-inline"> -->
												<div class="row">
													<div class="col-md-6">
														<input type="text" class="form-control" name="latitude" placeholder="Latitude" required>
													</div>
													<div class="col-md-6">
														<input type="text" class="form-control" name="longitude" placeholder="Longitude" required>
													</div>
												</div>
												<!-- </div> -->
											</div>

											<div class="form-group">
												<label>Gambar (Maksimum size : 2 MB)</label>
												<input type="file" class="form-control" name="userfile" size="20" required="">
											</div>
										</div>



										<div class="col-md-4">
											<div id="latlng">
												<script type="text/javascript">

													// var latInput = document.querySelector("[name=latitude]");
													// var lngInput = document.querySelector("[name=longitude]");


													// var marker;
													// var map = L.map('latlng').setView([-7.9086387,112.6500447], 13);

													// L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
													// 	attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
													// }).addTo(map); 



													// map.on("click", function(e){
													// 	var lat = e.latlng.lat;
													// 	var lng = e.latlng.lng;
													// 	if(!marker){
													// 		marker = L.marker(e.latlng).addTo(map)
													// 	}else{
													// 		marker.setLatLng(e.latlng)
													// 	}

													// 	latInput.value = lat;
													// 	lngInput.value = lng;

													// })

													function kec()
													{
														var blabla = document.getElementById("filterKec").value;
														var latInput = document.querySelector("[name=latitude]");
														var lngInput = document.querySelector("[name=longitude]");


														var marker;

														if(blabla == '1')
														{
														// console.log('lawang');
														var map1 = L.map('latlng').setView([1.4468134902270404, 99.26666736602785], 14)

														L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
															attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
														}).addTo(map1); 

														map1.on("click", function(e){
															var lat = e.latlng.lat;
															var lng = e.latlng.lng;
															if(!marker){
																marker = L.marker(e.latlng).addTo(map1)
															}else{
																marker.setLatLng(e.latlng)
															}

															latInput.value = lat;
															lngInput.value = lng;

														});	
													}
													else if(blabla == '2')
													{
														// console.log('singosari');

														var map2 = L.map('latlng').setView([1.4050630886760873, 99.30164337158205], 14)

														L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
															attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
														}).addTo(map2);

														map2.on("click", function(e){
															var lat = e.latlng.lat;
															var lng = e.latlng.lng;
															if(!marker){
																marker = L.marker(e.latlng).addTo(map2)
															}else{
																marker.setLatLng(e.latlng)
															}

															latInput.value = lat;
															lngInput.value = lng;

														});	 	
													}
													else if(blabla == '3')
													{
														// console.log('karangploso');

														var map3 = L.map('latlng').setView([1.400258010375966,99.23812866210939], 14)

														L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
															attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
														}).addTo(map3);

														map3.on("click", function(e){
															var lat = e.latlng.lat;
															var lng = e.latlng.lng;
															if(!marker){
																marker = L.marker(e.latlng).addTo(map3)
															}else{
																marker.setLatLng(e.latlng)
															}

															latInput.value = lat;
															lngInput.value = lng;

														});	 	
													}
													else if(blabla == '4')
													{
														// console.log('dau');

														var map4 = L.map('latlng').setView([1.3591690974646897, 99.28361892700197], 14)

														L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
															attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
														}).addTo(map4);

														map4.on("click", function(e){
															var lat = e.latlng.lat;
															var lng = e.latlng.lng;
															if(!marker){
																marker = L.marker(e.latlng).addTo(map4)
															}else{
																marker.setLatLng(e.latlng)
															}

															latInput.value = lat;
															lngInput.value = lng;

														});	 	
													}
													else if(blabla == '5')
													{
														// console.log('tenggara');

														var map3 = L.map('latlng').setView([1.327159025462726,99.31005477905275], 14)

														L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
															attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
														}).addTo(map3);

														map3.on("click", function(e){
															var lat = e.latlng.lat;
															var lng = e.latlng.lng;
															if(!marker){
																marker = L.marker(e.latlng).addTo(map3)
															}else{
																marker.setLatLng(e.latlng)
															}

															latInput.value = lat;
															lngInput.value = lng;

														});	 	
													}
													else if(blabla == '6')
													{
														// console.log('utara');

														var map3 = L.map('latlng').setView([1.3937448611803416, 99.26233291625978], 14)

														L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
															attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
														}).addTo(map3);

														map3.on("click", function(e){
															var lat = e.latlng.lat;
															var lng = e.latlng.lng;
															if(!marker){
																marker = L.marker(e.latlng).addTo(map3)
															}else{
																marker.setLatLng(e.latlng)
															}

															latInput.value = lat;
															lngInput.value = lng;

														});	 	
													}

												}

											</script>
										</div>

										<div class="form-group">								
											<!-- <button type="submit" name="submit" class="btn btn-primary float-right" style="margin-top: 450px">Simpan</button> -->
											<div style="margin-right: 33px">
												<button type="submit" class="btn btn-success float-right" style="margin-top: 430px">Simpan</button>
											</div>
											<div style="margin-left: 13px">
												<button class="btn btn-danger float-left" style="margin-top: 430px" onclick="history.go(-1);">Kembali</button>
											</div>
										</div>
									</div>

								</div>
							</table>				
						</div>
					</div>	
				</form>
				<!-- <?php echo form_close(); ?> -->
			</div>
		</div>

		<script>
			function myFunction() {
				alert("Terima Kasih, Laporan anda telah dikirim");
			}
		</script>

	</section>