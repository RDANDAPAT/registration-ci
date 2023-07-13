<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Welcome extends CI_Controller {
//Validating login
function __construct(){
parent::__construct();
if(!$this->session->userdata('uid'))
redirect('signin');
}
  public function index(){
    $userfname=$this->session->userdata('fname');
    $email=$this->session->userdata('email');
    $userList=array();
    $sql ="SELECT * FROM tblusers WHERE Email LIKE '{$email}'";
    $userList=$this->db->query($sql)->result_array();

    // $this->data['userList']=$userList;

    $this->load->view('welcome', $userList);
  }

  
  // public function uploadImage(){

  //   $config['upload_path']= './uploads/';
  //   $config['allowed_types'] = 'gif|jpg|png';
  //   $config['max_size'] = 100;
  //   $config['max_width'] = 1024;
  //   $config['max_height'] = 768;

  //               $this->load->library('upload', $config);

  //               if ( ! $this->upload->do_upload('userfile'))
  //               {
  //                       $error = array('error' => $this->upload->display_errors());

  //                       $this->load->view('upload_form', $error);
  //               }
  //               else
  //               {
  //                       $data = array('upload_data' => $this->upload->data());

  //                       $this->load->view('upload_success', $data);
  //               }

  // }
}