<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Signup_Model extends CI_Model{
public function index($fname,$lname,$emailid,$password){
    $data=array(
    'FirstName'=>$fname,
    'LastName'=>$lname,
    'Email'=>$emailid,
    'Password'=>md5($password));
    $query=$this->db->insert('tblusers',$data);
    if($query){
    $this->session->set_flashdata('success','Registration successfull, Now you can login.');	
    redirect('signup');
    } else {
        $this->session->set_flashdata('error','Something went wrong. Please try again.');	
        redirect('signup');	
    }
    }

public function updatedetails($fname,$lname,$emailid,$uid){
    $data=array(
        'FirstName'=>$fname,
        'LastName'=>$lname,
        'Email'=>$emailid);
        $query=$this->db->update('tblusers',$data, "id ='$uid'");
        // echo $this->db->last_query();
        if($query){
            $this->session->set_flashdata('success','Update successfull');	
            redirect('edituser');
            } else {
                $this->session->set_flashdata('error','Something went wrong. Please try again.');	
                redirect('edituser');	
            }
    }


}