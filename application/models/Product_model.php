<?php

class Product_model extends CI_Model{

    public function __construct()
        {
                $this->load->database();
        }
    public function putdata($data){

        $this->db->insert('details', $data);

    }

    public function getdata(){
        $this->db->order_by("id", "desc");
       $query= $this->db->get('details');
      // echo "<pre>"; print_r($query->result_array());exit;
        return $query->result_array();
    }

    public function delete($id){
        $this->db->delete('details',array('id'=>$id));
    }

    public function update($id,$data,$table){
        $this->db->where('id',$id);
        $this->db->update($table,$data);
    }

    public function getSingleData($id){
        $this->db->where('id',$id);
        $query= $this->db->get('details');
        return $query->result_array();
    }
    function select($id,$table){
      //echo $id;
        $this->db->select();
        $this->db->from($table);
        $this->db->where('product_id',$id);
        $query = $this->db->get();
        //echo $this->db->last_query($query);exit;
        $query = $query->result_array();
        return $query;
    }
    function select_product($id,$table){
        $this->db->select();
        $this->db->from($table);
        $this->db->where('id',$id);
        $query = $this->db->get();
        //echo $this->db->last_query($query);exit;
        $query = $query->result_array();
        return $query;
    }

    function select_tag($id,$type){
      //echo $id;
        $this->db->select('indexing.id,tags.title');
        $this->db->from('indexing');
        $this->db->where('root',$id);
        $this->db->where('type',$type);
        $this->db->join('tags','tags.id=indexing.port','inner');
        $query = $this->db->get();
        //echo $this->db->last_query($query);exit;
        $query = $query->result_array();
        return $query;
    }
    function select_cat($id,$type){
      //echo $id;
        $this->db->select('indexing.id,category.name');
        $this->db->from('indexing');
        $this->db->where('root',$id);
        $this->db->where('type',$type);
        $this->db->join('category','category.id=indexing.port','inner');
        $query = $this->db->get();
        //echo $this->db->last_query($query);exit;
        $query = $query->result_array();
        return $query;
    }
    function select_attr($id,$table){
      //echo $id;
        $this->db->select('attribute.name,product_attributes.product_attribute_id as id,product_attributes.value as value');
        $this->db->from($table);
        $this->db->where('product_id',$id);
        $this->db->join('attribute','attribute.id=product_attributes.attribute_id','inner');
        $query = $this->db->get();
        //echo $this->db->last_query($query);exit;
        $query = $query->result_array();
        return $query;
    }
    function select_color($id,$table){
      //echo $id;
        $this->db->select('value');
        $this->db->from($table);
        $this->db->where('product_id',$id);
        $this->db->where('attribute_id',20);
        $this->db->join('attribute','attribute.id=product_attributes.attribute_id','inner');
        $query = $this->db->get();
      //  echo $this->db->last_query($query);exit;
        $query = $query->result_array();
        return $query;
    }

    function select_all_product($table){
      //echo $id;
        $this->db->select('*');
        $this->db->from($table);
        $this->db->join('product_attributes','product_attributes.product_id = products.id');
        $query = $this->db->get();
        //echo $this->db->last_query($query);exit;
        $query = $query->result_array();
        return $query;
    }

    function select_attribute($table,$attribute_id){
      //echo $id;
        $this->db->select('name');
        $this->db->from($table);
        $this->db->where('id',$attribute_id);
        $query = $this->db->get();
        //echo $this->db->last_query($query);exit;
        $query = $query->result_array();
        return $query;
    }
    function select_best_product($status,$table){
        $this->db->select();
        $this->db->from($table);
        $this->db->where('status',$status);
        $query = $this->db->get();
        //echo $this->db->last_query($query);exit;
        $query = $query->result_array();
        return $query;
    }
    public function getOrder($id){
      $this->db->select('orders.*, customers.customer_name, customers.email, customers.phone, customers.address');
      $this->db->from('orders');
      $this->db->join('customers', 'customers.id = orders.customer_id', 'left');
      $this->db->where('orders.id', $id);
      $query = $this->db->get();
      $result = $query->row_array();

      // Get order items
      $this->db->select('i.*, p.profile_pic, p.name, p.price');
      $this->db->from('order_items as i');
      $this->db->join('products as p', 'p.id = i.product_id', 'left');
      $this->db->where('i.order_id', $id);
      $query2 = $this->db->get();
      $result['items'] = ($query2->num_rows() > 0)?$query2->result_array():array();

      // Return fetched data
      return !empty($result)?$result:false;
  }
  public function getAllOrder(){
    $this->db->select('c.customer_name, c.email, c.phone,c.postcode,c.address,o.id,o.created,o.status');
    $this->db->from('orders as o');
    $this->db->join('customers as c', 'c.id =o.customer_id', 'inner');
    $query = $this->db->get();
  //  echo $this->db->last_query($query);exit;
    $query = $query->result_array();
    return $query;
}
public function getLimitOrder(){
  $this->db->select('c.customer_name, c.email, c.phone,c.postcode,c.address,o.id,o.created,o.status');
  $this->db->from('orders as o');
  $this->db->join('customers as c', 'c.id =o.customer_id', 'inner');
  
  $this->db->limit(10);
  $query = $this->db->get();
//  echo $this->db->last_query($query);exit;
  $query = $query->result_array();
  return $query;
}

public function invoice($id){
  $this->db->select('c.customer_name, c.email, c.phone,c.postcode,c.address,o.id,o.created,payments.payment,payments.transaction,payments.created_date');
  $this->db->from('orders as o');
  $this->db->where('o.id',$id);
  $this->db->join('customers as c', 'c.id =o.customer_id', 'left');
  $this->db->join('payments', 'payments.userid=c.id','left');
  $query = $this->db->get();
//  echo $this->db->last_query($query);exit;
  $query = $query->result_array();
  return $query;
}
public function invoiceOrder($id){
  $this->db->select('o.grand_total,p.name,p.price,order_items.quantity,order_items.sub_total');
  $this->db->from('orders as o');
  $this->db->where('o.id',$id);
  $this->db->join('order_items', 'order_items.order_id =o.id', 'left');
  $this->db->join('products as p', 'p.id=order_items.product_id','left');

  $query = $this->db->get();
//  echo $this->db->last_query($query);exit;
  $query = $query->result_array();
  return $query;
}
public function newAllOrder(){
  $this->db->select('status');
  $this->db->from('orders');
  $this->db->where('status',1);
  $id = $this->db->get()->num_rows();
  return $id;
}
public function totalOrder(){
  $this->db->select('status');
  $this->db->from('orders');
  $id = $this->db->get()->num_rows();
  return $id;
}
public function pending(){
  $this->db->select('status');
  $this->db->from('orders');
  $this->db->where('status',3);
  $id = $this->db->get()->num_rows();
  return $id;
}
public function accepted(){
  $this->db->select('status');
  $this->db->from('orders');
  $this->db->where('status',2);
  $id = $this->db->get()->num_rows();
  return $id;
}
public function cancle(){
  $this->db->select('status');
  $this->db->from('orders');
  $this->db->where('status',4);
  $id = $this->db->get()->num_rows();
  return $id;
}
public function getProductList(){
  $sql = "SELECT products.*, category.name AS category_name FROM products
          INNER JOIN indexing ON products.id = indexing.root AND indexing.type = 'category'
          LEFT JOIN category ON indexing.port = category.id
          GROUP BY products.id";
    return $this->db->query($sql)->result_array();
}
}
