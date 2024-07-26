<body>
  <div class="posisi">
    <div class="card">
      <div class="container" style="margin-top: 30px">
        <center><h2>Data Laporan Kerusakan Jalan </h2></center>
        <div class="table-responsive">
          <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th>No</th>
                <th>Pelapor</th>
                <th>Lokasi</th>
                <th>Kerusakan</th>
                <th>Status</th>
                <th>Tanggal</th>
                <th>Latitude</th>
                <th>Longitude</th>
                <th>Gambar</th>
                </tr>
            </thead>
            <?php 
            $id = 1;
            foreach ($lapor as $lap) 
            { ?>
                  <tbody>
                   <tr>
                    <td><?php echo $id++ ?></td>
                    <td><?php echo $lap['pelapor']?></td>
                    <td><?php echo $lap['lokasi']?><br><?php echo $lap['nama_kecamatan']?></td>
                    <td><?php echo $lap['jenis']?></td>
                    <td><?php echo $lap['status']?></td>
                    <td><?php echo $lap['tanggal']?></td>
                    <td><?php echo $lap['latitude']?></td>
                    <td><?php echo $lap['longitude']?></td>
                    <td><img src="<?php echo base_url() . '/gambar/' . $lap['gambar']; ?>" width ="90"></td>
                    </tr>
                </tbody>
              <?php }
            ?>
          </table>
        </div>

    </div>
  </div>
</div>