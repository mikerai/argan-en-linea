<?php
class ControllerModuleBestSeller extends Controller {
	protected function index($setting) {
		$this->language->load('module/bestseller');
			static $module = 0;
 
      	$this->data['heading_title'] = $this->language->get('heading_title');
				
		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');

		$this->data['products'] = array();

		$results = $this->model_catalog_product->getBestSellerProducts($setting['limit']);
		
		foreach ($results as $result) {
			if ($result['image']) {
					$this->data['img_width']=$setting['image_width'];
					$this->data['img_height']=$setting['image_height'];
				$image = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
			} else {
				$image = false;
			}
			
			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}
					
			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}	
			
			$this->load->model('catalog/LatestThemesCount');
			
			
			
			$specials_date = $this->model_catalog_LatestThemesCount->getProductDiscountDates($result['product_id']);
			$specials_purchased = $this->model_catalog_LatestThemesCount->getVouchersBought($result['product_id']);
			
			$this->data['quantity_start'] = $result['quantity'];
			$this->data['quantity_left'] = $result['quantity'] - $specials_purchased['quantity_purchased'];
			
			if ($specials_date['date_end']) {				
				list($year,$month,$day)    =    explode('-',$specials_date['date_end']);
				$stringDate = $year.', '.$month.' - 1, '.$day;
			}else{
				$stringDate = 0;
			}
			
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}
							
			$this->data['products'][] = array(
				'product_id' => $result['product_id'],
				'thumb'   	 => $image,
				'name'    	 => $result['name'],
				'startdate'    	 => $result['date_added'],
					'date_end'  => $stringDate,
					'quantity' => $result['quantity'],
					'quantity_start' =>  $specials_purchased['quantity_purchased'],
				'price'   	 => $price,
				'special' 	 => $special,
				'rating'     => $rating,
				'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
			);
		}
			  $this->data['module'] = $module++;

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/bestseller.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/bestseller.tpl';
		} else {
			$this->template = 'default/template/module/bestseller.tpl';
		}

		$this->render();
	}
}
?>