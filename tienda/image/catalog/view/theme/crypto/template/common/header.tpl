<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0" />
        <title><?php echo $title; ?></title>
        <base href="<?php echo $base; ?>" />
        <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>" />
        <?php } ?>
        <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>" />
        <?php } ?>
        <?php if ($icon) { ?>
        <link href="<?php echo $icon; ?>" rel="icon" />
        <?php } ?>
        <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
        <?php } ?>
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/crypto/stylesheet/stylesheet.css" />
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/crypto/stylesheet/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/crypto/stylesheet/responsive.css" />
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/crypto/stylesheet/cloud-zoom.css" />

        <!-- google fonts -->
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=BenchNine:300,400,700&subset=latin,latin-ext" />
        <style type="text/css">
            h1,  h2,  h3,  h4,  h5,  h6,  .button,  .htabs a,  .box-heading,  .mainmenu > li > a,  .product-info .price,  #menu #btn-mobile-toggle {
                font-family: BenchNine;
            }
            body,  input,  select,  textarea,  .product-info .reward,  .product-info .discount,  .product-info .price-tax,  .special-price .price-old{
                font-family: Arial, Helvetica, sans-serif;
            }
        </style>
        <!-- google fonts /-->
        <?php foreach ($styles as $style) { ?>
        <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
        <?php } ?>
        <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
        <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
        <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
        <?php foreach ($scripts as $script) { ?>
        <script type="text/javascript" src="<?php echo $script; ?>"></script>
        <?php } ?>
        <script type="text/javascript" src="catalog/view/theme/crypto/js/custom.js"></script>
        <script type="text/javascript" src="catalog/view/theme/crypto/js/count/jquery.countdown.js"></script>
        <script type="text/javascript" src="catalog/view/theme/crypto/js/scrolltopcontrol.js"></script>
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/crypto/js/flex/flexslider.css" media="screen" />
        <script type="text/javascript" src="catalog/view/theme/crypto/js/flex/jquery.flexslider.js"></script>
        <script type="text/javascript" src="catalog/view/theme/crypto/stylesheet/cloud-zoom.1.0.2.min.js"></script>
        <script type="text/javascript" src="catalog/view/theme/crypto/stylesheet/jquery.easing.min.js"></script>

        <!--[if lte IE 8]>
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/crypto/stylesheet/ie.css" />
        <![endif]-->

        <?php if($this->config->get('theme_status') == '1') { ?>
        <style type="text/css">
            /* Header Background Color */

            <?php if($this->config->get('lt_headerbgcolor') != 'E44D2E') {
                ?>  #header {
                background-color:#<?php echo $this->config->get('lt_headerbgcolor');
                ?>;}
            .box-heading span,h1 span{border-color:#<?php echo $this->config->get('lt_headerbgcolor');
?>;}
            .color-red .pagination .links b, .color-red .pagination .links a:hover{background-color:#<?php echo $this->config->get('lt_headerbgcolor');
?>;
            }
            <?php
            }
            ?>     
            /*Top Header Border Color */
            <?php if($this->config->get('lt_topheaderbordercolor') != 'EC6C3F') {
                ?>  #header #topbar, .color-red #topbar .links a, #topbar .wrapper {
                border-color:#<?php echo $this->config->get('lt_topheaderbordercolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Currency Font Color */
            <?php if($this->config->get('lt_currencyfontcolor') != 'F9E5CC') {
                ?>  .color-red #topbar #currency a {
                color:#<?php echo $this->config->get('lt_currencyfontcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Currency Hover Font Color*/
            <?php if($this->config->get('lt_currencyhoverfontcolor') != 'FFFFFF') {
                ?>  .color-red #topbar #currency a:hover {
                    color:#<?php echo $this->config->get('lt_currencyhoverfontcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Header Links Color*/
            <?php if($this->config->get('lt_headerlinkscolor') != 'F9E5CC') {
                ?>  #topbar .links a, #welcome a {
                color:#<?php echo $this->config->get('lt_headerlinkscolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Header Links Hover Color*/
            <?php if($this->config->get('lt_headerlinkshovercolor') != 'FFFFFF') {
                ?>  #topbar .links a:hover, #welcome a:hover {
                    color:#<?php echo $this->config->get('lt_headerlinkshovercolor');
                ?>;
                text-decoration:none;
            }
            <?php
            }
            ?>     
            /*Header Text Color*/
            <?php if($this->config->get('lt_headertextcolor') != 'F9E5CC') {
                ?>  #header {
                color:#<?php echo $this->config->get('lt_headertextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Shopping Cart Color*/
            <?php if($this->config->get('lt_shoppingcartcolor') != 'FFFFFF') {
                ?>  #header #cart .heading a {
                color:#<?php echo $this->config->get('lt_shoppingcartcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Menu Home Button Color*/
            <?php if($this->config->get('lt_menuhomebuttoncolor') != '000000') {
                ?>  .homeico {
                background:#<?php echo $this->config->get('lt_menuhomebuttoncolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Menu Home Icon Color*/
            <?php if($this->config->get('lt_menuhomeiconcolor') != 'FFFFFF') {
                ?>  .homeicotxt {
                color:#<?php echo $this->config->get('lt_menuhomeiconcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Menu Background Color*/
            <?php if($this->config->get('lt_menubgcolor') != 'FFFFFF') {
                ?>  .mainmenu {
                background:#<?php echo $this->config->get('lt_menubgcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Menu Top Text Color*/
            <?php if($this->config->get('lt_menutoptextcolor') != '000000') {
                ?>  .menu > ul > li > a {
                color:#<?php echo $this->config->get('lt_menutoptextcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Menu Top Text Hover Color*/
            <?php if($this->config->get('lt_menutoptexthovercolor') != 'E44D2E') {
                ?>  .color-red .mainmenu li:hover > a {
                    color:#<?php echo $this->config->get('lt_menutoptexthovercolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Menu Top Text Background Hover Color*/
            <?php if($this->config->get('lt_menutoptextbghovercolor') != 'E8E8E8') {
                ?>  .menu > ul > li:hover {
                    background:#<?php echo $this->config->get('lt_menutoptextbghovercolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Menu Dropdown Text Color*/
            <?php if($this->config->get('lt_menudropdowntextcolor') != '444444') {
                ?>  .menu > ul > li > div > ul > li > a {
                color:#<?php echo $this->config->get('lt_menudropdowntextcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Menu Dropdown Text Hover Color*/
            <?php if($this->config->get('lt_menudropdowntexthovercolor') != 'E44D2E') {
                ?>  .menu > ul > li ul > li > a:hover {
                    color:#<?php echo $this->config->get('lt_menudropdowntexthovercolor');
                ?>
            }
            <?php
            }
            ?>     
            /*Menu Dropdown Background Color*/
            <?php if($this->config->get('lt_menudropdownbgcolor') != 'E8E8E8') {
                ?>  .menu > ul > li > div {
                background:#<?php echo $this->config->get('lt_menudropdownbgcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Menu Dropdown Background Hover Color*/
            <?php if($this->config->get('lt_menudropdownbghovercolor') != 'FFFFFF') {
                ?>  .menu > ul > li ul > li > a:hover {
                    background:#<?php echo $this->config->get('lt_menudropdownbghovercolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Search Background Color*/
            <?php if($this->config->get('lt_searchbgcolor') != '000000') {
                ?>  #header #search:hover {
                    background:#<?php echo $this->config->get('lt_searchbgcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Search Text Color*/
            <?php if($this->config->get('lt_searchtextcolor') != 'FFFFFF') {
                ?>  #header #search input {
                color:#<?php echo $this->config->get('lt_searchtextcolor');
                ?>;
            }
            ::-webkit-input-placeholder {
                color:#<?php echo $this->config->get('lt_searchtextcolor');
                ?>;
            }
            ::-moz-placeholder {
                color:#<?php echo $this->config->get('lt_searchtextcolor');
                ?>;
            } /* firefox 19+ */
            :-ms-input-placeholder {
                color:#<?php echo $this->config->get('lt_searchtextcolor');
                ?>;
            } /* ie */
            input:-moz-placeholder {
                color:#<?php echo $this->config->get('lt_searchtextcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Search Icon Color*/
            <?php if($this->config->get('lt_searchiconcolor') != 'E44D2E') {
                ?>  #toppanel #search .button-search {
                color:#<?php echo $this->config->get('lt_searchiconcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Footer Background Color*/
            <?php if($this->config->get('lt_footerbgcolor') != 'DDDDDD') {
                ?>  #footer {
                background:#<?php echo $this->config->get('lt_footerbgcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Footer Heading Color*/
            <?php if($this->config->get('lt_footerheadingcolor') != '444444') {
                ?>  #footer h3 {
                color:#<?php echo $this->config->get('lt_footerheadingcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Footer Text Color*/
            <?php if($this->config->get('lt_footertextcolor') != '666666') {
                ?>  #footer .column a {
                color:#<?php echo $this->config->get('lt_footertextcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Footer Text Hover Color*/
            <?php if($this->config->get('lt_footertexthovercolor') != '444444') {
                ?>  #footer .column a:hover {
                    color:#<?php echo $this->config->get('lt_footertexthovercolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Powered Background Color*/
            <?php if($this->config->get('lt_poweredbgcolor') != '333333') {
                ?>  #powered {
                background:#<?php echo $this->config->get('lt_poweredbgcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Powered Text Color*/
            <?php if($this->config->get('lt_poweredtextcolor') != '929191') {
                ?>  #powered .wrapper {
                color:#<?php echo $this->config->get('lt_poweredtextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Powered Link Color*/
            <?php if($this->config->get('lt_poweredlinkcolor') != 'FFFFFF') {
                ?>  #powered .wrapper a {
                color:#<?php echo $this->config->get('lt_poweredlinkcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Powered Link Hover Color*/
            <?php if($this->config->get('lt_poweredlinkhovercolor') != '929191') {
                ?>  #powered .wrapper a:hover {
                    color:#<?php echo $this->config->get('lt_poweredlinkhovercolor');
                ?>;
                text-decoration:none;
            }
            <?php
            }
            ?>    
            /*Body Text Color*/
            <?php if($this->config->get('lt_bodytextcolor') != '929191') {
                ?>  body {
                color:#<?php echo $this->config->get('lt_bodytextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Heading Text Color*/
            <?php if($this->config->get('lt_headingtextcolor') != '444444') {
                ?>  h1, h2, h3, h4, h5, h6 {
                color:#<?php echo $this->config->get('lt_headingtextcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Breadcrumb Background Color*/
            <?php if($this->config->get('lt_breadcrumbbgcolor') != 'EEEEEE') {
                ?>  .breadcrumb {
                background:#<?php echo $this->config->get('lt_breadcrumbbgcolor');
                ?>;
            }
            .breadcrumb a {
                background-color:#<?php echo $this->config->get('lt_breadcrumbbgcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Breadcrumb Link Color*/
            <?php if($this->config->get('lt_breadcrumblinkcolor') != '666666') {
                ?>  .breadcrumb a:first-child, .breadcrumb a:last-child, .breadcrumb a {
                    color:#<?php echo $this->config->get('lt_breadcrumblinkcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Breadcrumb Link Hover Color*/
            <?php if($this->config->get('lt_breadcrumblinkhovercolor') != 'E44D2E') {
                ?>  .breadcrumb a:hover {
                    color:#<?php echo $this->config->get('lt_breadcrumblinkhovercolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Product Border Color*/
            <?php if($this->config->get('lt_productbordercolor') != 'E5E5E5') {
                ?>  #product_list .ajax_block_product {
                border-color:#<?php echo $this->config->get('lt_productbordercolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Product Title Color*/
            <?php if($this->config->get('lt_producttitlecolor') != '000000') {
                ?>  #product_list li .s_title_block a {
                color:#<?php echo $this->config->get('lt_producttitlecolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Product Title Hover Color*/
            <?php if($this->config->get('lt_producttitlehovercolor') != 'E44D2E') {
                ?>  #product_list li .s_title_block a:hover {
                    color:#<?php echo $this->config->get('lt_producttitlehovercolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Product Price Color*/
            <?php if($this->config->get('lt_productpricecolor') != 'E44D2E') {
                ?>  #product_list li .price {
                color:#<?php echo $this->config->get('lt_productpricecolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Product Old-Price Color*/
            <?php if($this->config->get('lt_productoldpricecolor') != '999999') {
                ?>  #product_list li .old_price {
                color:#<?php echo $this->config->get('lt_productoldpricecolor');
                ?>;
            }
            <?php
            }
            ?>     
            
            /*Add To Wishlist Color*/
            <?php if($this->config->get('lt_wishlistcolor') != '999999') {
                ?>  .add_to_wishlist {
                border-color:transparent  transparent #<?php echo $this->config->get('lt_wishlistcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Add To Wishlist Text Color*/
            <?php if($this->config->get('lt_wishlisthovercolor') != 'FFFFFF') {
                ?>  .add_to_wishlist a i {
                color:#<?php echo $this->config->get('lt_wishlisthovercolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Add To Compare Color*/
            <?php if($this->config->get('lt_comparecolor') != '202020') {
                ?>  add_to_compare {
                 border-color:transparent  transparent #<?php echo $this->config->get('lt_comparecolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Add To Compare Text Color*/
            <?php if($this->config->get('lt_comparehovercolor') != 'FFFFFF') {
                ?>  .add_to_compare a i {
                color:#<?php echo $this->config->get('lt_comparehovercolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Add To Cart Color*/
            <?php if($this->config->get('lt_cartcolor') != 'E44D2E') {
                ?>  .add_to_cart {
                border-color:transparent  transparent #<?php echo $this->config->get('lt_cartcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Add To Cart Text Color*/
            <?php if($this->config->get('lt_carthovercolor') != 'FFFFFF') {
                ?>  .add_to_cart a i,.add_to_cart a span {
                color:#<?php echo $this->config->get('lt_carthovercolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Discount Ribbon Color*/
            <?php if($this->config->get('lt_discountribboncolor') != 'E44D2E') {
                ?>  .saveribbon:after {
                border-top-color:#<?php echo $this->config->get('lt_discountribboncolor');
			
                ?>;
				
            }
			.saveribbon{ background:#<?php echo $this->config->get('lt_discountribboncolor');
			
                ?>;}
            <?php
            }
            ?>     
            /*Discount Ribbon Text Color*/
            <?php if($this->config->get('lt_discountribbontextcolor') != 'FFFFFF') {
                ?>  .saveribbon {
                color:#<?php echo $this->config->get('lt_discountribbontextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Category Text Color*/
            <?php if($this->config->get('lt_categorytextcolor') != '999999') {
                ?>  .treemenu li a span {
                color:#<?php echo $this->config->get('lt_categorytextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Category Text Hover Color*/
            <?php if($this->config->get('lt_categorytexthovercolor') != 'E44D2E') {
                ?>  .color-red .treemenu li a:hover span  {
                color:#<?php echo $this->config->get('lt_categorytexthovercolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Category Active Color*/
            <?php if($this->config->get('lt_categoryactivecolor') != 'E44D2E') {
                ?>  .color-red .treemenu li a.active span {
                color:#<?php echo $this->config->get('lt_categoryactivecolor');
                ?>;
            }
            <?php
            }
            ?>     


            /*Default Button Background Color*/
            <?php if($this->config->get('lt_defaultbtnbgcolor') != 'E44D2E') {
                ?>  .color-red .button.highlight, .color-red .buttons .button {
                background-color:#<?php echo $this->config->get('lt_defaultbtnbgcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Default Button Text Color*/
            <?php if($this->config->get('lt_defaultbtntextcolor') != 'FFFFFF') {
                ?>  .color-red .button.highlight, .color-red .buttons .button {
                color:#<?php echo $this->config->get('lt_defaultbtntextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Default Button Background Hover Color*/
            <?php if($this->config->get('lt_defaultbtnbghovercolor') != '000000') {
                ?>  .color-red .button.highlight:hover, .color-red .buttons .button:hover {
                    background-color:#<?php echo $this->config->get('lt_defaultbtnbghovercolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Default Button Text Hover Color*/
            <?php if($this->config->get('lt_defaultbtntexthovercolor') != 'FFFFFF') {
                ?>  .color-red .button.highlight:hover, .color-red .buttons .button:hover {
                    color:#<?php echo $this->config->get('lt_defaultbtntexthovercolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Active Tab Backgound Color*/
            <?php if($this->config->get('lt_activetabbgcolor') != 'FAFAFA') {
                ?>  .color-red .htabs a:hover, .color-red .htabs a.selected {
                    background:#<?php echo $this->config->get('lt_activetabbgcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Active Tab Text Color*/
            <?php if($this->config->get('lt_activetabtextcolor') != '000000') {
                ?>  .color-red .htabs a:hover, .color-red .htabs a.selected {
                    color:#<?php echo $this->config->get('lt_activetabtextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Secondary Tab Backgound Color*/
            <?php if($this->config->get('lt_secondarytabbgcolor') != 'E5E5E5') {
                ?>  .color-red .htabs a {
                background:#<?php echo $this->config->get('lt_secondarytabbgcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Secondary Tab Text Color*/
            <?php if($this->config->get('lt_secondarytabtextcolor') != '666666') {
                ?>  .color-red .htabs a {
                color:#<?php echo $this->config->get('lt_secondarytabtextcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Tab Content Background Color*/
            <?php if($this->config->get('lt_tabcontentbgcolor') != 'FAFAFA') {
                ?>  .tab-content {
                background:#<?php echo $this->config->get('lt_tabcontentbgcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Sidebar Menu Backgound Color*/
            <?php if($this->config->get('lt_sidebarmenubgcolor') != 'F2F2F2') {
                ?>  .treemenu {
                background:#<?php echo $this->config->get('lt_sidebarmenubgcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Category Title Background Color*/
            <?php if($this->config->get('lt_categorytitlebgcolor') != 'E44D2E') {
                ?>  #column-left .box .categ, #column-right .box .categ {
                background:#<?php echo $this->config->get('lt_categorytitlebgcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Category Title Text Color*/
            <?php if($this->config->get('lt_categorytitletextcolor') != 'FFFFFF') {
                ?>  #column-left .categ span, #column-right .categ span {
                color:#<?php echo $this->config->get('lt_categorytitletextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Account Title Background Color*/
            <?php if($this->config->get('lt_accounttitlebgcolor') != 'E44D2E') {
                ?>  #column-left .box .accu, #column-right .box .accu {
                background:#<?php echo $this->config->get('lt_accounttitlebgcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Account Title Text Color*/
            <?php if($this->config->get('lt_accounttitletextcolor') != 'FFFFFF') {
                ?>  #column-left .accu span, #column-right .accu span {
                color:#<?php echo $this->config->get('lt_accounttitletextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Affiliate Title Background Color*/
            <?php if($this->config->get('lt_affiliatetitlebgcolor') != 'E44D2E') {
                ?>  #column-left .box .affili, #column-right .box .affili {
                background:#<?php echo $this->config->get('lt_affiliatetitlebgcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Affiliate Title Text Color*/
            <?php if($this->config->get('lt_affiliatetitletextcolor') != 'FFFFFF') {
                ?>  #column-left .affili span, #column-right .affili span {
                color:#<?php echo $this->config->get('lt_affiliatetitletextcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Information Title Background Color*/
            <?php if($this->config->get('lt_informationtitlebgcolor') != 'E44D2E') {
                ?>  #column-left .box .informa, #column-right .box .informa {
                background:#<?php echo $this->config->get('lt_informationtitlebgcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Information Title Text Color*/
            <?php if($this->config->get('lt_informationtitletextcolor') != 'FFFFFF') {
                ?>  #column-left .informa span, #column-right .informa span {
                color:#<?php echo $this->config->get('lt_informationtitletextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Featured Title Background Color*/
            <?php if($this->config->get('lt_featuredtitlebgcolor') != 'E44D2E') {
                ?>  #column-left .box .featr, #column-right .box .featr {
                background:#<?php echo $this->config->get('lt_featuredtitlebgcolor');
                ?>;
            }
            <?php
            }
            ?>   
            /*Featured Title Text Color*/
            <?php if($this->config->get('lt_featuredtitletextcolor') != 'FFFFFF') {
                ?>  #column-left .featr span, #column-right .featr span {
                color:#<?php echo $this->config->get('lt_featuredtitletextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Latest Title Background Color*/
            <?php if($this->config->get('lt_latesttitlebgcolor') != 'E44D2E') {
                ?>  #column-left .box .lates, #column-right .box .lates {
                background:#<?php echo $this->config->get('lt_latesttitlebgcolor');
                ?>;
            }
            <?php
            }
            ?>   
            /*Latest Title Text Color*/
            <?php if($this->config->get('lt_latesttitletextcolor') != 'FFFFFF') {
                ?>  #column-left .lates span, #column-right .lates span {
                color:#<?php echo $this->config->get('lt_latesttitletextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Bestseller Title Background Color*/
            <?php if($this->config->get('lt_bestsellertitlebgcolor') != 'E44D2E') {
                ?>  #column-left .box .bestsell, #column-right .box .bestsell {
                background:#<?php echo $this->config->get('lt_bestsellertitlebgcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Bestseller Title Text Color*/
            <?php if($this->config->get('lt_bestsellertitletextcolor') != 'FFFFFF') {
                ?>  #column-left .bestsell span, #column-right .bestsell span {
                color:#<?php echo $this->config->get('lt_bestsellertitletextcolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Special Title Background Color*/
            <?php if($this->config->get('lt_specialtitlebgcolor') != 'E44D2E') {
                ?>  #column-left .box .speia, #column-right .box .speia {
                background:#<?php echo $this->config->get('lt_specialtitlebgcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Special Title Text Color*/
            <?php if($this->config->get('lt_specialtitletextcolor') != 'FFFFFF') {
                ?>  #column-left .speia span, #column-right .speia span {
                color:#<?php echo $this->config->get('lt_specialtitletextcolor');
                ?>;
            }
            <?php
            }
            ?>   
            /*Custom Footer Background Color*/
            <?php if($this->config->get('lt_customfooterbgcolor') != 'EEEEEE') {
                ?>  #footertop, .footer-payment-service {
                background-color:#<?php echo $this->config->get('lt_customfooterbgcolor');
                ?>;
            }
            <?php
            }
            ?>    
            /*Custom Footer Icon Color*/
            <?php if($this->config->get('lt_customfootericoncolor') != '666666') {
                ?>  .footer-payment-service .span4 i {
                color:#<?php echo $this->config->get('lt_customfootericoncolor');
                ?>;
            }
            <?php
            }
            ?>     
            /*Custom Footer Text Color*/
            <?php if($this->config->get('lt_customfootertextcolor') != '666666') {
                ?>  .footer-payment-service .span4 span {
                color:#<?php echo $this->config->get('lt_customfootertextcolor');
                ?>;
            }
            <?php
            }
            ?>
        </style>
        <?php } ?>
        <?php if($this->config->get('bodybackground_status') == '1'){ ?>
        <style type="text/css">

            <?php if($this->config->get('lt_body_color') && $this->config->get('lt_body_color')!='#ffffff'){?>
            
            body {background-color:#<?php echo $this->config->get('lt_body_color')?>;}
            
            <?php }?>

            <?php if($this->config->get('lt_body_bg_pattern') && $this->config->get('lt_body_bg_pattern')!='No_pattern'){?>
	
            body {background-image:url("catalog/view/theme/crypto/image/bg/<?php echo $this->config->get('lt_body_bg_pattern')?>.png"); background-position: top center;
            background-repeat: repeat;
			 background-attachment:inherit;
        
            }
            <?php }?>

            <?php if($this->config->get('about_us_image_status') == '1'){ ?>	

                                                                          body {background:url("image/<?php echo $this->config->get('about_us_image')?>") ;
            background-position: <?php echo $this->config->get('bg_image_position')?>;
            background-repeat: <?php echo $this->config->get('bg_image_repeat')?>;
            background-attachment: <?php echo $this->config->get('bg_image_attachment')?>;
			background-color:#<?php echo $this->config->get('lt_body_color')?>;}

                                                                          <?php } ?>



        </style>
        <?php } ?>
        <?php if($this->config->get('producttimer_status') == '0'){ ?>
        <style type="text/css">
            .hover_fly_time,.count_holder_small{ display:none; visibility:hidden;}
        </style>
        <?php } ?>
  
        <?php if($this->config->get('discountribbon_status') == '0'){ ?>
        <style type="text/css">
            .saveribbon{ display:none; visibility:hidden;}
        </style>
        <?php } ?>
        <?php if ($stores) { ?>
        <script type="text/javascript"><!--
            $(document).ready(function() {
                <?php foreach ($stores as $store) { ?>
                $('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
                <?php } ?>
        });
        //--></script>
        <?php } ?>
        <?php echo $google_analytics; ?>
    </head>
    <body class="color-red">
        <div id="header">
            <div id="topbar">
                <div class="wrapper clearafter"> <?php echo $language; ?> <?php echo $currency; ?>
                    <div class="links"> <a href="<?php echo $wishlist; ?>" id="wishlist-total"><i class="icon-heart" style="margin-right:6px; font-size:15px;"></i><?php echo $text_wishlist; ?></a> <a href="<?php echo $account; ?>" ><i class="icon-user" style="margin-right:6px;font-size:15px;"></i><?php echo $text_account; ?></a> <a href="<?php echo $shopping_cart; ?>" ><i class="icon-shopping-cart" style="margin-right:6px;font-size:15px;"></i><?php echo $text_shopping_cart; ?></a> <a href="<?php echo $checkout; ?>" ><i class="icon-briefcase" style="margin-right:6px;font-size:15px;"></i><?php echo $text_checkout; ?></a> </div>
                    <div id="welcome">
                        <?php if (!$logged) { ?>
                        <?php echo $text_welcome; ?>
                        <?php } else { ?>
                        <?php echo $text_logged; ?>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div id="toppanel">
                <div class="wrapper clearafter">
                    <?php if ($logo) { ?>
                    <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
                    <?php } ?>
                    <?php echo $cart; ?>
                    <div id="search">
                        <div id="search-inner">
                            <div class="button-search icon-search"></div>
                            <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
                        </div>
                    </div>
                </div>
            </div>
            <?php if ($categories) { ?>
            <div id="menu">
                <div class="wrapper">
                    <ul class="mainmenu">
                        <div class="menu">
                            <ul>
                                <li class="homeico" style=" background:#<?php echo $this->config->get('lt_menuhomebuttoncolor'); ?>;"><a href="#"><i class="icon-home homeicotxt" style="line-height:14px;"></i></a></li>
                                <?php foreach ($categories as $category) { ?>
                                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                    <?php if ($category['children']) { ?>
                                    <div>
                                        <?php for ($i = 0; $i < count($category['children']);) { ?>
                                        <ul>
                                            <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                            <?php for (; $i < $j; $i++) { ?>
                                            <?php if (isset($category['children'][$i])) { ?>
                                            <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                                            <?php } ?>
                                            <?php } ?>
                                        </ul>
                                        <?php } ?>
                                    </div>
                                    <?php } ?>
                                </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </ul>
                </div>
            </div>
            <?php } ?>

            <!-- Begin menu-mobile //-->
            <?php if ($categories) { ?>
            <div id="menu-mobile">
                <div id="menu-mobile-nav">
                    <ul>
                        <?php foreach ($categories as $category) { ?>
                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a> </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
            <?php } ?>
            <!-- End menu-mobile //--> 

        </div>
      <?php if ($this->config->get('config_maintenance')) { } else { foreach ($modules as $module) { ?>
<?php echo $module; ?>
<?php } } ?>
<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
        <div id="notification-fixed">
            <div id="notification"></div>
        </div>
        <div id="container">
            <div id="container-inner" class="wrapper clearafter">
                <?php if ($this->config->get('socialfeeds_status') == '1') { ?>
                <?php if ($this->config->get('facebook_status') == '1') { ?>
                <div class="TVBFacebookplikebox">
                    <div id="Facebookplikebox" style="display:none;">
                        <div class="Facebookplbadge"></div>
                        <div style="border:none; overflow:hidden; width:250px; height:270px;background:#ffffff; color:#000; border:1px solid #ccc; border-right:none; z-index:99999;">
                            <div class="facebook-like-box">
                                <?php $c= urlencode($this->config->get('facebook_link')); ?>
                                <iframe src="//www.facebook.com/plugins/likebox.php?href=<?php echo $c; ?>&amp;width=185&amp;height=300&amp;show_faces=true&amp;colorscheme=light&amp;stream=false&amp;border_color&amp;header=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:250px; height:260px;" allowTransparency="true"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <?php if ($this->config->get('twitter_column_status') == '1') { ?>
                <div class="TVCtwitterbox">
                    <div id="twiiterbox" style="display:none;">
                        <div class="twittericon"></div>
                        <div style="border:none; overflow:hidden; width:230px; height:270px;background:#ffffff; color:#000; border:1px solid #ccc; border-right:none;z-index:99999; padding:0 10px;">
                            <div class="block twitter"><a class="twitter-timeline" data-theme="dark" data-chrome="transparent noborders noheader nofooter noscrollbar" width="350" height="245" data-dnt="true" href="" data-widget-id="<?php echo $this->config->get('twitter_widgetid'); ?>"></a> 
                                <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore (js,fjs);}}(document,"script","twitter-wjs");</script> 
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <?php if($this->config->get('contact_status') == "1") { ?>
                <div class="TVRcontactbox">
                    <div id="contactbox" style="display:none;">
                        <div class="contacticon"></div>
                        <div style="border:none; overflow:hidden; width:230px; height:200px;background:#ffffff; color:#000; border:1px solid #ccc; border-right:none;z-index:99999; padding:0 10px;">
                            <h3><?php echo $this->config->get('contact_title');?></h3>
                            <ul class="cobst">
                                <?php if($this->config->get('store_name_show') == "1") { ?>
                                <li><span class="store-icon"><?php echo $this->config->get('store_name');?></span></li>
                                <?php } ?>
                                <?php if($this->config->get('store_address_show') == "1") { ?>
                                <li><span class="location-icon"><?php echo $this->config->get('store_address');?></span></li>
                                <?php } ?>
                                <?php if($this->config->get('store_phone_show') == "1") { ?>
                                <li><span class="phone-icon"><?php echo $this->config->get('store_phone');?></span></li>
                                <?php } ?>
                                <?php if($this->config->get('store_email_show') == "1") { ?>
                                <li><span class="mail-icon"><a href="mailto:<?php echo $this->config->get('store_email');?>" style="color:#000;"><?php echo $this->config->get('store_email');?></a></span></li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <?php if ($this->config->get('youtube_iframecode_status') == '1') { ?>
                <div class="TVWyoutubebox">
                    <div id="youtubebox" style="display:none;">
                        <div class="youtubeicon"></div>
                        <div style="border:none; overflow:hidden; width:420px; height:315px;background:#ffffff; color:#000; border:1px solid #ccc; border-left:none;z-index:99999;">
                            <?php  $y=html_entity_decode($this->config->get('youtube_iframecode')); echo $y;  ?>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <?php if ($this->config->get('custom_footer_column_status') == '1') { ?>
                <div class="TVAcustombox">
                    <div id="custombox" style="display:none;">
                        <div class="customicon"></div>
                        <div style="border:none; overflow:hidden; width:230px; height:270px;background:#ffffff; color:#000; border:1px solid #ccc; border-left:none;z-index:99999; padding:0 10px;">
                            <h3><?php echo $this->config->get('custom_header_text'); ?></h3>
                            <p class="abou"><?php echo html_entity_decode($this->config->get('custom_columndescription')); ?></p>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <?php } ?>
