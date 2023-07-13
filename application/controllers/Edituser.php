<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Edituser extends CI_Controller {
    public function index(){
        //loading model
        $this->load->model('Getusers_Model');
        $results=$this->Getusers_Model->getdata();
        // Passing values to view
        $this->load->view('editUser',['result'=>$results]);
        }
    
        // for particular recod edit 
    public function getdetails($uid)
    {
        //loading model
        $this->load->model('Getusers_Model');
        $result=$this->Getusers_Model->getdetails($uid);
        // Passing Values to update view
        $this->load->view('editdetails',['row'=>$result]);
    }
    // for particular recod delete 
    public function removeuser($uid)
    {
        //loading model
        $this->load->model('Getusers_Model');
        $result=$this->Getusers_Model->removedetails($uid);
        // Passing Values to update view
        $this->load->view('editdetails');
    }
}