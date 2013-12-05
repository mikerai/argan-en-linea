<?php echo $header; ?>
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>

      <?php if ($thumb || $description) { ?>
      <?php if ($thumb) { ?>
      <div class="image" style="margin-top:10px;"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
      <?php } ?>
      <?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="box">
    <div class="category-info clearafter">
      <h1><span><?php echo $heading_title; ?></span></h1>
      <?php if ($thumb || $description) { ?>

      <?php if ($description) { ?>
      <?php echo $description; ?>
      <?php } ?>
      <?php } ?>
    </div>
    <?php if ($categories) { ?>
    <div class="category-list clearafter">
      <?php if (count($categories) <= 5) { ?>
      <ul>
        <?php foreach ($categories as $category) { ?>
        <li><?php if ($category['catimg']) { ?>
            <a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['catimg']; ?>" title="<?php echo $category['name']; ?>" alt="<?php echo $category['name']; ?>" /></a>
          <?php } else { ?>
          <a href="<?php echo $category['href']; ?>"> <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/cat_not_found.png" title="<?php echo $category['name']; ?>" alt="<?php echo $category['name']; ?>" /></a>
          
          <?php } ?><a class="cate" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
      </ul>
      <?php } else { ?>
      <?php for ($i = 0; $i < count($categories);) { ?>
      <ul>
        <?php $j = $i + ceil(count($categories) / 4); ?>
        <?php for (; $i < $j; $i++) { ?>
        <?php if (isset($categories[$i])) { ?>
        <li><?php if ($categories[$i]['catimg']) { ?>
         <a href="<?php echo $categories[$i]['href']; ?>"> <img src="<?php echo $categories[$i]['catimg']; ?>" title="<?php echo $categories[$i]['name']; ?>" alt="<?php echo $categories[$i]['name']; ?>" /> </a>
          <?php } else { ?>
          <a href="<?php echo $categories[$i]['href']; ?>"> <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/cat_not_found.png" title="<?php echo $categories[$i]['name']; ?>" alt="<?php echo $categories[$i]['name']; ?>" /></a>
          
          <?php } ?><a class="cate" href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
      <?php } ?>
      <?php } ?>
    </div>
    <?php } ?>
    <?php if ($products) { ?>
    <div class="product-filter clearafter">
      <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><i class="icon-bar-chart iconcomprd"></i><?php echo $text_compare; ?></a></div>
      <div class="limit"><?php echo $text_limit; ?>
        <select onchange="location = this.value;">
          <?php foreach ($limits as $limits) { ?>
          <?php if ($limits['value'] == $limit) { ?>
          <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
      <div class="sort"><?php echo $text_sort; ?>
        <select onchange="location = this.value;">
          <?php foreach ($sorts as $sorts) { ?>
          <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
          <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
    </div>
    <div class="product-grid">
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
              <div id="Catefory<?php echo $product['product_id']; ?><?php echo $module; ?>"></div>
              <script type="text/javascript">
					$(function () {	
						$('#Catefory<?php echo $product['product_id']; ?><?php echo $module; ?>').countdown({until: new Date(<?php echo $product['date_end']; ?>), compact: false});
					});
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
    <div class="pagination"><?php echo $pagination; ?></div>
    <?php } ?>
    <?php if (!$categories && !$products) { ?>
    <div class="content">
      <p><?php echo $text_empty; ?></p>
    </div>
    <div class="buttons">
      <div class="right"><a href="<?php echo $continue; ?>" class="button"><i class="icon-share-alt che"></i><?php echo $button_continue; ?></a></div>
    </div>
    <?php } ?>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>