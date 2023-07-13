<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Getusers_Model extends CI_Model{
    // public function index(){

    // }
    public function getdata()
    {
        $query=$this->db->select('FirstName,LastName,Email,PostingDate,id')->get('tblusers');
        return $query->result();
    }
    public function getdetails($uid)
    {
        $query=$this->db->select('FirstName,LastName,Email,PostingDate,id')->where('id',$uid)->get('tblusers');
        return $query->result();
    }
    public function removedetails($uid)
    {
        // $query=$this->db->delete('tblusers', array('id'=> $uid));
        // return $query->result();
        $sql_query=$this->db->where('id', $uid)->delete('tblusers');
           if($sql_query){
            $this->session->set_flashdata('success', 'Record delete successfully');
		    redirect('edituser');
	        }
	        else{
		    $this->session->set_flashdata('error', 'Somthing went worng. Error!!');
		    redirect('edituser');
	    }
    }
    
}