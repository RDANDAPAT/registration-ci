<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Googlemaps {

    protected $CI;
    protected $api_key;

    public function __construct() {
        $this->CI = &get_instance();
        $this->CI->config->load('googlemaps');
        $this->api_key = $this->CI->config->item('google_maps_api_key');
    }

    public function getAPIKey() {
        return $this->api_key;
    }

    // Add other functions for Google Maps functionality

}?>
