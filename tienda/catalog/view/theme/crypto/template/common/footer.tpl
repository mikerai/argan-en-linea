</div>
</div>
<?php if($this->config->get('customfootericonblock_status') == "1") {  ?>

<div id="footertop">
  <div class="wrapper clearafter">
    <div class="footer-payment-service ">
      <?php 
                $spanvaluecalc = $this->config->get('icon1show')+$this->config->get('icon2show')+$this->config->get('icon3show')+$this->config->get('icon4show')+$this->config->get('icon5show');
                
                
                ?>
      <?php if ($this->config->get('icon1show') == "1") { ?>
      <div class="span<?php echo $spanvaluecalc; ?>"> <i class="<?php echo $this->config->get('icon1'); ?> icon-3x "></i><span><?php echo $this->config->get('icontext1'); ?></span> </div>
      <?php } ?>
      <?php if ($this->config->get('icon2show') == "1") { ?>
      <div class="span<?php echo $spanvaluecalc; ?>"> <i class="<?php echo $this->config->get('icon2'); ?> icon-3x "></i><span><?php echo $this->config->get('icontext2'); ?></span> </div>
      <?php } ?>
      <?php if ($this->config->get('icon3show') == "1") { ?>
      <div class="span<?php echo $spanvaluecalc; ?>"> <i class="<?php echo $this->config->get('icon3'); ?> icon-3x "></i><span><?php echo $this->config->get('icontext3'); ?></span> </div>
      <?php } ?>
      <?php if ($this->config->get('icon4show') == "1") { ?>
      <div class="span<?php echo $spanvaluecalc; ?>"> <i class="<?php echo $this->config->get('icon4'); ?> icon-3x "></i><span><?php echo $this->config->get('icontext4'); ?></span> </div>
      <?php } ?>
      <?php if ($this->config->get('icon5show') == "1") { ?>
      <div class="span<?php echo $spanvaluecalc; ?>"> <i class="<?php echo $this->config->get('icon5'); ?> icon-3x "></i><span><?php echo $this->config->get('icontext5'); ?></span> </div>
      <?php } ?>
    </div>
  </div>
</div>
<?php } ?>
<div id="footer">
  <div class="wrapper clearafter">
    <?php if ($informations) { ?>
    <div class="column grid-4">
      <h3><?php echo $text_information; ?></h3>
      <ul>
        <?php foreach ($informations as $information) { ?>
        <li><i class="icon-angle-right"></i><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
    <?php } ?>
    <div class="column grid-4">
      <h3><?php echo $text_service; ?></h3>
      <ul>
        <li><i class="icon-angle-right"></i><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        <li><i class="icon-angle-right"></i><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        <li><i class="icon-angle-right"></i><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      </ul>
    </div>
    <div class="column grid-4">
      <h3><?php echo $text_extra; ?></h3>
      <ul>
        <li><i class="icon-angle-right"></i><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
        <li><i class="icon-angle-right"></i><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
       <!-- <li><i class="icon-angle-right"></i><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li> -->
        <li><i class="icon-angle-right"></i><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
      </ul>
    </div>
    <div class="column grid-4">
      <h3><?php echo $text_account; ?></h3>
      <ul>
        <li><i class="icon-angle-right"></i><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
        <li><i class="icon-angle-right"></i><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
        <li><i class="icon-angle-right"></i><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
        <li><i class="icon-angle-right"></i><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </ul>
    </div>
    <?php if($this->config->get('social_status') == "1") { ?>
    <div class="column grid-4">
      <h3>Síguenos en redes sociales</h3>
      <ul class="social-icon clearfix">
        <?php if ($this->config->get('socialnetworkicons_footer_facebook_show') == "1") { ?>
        <li class="facebook"> <a href="<?php echo $this->config->get('socialnetworkicons_footer_facebook');?>"></a> </li>
        <?php } ?>
        <?php if ($this->config->get('socialnetworkicons_footer_twitter_show') == "1") { ?>
        <li class="twitter"> <a href="<?php echo $this->config->get('socialnetworkicons_footer_twitter');?>"> </a> </li>
        <?php } ?>
        <?php if ($this->config->get('socialnetworkicons_footer_pinterest_show') == "1") { ?>
        <li class="pinterest"> <a href="<?php echo $this->config->get('socialnetworkicons_footer_pinterest');?>"></a> </li>
        <?php } ?>
        <?php if ($this->config->get('socialnetworkicons_footer_gplus_show') == "1") { ?>
        <li class="gplus"> <a href="<?php echo $this->config->get('socialnetworkicons_footer_gplus');?>"> </a> </li>
        <?php } ?>
        <?php if ($this->config->get('socialnetworkicons_footer_rss_show') == "1") { ?>
        <li class="rss"> <a href="<?php echo $this->config->get('socialnetworkicons_footer_rss');?>"> </a> </li>
        <?php } ?>
        <?php if ($this->config->get('socialnetworkicons_footer_dribbble_show') == "1") { ?>
        <li class="dribbble"> <a href="<?php echo $this->config->get('socialnetworkicons_footer_dribbble');?>"></a> </li>
        <?php } ?>
        <?php if ($this->config->get('socialnetworkicons_footer_forrst_show') == "1") { ?>
        <li class="forrst"> <a href="<?php echo $this->config->get('socialnetworkicons_footer_forrst');?>"> </a> </li>
        <?php } ?>
        <?php if ($this->config->get('socialnetworkicons_footer_linkedin_show') == "1") { ?>
        <li class="linkedin"> <a href="<?php echo $this->config->get('socialnetworkicons_footer_linkedin');?>"> </a> </li>
        <?php } ?>
      </ul>
    </div>
    <?php } ?>
  </div>
</div>
<div id="powered">
  <div class="wrapper"> 
    <!-- <?php echo $powered; ?> --> 
    <!-- Please do not remove following code or we can not support you with this product ! -->
    <?php if ($this->config->get('poweredbytext_status') == "1") { ?>
    <?php $pt=html_entity_decode($this->config->get('poweredbytext'));?>
    <?php echo $pt; ?>
    <?php } else { ?>
    <?php echo $powered; ?>
    <?php } ?>
    <div class="powered-alignright">
      <?php if ($this->config->get('payment_status') == '1' ) { ?>
      <?php if ($this->config->get('checkout_show') == "1") { ?>
      <a href="<?php echo $this->config->get('checkout');?>"><span class="paymentfooter checkouts"></span></a>
      <?php } ?>
      <?php if ($this->config->get('amex_show') == "1") { ?>
      <a href="<?php echo $this->config->get('amex');?>"><span class="paymentfooter amex"></span></a>
      <?php } ?>
      <?php if ($this->config->get('cirrus_show') == "1") { ?>
      <a href="<?php echo $this->config->get('cirrus');?>"><span class="paymentfooter cirrus"></span></a>
      <?php } ?>
      <?php if ($this->config->get('delta_show') == "1") { ?>
      <a href="<?php echo $this->config->get('delta');?>"><span class="paymentfooter delta"></span></a>
      <?php } ?>
      <?php if ($this->config->get('directdebit_show') == "1") { ?>
      <a href="<?php echo $this->config->get('directdebit');?>"><span class="paymentfooter direct-debit"></span></a>
      <?php } ?>
      <?php if ($this->config->get('discover_show') == "1") { ?>
      <a href="<?php echo $this->config->get('discover');?>"><span class="paymentfooter discover"></span></a>
      <?php } ?>
      <?php if ($this->config->get('ebay_show') == "1") { ?>
      <a href="<?php echo $this->config->get('ebay');?>"><span class="paymentfooter ebay"></span></a>
      <?php } ?>
      <?php if ($this->config->get('google_show') == "1") { ?>
      <a href="<?php echo $this->config->get('google');?>"><span class="paymentfooter google"></span></a>
      <?php } ?>
      <?php if ($this->config->get('maestro_show') == "1") { ?>
      <a href="<?php echo $this->config->get('maestro');?>"><span class="paymentfooter maestro"></span></a>
      <?php } ?>
      <?php if ($this->config->get('mastercard_show') == "1") { ?>
      <a href="<?php echo $this->config->get('mastercard');?>"><span class="paymentfooter mastercard"></span></a>
      <?php } ?>
      <?php if ($this->config->get('moneybookers_show') == "1") { ?>
      <a href="<?php echo $this->config->get('moneybookers');?>"><span class="paymentfooter moneybookers"></span></a>
      <?php } ?>
      <?php if ($this->config->get('paypal_show') == "1") { ?>
      <a href="<?php echo $this->config->get('paypal');?>"><span class="paymentfooter paypal"></span></a>
      <?php } ?>
      <?php if ($this->config->get('sagepay_show') == "1") { ?>
      <a href="<?php echo $this->config->get('sagepay');?>"><span class="paymentfooter sagepay"></span></a>
      <?php } ?>
      <?php if ($this->config->get('solo_show') == "1") { ?>
      <a href="<?php echo $this->config->get('solo');?>"><span class="paymentfooter solo"></span></a>
      <?php } ?>
      <?php if ($this->config->get('switch_show') == "1") { ?>
      <a href="<?php echo $this->config->get('switch');?>"><span class="paymentfooter switch"></span></a>
      <?php } ?>
      <?php if ($this->config->get('visaelectron_show') == "1") { ?>
      <a href="<?php echo $this->config->get('visaelectron');?>"><span class="paymentfooter visa-electron"></span></a>
      <?php } ?>
      <?php if ($this->config->get('visa_show') == "1") { ?>
      <a href="<?php echo $this->config->get('visa');?>"><span class="paymentfooter visa"></span></a>
      <?php } ?>
      <?php if ($this->config->get('westernunion_show') == "1") { ?>
      <a href="<?php echo $this->config->get('westernunion');?>"><span class="paymentfooter western-union"></span></a>
      <?php } ?>
      <?php } ?>
      <?php if (unserialize($this->config->get('paymentimages_slide_image'))) {?>
      <?php foreach( unserialize($this->config->get('paymentimages_slide_image')) as $image): ?>
      <?php if ($image['url']) {?>
      <a href="<?php echo $image['url'];?>" target="_blank"><img src="<?php echo 'image/' . $image['file'];?>" alt="" width="38" height="24" class="paymentfooter" /></a>
      <?php } else { ?>
      <img src="<?php echo 'image/' . $image['file'];?>" alt="" width="38" height="24" class="paymentfooter" />
      <?php } ?>
      <?php endforeach; ?>
      <?php } ?>
    </div>
  </div>
</div>
	<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
        <?php foreach ($scripts as $script) { ?>
        <script type="text/javascript" src="<?php echo $script; ?>"></script>
        <?php } ?>
        <script type="text/javascript" src="catalog/view/theme/crypto/js/custom.js"></script>
        <script type="text/javascript" src="catalog/view/theme/crypto/js/count/jquery.countdown.js"></script>
        <script type="text/javascript" src="catalog/view/theme/crypto/js/scrolltopcontrol.js"></script>
        
         <script type="text/javascript" src="catalog/view/theme/crypto/js/flex/jquery.flexslider.js"></script>
        <script type="text/javascript" src="catalog/view/theme/crypto/stylesheet/cloud-zoom.1.0.2.min.js"></script>
        <script type="text/javascript" src="catalog/view/theme/crypto/stylesheet/jquery.easing.min.js"></script>

	<script type="text/javascript" src="catalog/view/javascript/snow.js"></script> 

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-45183632-2', 'arganenlinea.com');
  ga('send', 'pageview');

</script>

</body></html>