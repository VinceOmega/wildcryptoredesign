<?php

class Slide extends DataObject {

    private static $db = array(
        'Name' 				=> 'Varchar',
        'Caption' 			=> 'Varchar',
        'CallToAction' 		=> 'Varchar',
        'CallToActionURL' 	=> 'Varchar'
    );

    private static $has_one = array(
        'Sliders' 		=> 'Sliders',
        'UploadImage' 	=> 'Image'
    );

}