<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Checkout extends CI_Controller{
public function __construct()
  {
    parent::__construct();
      $this->load->model('Common_model');
      $this->load->model('Shop_model');
      $this->load->model('Product_model');
      $this->load->model('article_model');
      $this->load->library('cart');
    //Do your magic here

    }

     function index(){
        // Redirect if the cart is empty
        if($this->cart->total_items() <= 0){
            redirect('web/home');
        }

        $custData = $data = array();

        // If order request is submitted

            $userid=$this->session->userdata('userID');
            // Prepare customer data
            $custData = array(
                // 'customer_name' => strip_tags($this->input->post('name')),
                'email'     => strip_tags($this->input->post('email')),
                'phone'     => strip_tags($this->input->post('phone')),
                'address'=> strip_tags($this->input->post('address')),
                'postcode'=> strip_tags($this->input->post('postcode')),
                'modified' =>current_datetime()
            );
                $insert = $this->Common_model->update($custData,'user_id',$userid,'customers');
                //echo $insert;exit;
                // Check customer data insert status

                if($insert){
                  $id=$this->Common_model->last_update('customers');
                //  echo print_r($id->id);exit;
                    $order = $this->placeOrder($id->id);
                  //  echo $order;exit;

                    if($order){
                        $this->session->set_userdata('success_msg', 'Order placed successfully.');
                        redirect('web/checkout/orderSuccess/'.$order);
                    }else{
                        $data['error_msg'] = 'Order submission failed, please try again.';
                    }
                }else{
                    $data['error_msg'] = 'Some problems occured, please try again.';
                }

      redirect('web/checkout');
    }

    function placeOrder($custID){
        // Insert order data
        // echo $custID;exit;
        $ordData = array(
            'user_id' =>$this->session->userdata('userID'),
            'customer_id' => $custID,
            'totalPrice'=> strip_tags($this->input->post('total')),
            'grand_total' => $this->cart->total()
        );
        $insertOrder = $this->Common_model->insert($ordData,'orders');

        if($insertOrder){
            // Retrieve cart data from the session
            $cartItems = $this->cart->contents();

            // Cart items
                foreach($cartItems as $item){
                $ordItemData = array(
                  'user_id' =>$this->session->userdata('userID'),
                  'order_id'  => $insertOrder,
                  'product_id'  => $item['id'],
                  'quantity'   => $item['qty'],
                  'sub_total'   => $item["subtotal"]
                );

                if(!empty($ordItemData)){
                    // Insert order items
                    $insertOrderItems = $this->Common_model->insert($ordItemData,'order_items');
                }
            }

            if($insertOrderItems){
                // Remove items from the cart
                $this->cart->destroy();
                // Return order ID
                return $insertOrder;
            }
        }
        return false;
    }

    function orderSuccess($ordID){
        // Fetch order data from the database
        $data['order'] = $this->Product_model->getOrder($ordID);
        // echo "<pre>";
        // print_r($data['order']);exit;
        // echo $data['order']['id'].$data['order']['grand_total'].$data['order']['grand_total'];
        $data['setting']=$this->Common_model->select('homesetting');

      // echo $data['logo']['source'];exit;
        // Load order details view
        $this->load->view('collection/razorpay', $data);

    }

    public function payment_url() {
      $data=array();
            if($_POST) {
              $data1=array(
            	'payment'=>$_POST['payment_id'],
              'transaction'=>$_POST['amount'],
              'userid'=>$_POST['user_id'],
              'orderid'=>$_POST['order_id'],
          );
          //print_r($data);exit;
          $payment = $this->Common_model->insert($data1,'payments');
          if($payment){
            $email=$this->input->post('email');
            $subject = 'payment Done';

              $config = Array(
                'protocol' => 'smtp',
                'smtp_host' => 'ssl://smtp.googlemail.com',
                'smtp_port' => 465,
                'smtp_user' => 'info@rectorsol.com', // change it to yours
                'smtp_pass' => 'shash#13', // change it to yours
                'mailtype' => 'html',
                'charset' => 'iso-8859-1',
                'wordwrap' => TRUE
                );
              $this->email->set_header('MIME-Version', '1.0; charset=utf-8');
              $this->load->library('email', $config);
              $this->email->set_newline("\r\n");
              $this->email->from($email); // change it to yours
              $this->email->to('artisinghh11@gmail.com');// change it to yours
              $this->email->subject($subject);
              $this->email->set_mailtype('html');
             // $msg=$this->load->view('join/email');
              $this->email->message($this->load->view('web/collection/email',$data,TRUE));
              $this->email->send();
          }
          $arr = array('msg' => 'Payment successfully credited', 'status' => true);

          }
      }



      public function congratulations(){
      $data=array();
      $data['massege'] = 'Your Payment Successfully Done';
      // $data['main_content'] = $this->load->view('web/collection/congratulation', $data, TRUE);
      $this->load->view('web/collection/congratulation', $data);
  }

}
