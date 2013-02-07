<?php
class ControllerInformationStatic extends Controller { // Controller - This is a controller file. Information - This is the folder it is in. Static - This file name is static.php
      
     public function index() {
      $this->language->load('information/static'); // Optional. This calls for your language file

       $this->document->setTitle($this->language->get('heading_title')); // Optional. Set the title of your web page.

		$this->data['breadcrumbs'] = array(); // Breadcrumbs for your website. 
		$this->data['breadcrumbs'][] = array(
			'text'			=> $this->language->get('text_home'),
			'href'			=> $this->url->link('common/home'),           
			'separator'		=> false
		);
		$this->data['breadcrumbs'][] = array(
			'text'			=> $this->language->get('heading_title'),
			'href'      	=> $this->url->link('information/static'),
			'separator' 	=> $this->language->get('text_separator')
		);   

		// Text from language file
		$this->data['heading_title']	= $this->language->get('heading_title'); // Get "heading title" from language file. $this->data['something'] will allow you to call for this variable from the template file.
		$this->data['text_content']	= $this->language->get('text_content');

		// We call this Fallback system
      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/static.tpl')) { // if file exists in your current template folder
         $this->template = $this->config->get('config_template') . '/template/information/static.tpl'; // get it
      } else {
         $this->template = 'default/template/information/static.tpl'; // or else get the file from the default folder (this is a fall back folder) always remember to have your template file in the default folder.
      }
      
      $this->children = array( // Required. The children files for the page.
         'common/column_left', // Column left which will allow you to place modules at the left of your page.
         'common/column_right',
         'common/content_top',
         'common/content_bottom',
         'common/footer', // your footer of your website
         'common/header'
      );
		
      $this->response->setOutput($this->render()); // Let's display it all!
     }
}
?>