<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends CI_Controller {

	public function __construct()
	{
			parent::__construct();
			if(check()){
				if(!isAdmin($this->session->userdata('roles')))
					redirect(base_url(), 'refresh');
      }else{
				 	redirect(base_url(), 'refresh');
			}
			$this->load->model('Common_model');
	}
	public function index()
	{
		    $data= array();
        $data['page'] ='category';
        $data['tag']=  $this->Common_model->select('tags');
				$data['category']=  $this->Common_model->select('category');
        $data['aim']=  $this->Common_model->select('category');
				$data['main_content']= $this->load->view('category/add',$data, true);
				$this->load->view('index',$data);
	}
    public function Add()
		{
			if($_POST){
			 $data1=$this->security->xss_clean($_POST);
			if(isset($_FILES['source']['name'])){
 			$config['upload_path']          = './uploads/slider';
 			$config['allowed_types']        = 'gif|jpg|png|jpeg';
 			$config['max_size']             = 11264;
 			$config['max_width']            = 6000;
 			$config['max_height']           = 6000;

 			$this->load->library('upload', $config);
 			$this->upload->do_upload('source');
 			$img=$this->upload->data();

 			$source=$img['file_name'];
			$aim=[
			'name' => $data1['name'],
			'parent' => $data1['parent'],
			'source'=> $source
			// 'icon' => $data1['icon'],
			];
			//print_r($aim);exit;
			$this->Common_model->insert($aim,'category');
			redirect(base_url() . 'admin/category', 'refresh');
			}
		}
	}

      public function AddTag()
			{
				if($_POST){
			 $data1=$this->security->xss_clean($_POST);
		         $tag=[
		            'title' => $data1['name'],
		        ];
            $this->Common_model->insert($tag,'tags');
			redirect(base_url() . 'admin/category', 'refresh');
				}
			}
			public function Delete($id)
			{
			    $data1=['id'=> $id];
			    $this->Common_model->delete($data1,'category');
			    redirect(base_url() . 'admin/category', 'refresh');
			}


    public function Edit($id)
	   {
		if($_POST){
			$data1=$this->security->xss_clean($_POST);

			// if(isset($_FILES['source']['name'])){
			$config['upload_path']          = './uploads/slider';
			$config['allowed_types']        = 'gif|jpg|png|jpeg';
			$config['max_size']             = 11264;
			$config['max_width']            = 6000;
			$config['max_height']           = 6000;

			$this->load->library('upload', $config);
			$this->upload->do_upload('source');
			$img=$this->upload->data();
			pre($img);exit;
			$source=$img['file_name'];
			if($source!=''){
             $aim=[
            'name' => $data1['name'],
            'parent' => $data1['parent'],
						'source'=> $source
						// 'source'=> $data1['featureImage']
        ];

			}
			else{
				$aim=[
			 'name' => $data1['name'],
			 'parent' => $data1['parent'],
			 // 'source'=> $data1['featureImage']
	      ];
			}

      $this->Common_model->update($aim,'id',$id,'category');
			redirect(base_url() . 'admin/category', 'refresh');
	}
	}



}
