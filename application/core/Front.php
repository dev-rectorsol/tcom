<?php (defined('BASEPATH')) OR exit('No direct script access allowed');



class Front extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('setting_model');
  }

  public function app_config() {
    return $this->setting_model->settings();
  }

  public function get_header(){

  }
  public function get_sidebar(){

  }
}
