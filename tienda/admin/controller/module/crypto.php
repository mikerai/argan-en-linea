<?php

class ControllerModuleCrypto extends Controller {

    private $error = array();

    public function index() {
        //Load the language file for this module
        $this->load->language('module/crypto');

        //Set the title from the language file $_['heading_title'] string
        $this->document->setTitle($this->language->get('heading_title'));
        $this->document->addStyle('view/stylesheet/stylecustom.css');
        //Load the settings model. You can also add any other models you want to load here.
        $this->load->model('setting/setting');

        $this->load->model('tool/image');

        if (isset($this->request->post['about_us_image'])) {
            $this->data['about_us_image'] = $this->request->post['about_us_image'];
            $about_us_image = $this->request->post['about_us_image'];
        } else {
            $this->data['about_us_image'] = 'fdd';
        }
      
        
         if(isset($this->request->post['slide_image'])){
        $slide_image_settings = serialize($this->request->post['slide_image']);
        }else{
        $slide_image_settings = "";
        }
      
        $slide_settings = array(
        
        'paymentimages_slide_image' => $slide_image_settings,
        );

			$this->model_setting_setting->editSetting('paymentimages', $slide_settings);
		
		


        //Save the settings if the user has submitted the admin form (ie if someone has pressed save).
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('crypto', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }


        //This is how the language gets pulled through from the language file.
        //
		// If you want to use any extra language items - ie extra text on your admin page for any reason,
        // then just add an extra line to the $text_strings array with the name you want to call the extra text,
        // then add the same named item to the $_[] array in the language file.
        //
		// 'crypto_example' is added here as an example of how to add - see admin/language/english/module/crypto.php for the
        // other required part.
        $this->data['heading_title'] = $this->language->get('heading_title');
        $this->data['button_save'] = $this->language->get('button_save');
        $this->data['button_cancel'] = $this->language->get('button_cancel');
        $this->data['text_enabled'] = $this->language->get('text_enabled');
        $this->data['text_disabled'] = $this->language->get('text_disabled');

        $this->data['entry_status'] = $this->language->get('entry_status');
        $this->data['text_bg_pattern'] = $this->language->get('lt_bg_pattern');
        $this->data['text_body_bg_pattern'] = $this->language->get('lt_body_bg_pattern');
       

        $this->data['text_theme_status'] = $this->language->get('theme_status');
        $this->data['text_producttimer_status'] = $this->language->get('producttimer_status');
        $this->data['text_discountribbon_status'] = $this->language->get('discountribbon_status');
        $this->data['text_productzoom_status'] = $this->language->get('productzoom_status');
        $this->data['text_poweredbytext_status'] = $this->language->get('poweredbytext_status');
        $this->data['text_poweredbytext'] = $this->language->get('poweredbytext');
        $this->data['text_lt_headerbgcolor'] = $this->language->get('lt_headerbgcolor');
        $this->data['text_lt_topheaderbordercolor'] = $this->language->get('lt_topheaderbordercolor');
        $this->data['text_lt_currencyfontcolor'] = $this->language->get('lt_currencyfontcolor');
        $this->data['text_lt_currencyhoverfontcolor'] = $this->language->get('lt_currencyhoverfontcolor');
        $this->data['text_lt_headerlinkscolor'] = $this->language->get('lt_headerlinkscolor');
        $this->data['text_lt_headerlinkshovercolor'] = $this->language->get('lt_headerlinkshovercolor');
        $this->data['text_lt_headertextcolor'] = $this->language->get('lt_headertextcolor');
        $this->data['text_lt_shoppingcartcolor'] = $this->language->get('lt_shoppingcartcolor');
        $this->data['text_lt_menuhomebuttoncolor'] = $this->language->get('lt_menuhomebuttoncolor');
        $this->data['text_lt_menuhomeiconcolor'] = $this->language->get('lt_menuhomeiconcolor');
        $this->data['text_lt_menubgcolor'] = $this->language->get('lt_menubgcolor');
        $this->data['text_lt_menutoptextcolor'] = $this->language->get('lt_menutoptextcolor');
        $this->data['text_lt_menutoptexthovercolor'] = $this->language->get('lt_menutoptexthovercolor');
        $this->data['text_lt_menutoptextbghovercolor'] = $this->language->get('lt_menutoptextbghovercolor');
        $this->data['text_lt_menudropdowntextcolor'] = $this->language->get('lt_menudropdowntextcolor');
        $this->data['text_lt_menudropdowntexthovercolor'] = $this->language->get('lt_menudropdowntexthovercolor');
        $this->data['text_lt_menudropdownbgcolor'] = $this->language->get('lt_menudropdownbgcolor');
        $this->data['text_lt_menudropdownbghovercolor'] = $this->language->get('lt_menudropdownbghovercolor');
        $this->data['text_lt_searchbgcolor'] = $this->language->get('lt_searchbgcolor');
        $this->data['text_lt_searchtextcolor'] = $this->language->get('lt_searchtextcolor');
        $this->data['text_lt_searchiconcolor'] = $this->language->get('lt_searchiconcolor');
        $this->data['text_lt_footerbgcolor'] = $this->language->get('lt_footerbgcolor');
        $this->data['text_lt_footerheadingcolor'] = $this->language->get('lt_footerheadingcolor');
        $this->data['text_lt_footertextcolor'] = $this->language->get('lt_footertextcolor');
        $this->data['text_lt_footertexthovercolor'] = $this->language->get('lt_footertexthovercolor');
        $this->data['text_lt_poweredbgcolor'] = $this->language->get('lt_poweredbgcolor');
        $this->data['text_lt_poweredtextcolor'] = $this->language->get('lt_poweredtextcolor');
        $this->data['text_lt_poweredlinkcolor'] = $this->language->get('lt_poweredlinkcolor');
        $this->data['text_lt_poweredlinkhovercolor'] = $this->language->get('lt_poweredlinkhovercolor');
        $this->data['text_lt_bodytextcolor'] = $this->language->get('lt_bodytextcolor');
        $this->data['text_lt_headingtextcolor'] = $this->language->get('lt_headingtextcolor');
        $this->data['text_lt_breadcrumbbgcolor'] = $this->language->get('lt_breadcrumbbgcolor');
        $this->data['text_lt_breadcrumblinkcolor'] = $this->language->get('lt_breadcrumblinkcolor');
        $this->data['text_lt_breadcrumblinkhovercolor'] = $this->language->get('lt_breadcrumblinkhovercolor');
        $this->data['text_lt_productbordercolor'] = $this->language->get('lt_productbordercolor');
        $this->data['text_lt_producttitlecolor'] = $this->language->get('lt_producttitlecolor');
        $this->data['text_lt_producttitlehovercolor'] = $this->language->get('lt_producttitlehovercolor');
        $this->data['text_lt_productpricecolor'] = $this->language->get('lt_productpricecolor');
        $this->data['text_lt_productoldpricecolor'] = $this->language->get('lt_productoldpricecolor');
        
         $this->data['text_lt_wishlistcolor'] = $this->language->get('lt_wishlistcolor');
         $this->data['text_lt_wishlisthovercolor'] = $this->language->get('lt_wishlisthovercolor');
         $this->data['text_lt_comparecolor'] = $this->language->get('lt_comparecolor');
         $this->data['text_lt_comparehovercolor'] = $this->language->get('lt_comparehovercolor');
         $this->data['text_lt_cartcolor'] = $this->language->get('lt_cartcolor');
         $this->data['text_lt_carthovercolor'] = $this->language->get('lt_carthovercolor');
         $this->data['text_lt_discountribboncolor'] = $this->language->get('lt_discountribboncolor');
         $this->data['text_lt_discountribbontextcolor'] = $this->language->get('lt_discountribbontextcolor');
         $this->data['text_lt_categorytextcolor'] = $this->language->get('lt_categorytextcolor');
         $this->data['text_lt_categorytexthovercolor'] = $this->language->get('lt_categorytexthovercolor');
         $this->data['text_lt_categoryactivecolor'] = $this->language->get('lt_categoryactivecolor');
        
        $this->data['text_lt_defaultbtnbgcolor'] = $this->language->get('lt_defaultbtnbgcolor');
        $this->data['text_lt_defaultbtntextcolor'] = $this->language->get('lt_defaultbtntextcolor');
        $this->data['text_lt_defaultbtnbghovercolor'] = $this->language->get('lt_defaultbtnbghovercolor');
        $this->data['text_lt_defaultbtntexthovercolor'] = $this->language->get('lt_defaultbtntexthovercolor');
        $this->data['text_lt_activetabbgcolor'] = $this->language->get('lt_activetabbgcolor');
        $this->data['text_lt_activetabtextcolor'] = $this->language->get('lt_activetabtextcolor');
        $this->data['text_lt_secondarytabbgcolor'] = $this->language->get('lt_secondarytabbgcolor');
        $this->data['text_lt_secondarytabtextcolor'] = $this->language->get('lt_secondarytabtextcolor');
        $this->data['text_lt_tabcontentbgcolor'] = $this->language->get('lt_tabcontentbgcolor');
        $this->data['text_lt_sidebarmenubgcolor'] = $this->language->get('lt_sidebarmenubgcolor');
        $this->data['text_lt_categorytitlebgcolor'] = $this->language->get('lt_categorytitlebgcolor');
        $this->data['text_lt_categorytitletextcolor'] = $this->language->get('lt_categorytitletextcolor');
        $this->data['text_lt_accounttitlebgcolor'] = $this->language->get('lt_accounttitlebgcolor');
        $this->data['text_lt_accounttitletextcolor'] = $this->language->get('lt_accounttitletextcolor');
        $this->data['text_lt_affiliatetitlebgcolor'] = $this->language->get('lt_affiliatetitlebgcolor');
        $this->data['text_lt_affiliatetitletextcolor'] = $this->language->get('lt_affiliatetitletextcolor');
        $this->data['text_lt_informationtitlebgcolor'] = $this->language->get('lt_informationtitlebgcolor');
        $this->data['text_lt_informationtitletextcolor'] = $this->language->get('lt_informationtitletextcolor');
        $this->data['text_lt_featuredtitlebgcolor'] = $this->language->get('lt_featuredtitlebgcolor');
        $this->data['text_lt_featuredtitletextcolor'] = $this->language->get('lt_featuredtitletextcolor');
        $this->data['text_lt_latesttitlebgcolor'] = $this->language->get('lt_latesttitlebgcolor');
        $this->data['text_lt_latesttitletextcolor'] = $this->language->get('lt_latesttitletextcolor');
        $this->data['text_lt_bestsellertitlebgcolor'] = $this->language->get('lt_bestsellertitlebgcolor');
        $this->data['text_lt_bestsellertitletextcolor'] = $this->language->get('lt_bestsellertitletextcolor');
        $this->data['text_lt_specialtitlebgcolor'] = $this->language->get('lt_specialtitlebgcolor');
        $this->data['text_lt_specialtitletextcolor'] = $this->language->get('lt_specialtitletextcolor');
        $this->data['text_lt_customfooterbgcolor'] = $this->language->get('lt_customfooterbgcolor');
        $this->data['text_lt_customfootericoncolor'] = $this->language->get('lt_customfootericoncolor');
        $this->data['text_lt_customfootertextcolor'] = $this->language->get('lt_customfootertextcolor');
       
        $this->data['social_status'] = $this->language->get('social_status');
        $this->data['socialnetworkicons_footer_facebook'] = $this->language->get('socialnetworkicons_footer_facebook');
        $this->data['socialnetworkicons_footer_facebook_show'] = $this->language->get('socialnetworkicons_footer_facebook_show');
        $this->data['socialnetworkicons_footer_twitter'] = $this->language->get('socialnetworkicons_footer_twitter');
        $this->data['socialnetworkicons_footer_twitter_show'] = $this->language->get('socialnetworkicons_footer_twitter_show');
        $this->data['socialnetworkicons_footer_pinterest'] = $this->language->get('socialnetworkicons_footer_pinterest');
        $this->data['socialnetworkicons_footer_pinterest_show'] = $this->language->get('socialnetworkicons_footer_pinterest_show');
        $this->data['socialnetworkicons_footer_gplus'] = $this->language->get('socialnetworkicons_footer_gplus');
        $this->data['socialnetworkicons_footer_gplus_show'] = $this->language->get('socialnetworkicons_footer_gplus_show');
         $this->data['socialnetworkicons_footer_rss'] = $this->language->get('socialnetworkicons_footer_rss');
        $this->data['socialnetworkicons_footer_rss_show'] = $this->language->get('socialnetworkicons_footer_rss_show');
         $this->data['socialnetworkicons_footer_dribbble'] = $this->language->get('socialnetworkicons_footer_dribbble');
        $this->data['socialnetworkicons_footer_dribbble_show'] = $this->language->get('socialnetworkicons_footer_dribbble_show');
         $this->data['socialnetworkicons_footer_forrst'] = $this->language->get('socialnetworkicons_footer_forrst');
        $this->data['socialnetworkicons_footer_forrst_show'] = $this->language->get('socialnetworkicons_footer_forrst_show');
         $this->data['socialnetworkicons_footer_linkedin'] = $this->language->get('socialnetworkicons_footer_linkedin');
        $this->data['socialnetworkicons_footer_linkedin_show'] = $this->language->get('socialnetworkicons_footer_linkedin_show');

        
        $this->data['text_contact_status'] = $this->language->get('contact_status');
        $this->data['text_store_name'] = $this->language->get('store_name');
        $this->data['text_store_address'] = $this->language->get('store_address');
        $this->data['text_store_phone'] = $this->language->get('store_phone');
        $this->data['text_store_email'] = $this->language->get('store_email');
        
        $this->data['payment_status'] = $this->language->get('payment_status');
        $this->data['text_checkout'] = $this->language->get('checkout');
        $this->data['text_checkout_show'] = $this->language->get('checkout_show');
        $this->data['text_amex'] = $this->language->get('amex');
        $this->data['text_amex_show'] = $this->language->get('amex_show');
        $this->data['text_cirrus'] = $this->language->get('cirrus');
        $this->data['text_cirrus_show'] = $this->language->get('cirrus_show');
        $this->data['text_delta'] = $this->language->get('delta');
        $this->data['text_delta_show'] = $this->language->get('delta_show');
        $this->data['text_directdebit'] = $this->language->get('directdebit');
        $this->data['text_directdebit_show'] = $this->language->get('directdebit_show');
        $this->data['text_discover'] = $this->language->get('discover');
        $this->data['text_discover_show'] = $this->language->get('discover_show');
        $this->data['text_ebay'] = $this->language->get('ebay');
        $this->data['text_ebay_show'] = $this->language->get('ebay_show');
        $this->data['text_google'] = $this->language->get('google');
        $this->data['text_google_show'] = $this->language->get('google_show');
        $this->data['text_maestro'] = $this->language->get('maestro');
        $this->data['text_maestro_show'] = $this->language->get('maestro_show');
        $this->data['text_mastercard'] = $this->language->get('mastercard');
        $this->data['text_mastercard_show'] = $this->language->get('mastercard_show');
        $this->data['text_moneybookers'] = $this->language->get('moneybookers');
        $this->data['text_moneybookers_show'] = $this->language->get('moneybookers_show');
        $this->data['text_paypal'] = $this->language->get('paypal');
        $this->data['text_paypal_show'] = $this->language->get('paypal_show');
        $this->data['text_sagepay'] = $this->language->get('sagepay');
        $this->data['text_sagepay_show'] = $this->language->get('sagepay_show');
        $this->data['text_solo'] = $this->language->get('solo');
        $this->data['text_solo_show'] = $this->language->get('solo_show');
        $this->data['text_switch'] = $this->language->get('switch');
        $this->data['text_switch_show'] = $this->language->get('switch_show');
        $this->data['text_visaelectron'] = $this->language->get('visaelectron');
        $this->data['text_visaelectron_show'] = $this->language->get('visaelectron_show');
        $this->data['text_visa'] = $this->language->get('visa');
        $this->data['text_visa_show'] = $this->language->get('visa_show');
        $this->data['text_westernunion'] = $this->language->get('westernunion');
        $this->data['text_westernunion_show'] = $this->language->get('westernunion_show');


        $this->data['text_socialfeeds_status'] = $this->language->get('socialfeeds_status');
        $this->data['text_facebook_status'] = $this->language->get('facebook_status');
        $this->data['text_facebook_link'] = $this->language->get('facebook_link');
        $this->data['text_twitter_column_status'] = $this->language->get('twitter_column_status');
        $this->data['text_twitter_widgetid'] = $this->language->get('twitter_widgetid');
        $this->data['text_custom_footer_column_status'] = $this->language->get('custom_footer_column_status');
        $this->data['text_custom_header_text'] = $this->language->get('custom_header_text');
        $this->data['text_custom_columndescription'] = $this->language->get('custom_columndescription');
        $this->data['text_youtube_iframecode_status'] = $this->language->get('youtube_iframecode_status');
        $this->data['text_youtube_iframecode'] = $this->language->get('youtube_iframecode');
      
        $this->data['text_googlemap_status'] = $this->language->get('googlemap_status');
        $this->data['text_googlemap_code'] = $this->language->get('googlemap_code');
        
        $this->data['text_customfootericonblock_status'] = $this->language->get('customfootericonblock_status');
        $this->data['text_icon1show'] = $this->language->get('icon1show');
        $this->data['text_icon2show'] = $this->language->get('icon2show');
        $this->data['text_icon3show'] = $this->language->get('icon3show');
        $this->data['text_icon4show'] = $this->language->get('icon4show');
        $this->data['text_icon5show'] = $this->language->get('icon5show');
        $this->data['text_icon1'] = $this->language->get('icon1');
        $this->data['text_icon2'] = $this->language->get('icon2');
        $this->data['text_icon3'] = $this->language->get('icon3');
        $this->data['text_icon4'] = $this->language->get('icon4');
        $this->data['text_icon5'] = $this->language->get('icon5');
        $this->data['text_icontext1'] = $this->language->get('icontext1');
        $this->data['text_icontext2'] = $this->language->get('icontext2');
        $this->data['text_icontext3'] = $this->language->get('icontext3');
        $this->data['text_icontext4'] = $this->language->get('icontext4');
        $this->data['text_icontext5'] = $this->language->get('icontext5');
      
        $this->data['text_customproductcolumn_status'] = $this->language->get('customproductcolumn_status');
        $this->data['text_producttexttitle'] = $this->language->get('producttexttitle');
        $this->data['text_producttexttitleshow'] = $this->language->get('producttexttitleshow');
        $this->data['text_producttextdescription'] = $this->language->get('producttextdescription');
        $this->data['text_producttexttitle2'] = $this->language->get('producttexttitle2');
        $this->data['text_producttexttitle2show'] = $this->language->get('producttexttitle2show');
        $this->data['text_producttextdescription2'] = $this->language->get('producttextdescription2');
        $this->data['text_producttexttitle3'] = $this->language->get('producttexttitle3');
        $this->data['text_producttexttitle3show'] = $this->language->get('producttexttitle3show');
        $this->data['text_producttextdescription3'] = $this->language->get('producttextdescription3');
      
        
        $this->data['entry_position']       = $this->language->get('entry_position');
	$this->data['entry_image']          = $this->language->get('entry_image');
        $this->data['entry_status']         = $this->language->get('entry_status');
        $this->data['entry_url']            = $this->language->get('entry_url');
        $this->data['entry_sort']           = $this->language->get('entry_sort');
        $this->data['text_footer']          = $this->language->get('text_footer');
	$this->data['button_addslide']      = $this->language->get('button_addslide');
        $this->data['button_remove']        = $this->language->get('button_remove');
        
        $this->data['tab_sliderimage'] =  $this->language->get('tab_sliderimage');
	$this->data['tab_socialnetwork'] =  $this->language->get('tab_socialnetwork');


        //END LANGUAGE
        //The following code pulls in the required data from either config files or user
        //submitted data (when the user presses save in admin). Add any extra config data
        // you want to store.
        //
		// NOTE: These must have the same names as the form data in your crypto.tpl file
        //
		
	
		//This creates an error message. The error['warning'] variable is set by the call to function validate() in this controller (below)
        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }

        //SET UP BREADCRUMB TRAIL. YOU WILL NOT NEED TO MODIFY THIS UNLESS YOU CHANGE YOUR MODULE NAME.
        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('module/crypto', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $this->data['action'] = $this->url->link('module/crypto', 'token=' . $this->session->data['token'], 'SSL');

        $this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

        //This code handles the situation where you have multiple instances of this module, for different layouts.
        $this->data['modules'] = array();

        if (isset($this->request->post['crypto_module'])) {
            $this->data['modules'] = $this->request->post['crypto_module'];
        } elseif ($this->config->get('crypto_module')) {
            $this->data['modules'] = $this->config->get('crypto_module');
        }


        $config_data = array(
            'theme_status',
            'producttimer_status',
            'discountribbon_status',
            'poweredbytext_status',
            'productzoom_status',
            'poweredbytext',
            'lt_headerbgcolor',
            'lt_topheaderbordercolor',
            'lt_currencyfontcolor',
            'lt_currencyhoverfontcolor',
            'lt_headerlinkscolor',
            'lt_headerlinkshovercolor',
            'lt_headertextcolor',
            'lt_shoppingcartcolor',
            'lt_menuhomebuttoncolor',
            'lt_menuhomeiconcolor',
            'lt_menubgcolor',
            'lt_menutoptextcolor',
            'lt_menutoptexthovercolor',
            'lt_menutoptextbghovercolor',
            'lt_menudropdowntextcolor',
            'lt_menudropdowntexthovercolor',
            'lt_menudropdownbgcolor',
            'lt_menudropdownbghovercolor',
            'lt_searchbgcolor',
            'lt_searchtextcolor',
            'lt_searchiconcolor',
            'lt_footerbgcolor',
            'lt_footerheadingcolor',
            'lt_footertextcolor',
            'lt_footertexthovercolor',
            'lt_poweredbgcolor',
            'lt_poweredtextcolor',
            'lt_poweredlinkcolor',
            'lt_poweredlinkhovercolor',
            'lt_bodytextcolor',
            'lt_headingtextcolor',
            'lt_breadcrumbbgcolor',
            'lt_breadcrumblinkcolor',
            'lt_breadcrumblinkhovercolor',
            'lt_productbordercolor',
            'lt_producttitlecolor',
            'lt_producttitlehovercolor',
            'lt_productpricecolor',
            'lt_productoldpricecolor',
            
            'lt_wishlistcolor',
            'lt_wishlisthovercolor',
            'lt_comparecolor',
            'lt_comparehovercolor',
            'lt_cartcolor',
            'lt_carthovercolor',
            'lt_discountribboncolor',
            'lt_discountribbontextcolor',
            'lt_categorytextcolor',
            'lt_categorytexthovercolor',
            'lt_categoryactivecolor',
            
            'lt_defaultbtnbgcolor',
            'lt_defaultbtntextcolor',
            'lt_defaultbtnbghovercolor',
            'lt_defaultbtntexthovercolor',
            'lt_activetabbgcolor',
            'lt_activetabtextcolor',
            'lt_secondarytabbgcolor',
            'lt_secondarytabtextcolor',
            'lt_tabcontentbgcolor',
            'lt_sidebarmenubgcolor',
            'lt_categorytitlebgcolor',
            'lt_categorytitletextcolor',
            'lt_accounttitlebgcolor',
            'lt_accounttitletextcolor',
            'lt_affiliatetitlebgcolor',
            'lt_affiliatetitletextcolor',
            'lt_informationtitlebgcolor',
            'lt_informationtitletextcolor',
            'lt_featuredtitlebgcolor',
            'lt_featuredtitletextcolor',
            'lt_latesttitlebgcolor',
            'lt_latesttitletextcolor',
            'lt_bestsellertitlebgcolor',
            'lt_bestsellertitletextcolor',
            'lt_specialtitlebgcolor',
            'lt_specialtitletextcolor',
            'lt_customfooterbgcolor',
            'lt_customfootericoncolor',
            'lt_customfootertextcolor',
            'lt_specialtitlebgcolor',
            
            'social_status',
            'socialnetworkicons_footer_facebook',
            'socialnetworkicons_footer_facebook_show',
            'socialnetworkicons_footer_twitter',
            'socialnetworkicons_footer_twitter_show',
            'socialnetworkicons_footer_pinterest',
            'socialnetworkicons_footer_pinterest_show',
            'socialnetworkicons_footer_gplus',
            'socialnetworkicons_footer_gplus_show',
            'socialnetworkicons_footer_rss',
            'socialnetworkicons_footer_rss_show',
            'socialnetworkicons_footer_dribbble',
            'socialnetworkicons_footer_dribbble_show',
            'socialnetworkicons_footer_forrst',
            'socialnetworkicons_footer_forrst_show',
            'socialnetworkicons_footer_linkedin',
            'socialnetworkicons_footer_linkedin_show',
            'contact_status',
            'phone_status',
            'footer_contact',
            'email_status',
            'contact_us',
			'contact_title',
            'store_name',
			'store_name_show',
			'store_address_show',
			'store_phone_show',
			'store_email_show',
            'store_address',
            'store_phone',
            'store_email',
            'payment_status',
            'checkout',
            'checkout_show',
            'amex',
            'amex_show',
            'cirrus',
            'cirrus_show',
            'delta',
            'delta_show',
            'directdebit',
            'directdebit_show',
            'discover',
            'discover_show',
            'ebay',
            'ebay_show',
            'google',
            'google_show',
            'maestro',
            'maestro_show',
            'mastercard',
            'mastercard_show',
            'moneybookers',
            'moneybookers_show',
            'paypal',
            'paypal_show',
            'sagepay',
            'sagepay_show',
            'solo',
            'solo_show',
            'switch',
            'switch_show',
            'visaelectron',
            'visaelectron_show',
            'visa',
            'visa_show',
            'westernunion',
            'westernunion_show',
            'socialfeeds_status',
            'facebook_status',
            'facebook_link',
            'twitter_column_status',
            'twitter_widgetid',
            'custom_footer_column_status',
            'custom_header_text',
            'custom_columndescription',
            'youtube_iframecode_status',
            'youtube_iframecode',
            'googlemap_status',
            'googlemap_code',
            'about_us_image',
            'about_us_image_status',
            'about_us_image_preview',
            'bg_image_position',
            'bg_image_repeat',
            'bg_image_attachment',
            'lt_body_bg_pattern',
            'lt_body_color',
            'bodybackground_status',
            'customfootericonblock_status',
            'icontext1',
            'icontext2',
            'icontext3',
            'icontext4',
            'icontext5',
            'icon1',
            'icon2',
            'icon3',
            'icon4',
            'icon5',
            'icon1show',
            'icon2show',
            'icon3show',
            'icon4show',
            'icon5show',
            'producttexttitle',
            'producttexttitleshow',
            'producttextdescription',
          
            'producttexttitle2',
            'producttexttitle2show',
            'producttextdescription2',
          
            'producttexttitle3',
            'producttexttitle3show',
            'producttextdescription3',
          
            'customproductcolumn_status',
        );

        foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $this->data[$conf] = $this->request->post[$conf];
            } else {
                $this->data[$conf] = $this->config->get($conf);
            }
        }

        if (isset($this->data['about_us_image']) && file_exists(DIR_IMAGE . $this->data['about_us_image'])) {
            $this->data['about_us_image_preview'] = $this->model_tool_image->resize($this->data['about_us_image'], 80, 80);
        } else {
            $this->data['about_us_image_preview'] = $this->model_tool_image->resize('no_image.jpg', 50, 70);
        }
        
         $this->data['token'] = $this->session->data['token'];
                
                $this->load->model('localisation/language');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
        
        	
		

	$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 40, 40);
        $this->data['slide_images'] = array();
        $this->data['slide_images'] = unserialize($this->config->get('paymentimages_slide_image'));
       
        
        $this->load->model('design/layout');

        $this->data['layouts'] = $this->model_design_layout->getLayouts();

        //Choose which template file will be used to display this request.
        $this->template = 'module/crypto.tpl';
        $this->children = array(
            'common/header',
            'common/footer',
           
        );

        //Send the output.
        $this->response->setOutput($this->render());
    }

    /*
     * 
     * This function is called to ensure that the settings chosen by the admin user are allowed/valid.
     * You can add checks in here of your own.
     * 
     */

    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/crypto')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if (!$this->error) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

}

?>