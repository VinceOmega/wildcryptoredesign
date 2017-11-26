<?php


class Sliders extends DataObject {

    private static $db = array(
        'Title' 		=> 'Varchar',
        'Description' 	=> 'Text'
    );

    private static $has_many = array(
        'Slides' => 'Slide'
    );

	public function getSlides(){

		$gridField = new GridField('Slides', 'Slides', Slide::get()->filter( array( 'Sliders' => $this->ID ) ) );
		$dataColumns = $gridField->getConfig()->getComponentByType('GridFieldDataColumns');
	    $dataColumns->setDisplayFields(array(
	        'Name' 			=> 'Slide Name',
	        'Caption' 		=> 'Slide Caption',
	        'CallToAction' 	=> 'Button Label'
	    ));	

		return new Form( $this, 'Slides', new FieldList( $gridField ), new FieldList() );

	}

}