<div class="box">
  <div class="box-heading featr"><span><?php echo $heading_title; ?></span></div>
  <div class="box-grid">
    <ul id="product_list">
      <?php foreach ($products as $product) { ?>
        <li class="product_grid">
        <div class="grid_image">
          <?php if ($product['thumb']) { ?>
          <a href="<?php echo $product['href']; ?>"  class="product-image"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
          <?php if (!$product['special']) { ?>
          <?php } else { ?>
          <div class="saveribbon">Save<br />
            <?php 
              $pricenew = null;       
              $priceold = null;       
           
            $stringss = str_replace('', '-', $product['special']); 
            $pricenew = preg_replace('/[^A-Za-z0-9\-]/', '', $stringss);
          
            $stringss1 = str_replace('', '-', $product['price']); 
            $priceold = preg_replace('/[^A-Za-z0-9\-]/', '', $stringss1);
          
           $discountvalue = (1-($pricenew/$priceold))*100; 
           $discvalue = floor($discountvalue);
           echo $discvalue."%";
           ?>
          </div>
          <?php } ?>
          </a>
          <?php } ?>
          <div class="discount_timer">
            <?php if ( $product['date_end'] == '0000, 00 - 1, 00' ) { } else { ?>
            <span class="turning_clock"></span>
            <div class="count_holder_small">
              <div id="Featured<?php echo $product['product_id']; ?><?php echo $module; ?>"></div>
              <script type="text/javascript">
					$(function () {	
						$('#Featured<?php echo $product['product_id']; ?><?php echo $module; ?>').countdown({until: new Date(<?php echo $product['date_end']; ?>), compact: false});
					});
                                        <?php echo $product['date_end']; ?>
		</script> 
            </div>
            <?php } ?>
          </div>
          <div class="add_to_wishlist"> <a title="<?php echo $this->language->get('button_wishlist'); ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><i class="icon-heart icon-1x icon-mar-lr2" ></i></a> </div>
          <div class="add_to_compare"> <a title="<?php echo $this->language->get('button_compare') ?>" onclick="addToCompare('<?php echo $product['product_id']; ?>');" ><i class="icon-bar-chart icon-1x icon-mar-lr2" > </i></a> </div>
          <div class="add_to_cart"><a title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="ajax_add_to_cart_button exclusive"><i class="icon-shopping-cart icon-1x icon-mar-lr2"></i><span><?php echo $button_cart; ?></span></a></div>
        </div>
        <div class="grid_description">
          <p class="grid_title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></p>
          <div class="grid_price">
            <?php if (!$product['special']) { ?>
            <span class="price"> <?php echo $product['price']; ?></span>
            <?php } else { ?>
            <span class="old_price"><?php echo $product['price']; ?></span> <span class="price"><?php echo $product['special']; ?></span>
            <?php } ?>
          </div>
          <div class="rating_box">
            <div class="rating-box">
              <div class="rating">
                <?php if ($product['rating']) { ?>
                <img src="catalog/view/theme/crypto/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
                <?php } ?>
              </div>
            </div>
          </div>
        </div>
      </li>
      <?php } ?>
    </ul>
  </div>
  <div style="clear:both;"></div>
</div>

