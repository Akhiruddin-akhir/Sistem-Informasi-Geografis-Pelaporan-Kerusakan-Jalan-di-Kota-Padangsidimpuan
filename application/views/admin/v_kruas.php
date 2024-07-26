<div class="container-fluid">

	<?php echo $this->session->flashdata('pesan') ?>
	
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h2 class="m-0 font-weight-bold text-primary">Data Ruas Jalan</h2>
      <?= $this->session->flashdata('alert'); ?>
    </div>
    <div class="card-body">
      <div class="table-responsive">

      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Nama Kecamatan</th>
              <th>Ruas</th>
              <th class="text-center" style="width : 125">AKSI</th>
            </tr>
          </thead>
        </table>
        
        <br>






      </div>
    </div>
  </div>
</div>

