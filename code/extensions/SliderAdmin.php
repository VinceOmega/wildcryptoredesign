<?php

class SliderAdmin extends ModelAdmin{

	private static $managed_models = array(

		'Slide',
		'Sliders'

	);

	private static $url_segment = 'sliders';

	private static $menu_title 	=  'Sliders Admin';

}