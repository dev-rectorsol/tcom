<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Front {

	public $data = array();
	public function __construct()
	{
		parent::__construct();

			$this->load->model('Common_model');
			$this->load->model('article_model');
			$this->load->model('Product_model');
			$this->load->model('Shop_model');
	  	$this->load->model('Homepage_model');
			$this->data['settings'] = $this->app_config();
      $this->load->library('cart');
		//Do your magic here
	}

	public function index() {
        $this->data['page'] = 'Education Board';
				$this->data['homeSlider'] = 1;
			  	$slider_value = !empty($this->db->get_where('setting', array('setting_name' => 'home_slider'))->row()->setting_value) ? $this->db->get_where('setting', array('setting_name' => 'home_slider'))->row()->setting_value : '';
			  	$this->data['slider'] = json_decode($slider_value, true);

			  	$social_value = !empty($this->db->get_where('setting', array('setting_name' => 'social_icon'))->row()->setting_value) ? $this->db->get_where('setting', array('setting_name' => 'social_icon'))->row()->setting_value : '';
			  	$this->data['social'] = json_decode($social_value, true);

				   $contact_value = !empty($this->db->get_where('setting', array('setting_name' => 'contact_us'))->row()->setting_value) ? $this->db->get_where('setting', array('setting_name' => 'contact_us'))->row()->setting_value : '';
      			$this->data['contact'] = json_decode($contact_value, true);

				  $title_value = !empty($this->db->get_where('setting', array('setting_name' => 'application_title'))->row()->setting_value) ? $this->db->get_where('setting', array('setting_name' => 'application_title'))->row()->setting_value : '';
		    	$this->data['title'] = json_decode($title_value, true);

				 $logo = !empty($this->db->get_where('setting', array('setting_name' => 'application_logo'))->row()->setting_value) ? $this->db->get_where('setting', array('setting_name' => 'application_logo'))->row()->setting_value : '';
				 $this->data['logo'] = json_decode($logo, true);
			   $this->data['setting']=$this->Common_model->select('homesetting');

				$this->data['cartIvalue'] = $this->cart->contents();
				// pre($this->data['cartIvalue'] );exit;
				$this->data['category']=  $this->Common_model->select('category');
				$this->data['article_data'] =  $this->article_model->select_article_data();

				$this->data['product']=  $this->Product_model->getProductList();
				$this->data['Best_Sell_product']=  $this->Product_model->select_best_product('Best_Sell','products');
				$this->data['on_Sell_product']=  $this->Product_model->select_best_product('On_Sell','products');
				$this->data['testimonial']=  $this->Common_model->select('testimonial');
				$this->data['category_data']=  $this->Common_model->select_limit_value('category');
				$this->data['carousel_saree']= $this->Common_model->select_carousel_by_type('saree');
				$this->data['carousel_suit'] = $this->Common_model->select_carousel_by_type('suit');
				$this->data['carousel_dupatta'] = $this->Common_model->select_carousel_by_type('dupatta');
				$this->data['carousel_lehenga'] = $this->Common_model->select_carousel_by_type('lehenga');
				$this->data['main_content'] = $this->load->view('home', $this->data, true);
        $this->load->view('index', $this->data);
    }


							public function view()
								{
									if($_POST) {
										//echo $_POST['id'];exit;
										$this->data['product_details']=  $this->Shop_model->select_product_details_byid($_POST['id'],'products');
										foreach($this->data['product_details'] as $value){
										$this->data['product_details']= $value;
										}
													//echo print_r($this->data['product_details']);exit;
										$this->data['attribute']=  $this->Product_model->select_attr($_POST['id'],'product_attributes');
										$this->data['pics']=  $this->Product_model->select($_POST['id'],'product_images');
									//	echo print_r($this->data['pics']);exit;
										// $this->data['data'] = $this->load->view('quickview/quickview', $this->data, true);
										$this->load->view('quickview/quickview1', $this->data);
                 }
								}


    public function about(){

        $this->data['page'] = 'About Us';
				$social_value = !empty($this->db->get_where('setting', array('setting_name' => 'social_icon'))->row()->setting_value) ? $this->db->get_where('setting', array('setting_name' => 'social_icon'))->row()->setting_value : '';
				$this->data['social'] = json_decode($social_value, true);

				$this->data['setting']=$this->Common_model->select('homesetting');

        $this->data['cartItems'] = $this->cart->contents();
				$this->data['category']=  $this->Common_model->select('category');
				$this->data['testimonial']=  $this->Common_model->select('testimonial');
		$this->data['main_content'] = $this->load->view('about_us', $this->data, true);
		$this->data['Menu_shop_image'] = $this->Homepage_model->get_menu_by_type('shop');
		$this->data['Menu_shop_text'] = $this->Common_model->get_menu('shop');
		$this->data['Menu_coll_image'] = $this->Homepage_model->get_menu_by_type('collection');
		$this->data['Menu_coll_text'] = $this->Common_model->get_menu('collection');
		$this->data['Menu_tech_image'] = $this->Homepage_model->get_menu_by_type('technique');
		$this->data['Menu_tech_text'] = $this->Common_model->get_menu('technique');
        $this->load->view('index', $this->data);
    }

    public function contact(){
        $this->data['page'] = 'contact';
				$social_value = !empty($this->db->get_where('setting', array('setting_name' => 'social_icon'))->row()->setting_value) ? $this->db->get_where('setting', array('setting_name' => 'social_icon'))->row()->setting_value : '';
				$this->data['social'] = json_decode($social_value, true);

				$this->data['setting']=$this->Common_model->select('homesetting');

        $this->data['cartIvalue'] = $this->cart->contents();
				$this->data['category']=  $this->Common_model->select('category');
		$this->data['main_content'] = $this->load->view('contact', $this->data, true);
		$this->data['Menu_shop_image'] = $this->Homepage_model->get_menu_by_type('shop');
		$this->data['Menu_shop_text'] = $this->Common_model->get_menu('shop');
		$this->data['Menu_coll_image'] = $this->Homepage_model->get_menu_by_type('collection');
		$this->data['Menu_coll_text'] = $this->Common_model->get_menu('collection');
		$this->data['Menu_tech_image'] = $this->Homepage_model->get_menu_by_type('technique');
		$this->data['Menu_tech_text'] = $this->Common_model->get_menu('technique');
        $this->load->view('index', $this->data);
    }

		public function Add_contact()
		{
			if($_POST){
			 $data=$this->security->xss_clean($_POST);
			$this->data=[
			'name' => $data['name'],
			'phone' => $data['phone'],
			'email' => $data['email'],
			'subject' => $data['subject'],
			'message' => $data['message'],
			// 'icon' => $data['icon'],
			];
			$this->Common_model->insert($this->data,'contact');
			redirect(base_url() . 'web/Home/contact', 'refresh');
			}
		}

		public function my_account(){
				$this->data['page'] = 'Order';
				$this->data['product_data']=  $this->Common_model->select('products');
				$this->data['user_data']=  $this->Common_model->select('user_details');
				$this->data['main_content'] = $this->load->view('my_account', $this->data, true);
		$this->data['Menu_shop_image'] = $this->Homepage_model->get_menu_by_type('shop');
		$this->data['Menu_shop_text'] = $this->Common_model->get_menu('shop');
		$this->data['Menu_coll_image'] = $this->Homepage_model->get_menu_by_type('collection');
		$this->data['Menu_coll_text'] = $this->Common_model->get_menu('collection');
		$this->data['Menu_tech_image'] = $this->Homepage_model->get_menu_by_type('technique');
		$this->data['Menu_tech_text'] = $this->Common_model->get_menu('technique');
				$this->load->view('index', $this->data);
		}




}

/* End of file Home.php */
/* Location: ./application/modules/web/controllers/Home.php */
