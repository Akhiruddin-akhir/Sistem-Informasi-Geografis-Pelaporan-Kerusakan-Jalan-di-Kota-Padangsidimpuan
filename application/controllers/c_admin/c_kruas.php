<?php
defined('BASEPATH') OR exit('No direct script access allowed');
	
	/**
	 * 
	 */
	class c_kruas extends CI_Controller
	{
		public function __construct()
		{
			parent:: __construct();
			$this->load->model('M_data_kecamatan');
			 if($this->session->userdata('login') != "true"){
		      redirect(base_url("Main/login"));
		    }
		}



		public function index()
		{
			$data['data'] = $this->M_data_kecamatan->tampil_kecamatan();
			$this->load->view('admin/header');
			$this->load->view('admin/sidebar');
			$this->load->view('admin/v_kruas', $data);
			$this->load->view('admin/footer');
		
	    }
    }

?>