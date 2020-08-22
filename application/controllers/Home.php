<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

  	public function __construct()
  	{
  		parent::__construct();
      if(check()){
        if(isAdmin($this->session->userdata('roles')))
          redirect(base_url() . 'admin', 'refresh' );
         elseif($this->session->userdata('username'))
        {
           redirect(base_url() . 'web/collection/checkout', 'refresh' );
        }
        else{
           redirect(base_url() . 'admin/yourorder', 'refresh' );
      }
    }else {
        redirect(base_url() . 'web', 'refresh' );
      }
  	}
    public function index(){

    }
}

/* End of file Home.php */
/* Location: ./application/modules/web/controllers/Home.php */ ?>
