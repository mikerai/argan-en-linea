<?php echo $header; ?>
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="box">
  <h1><span><?php echo $heading_title; ?></span></h1>
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
  <?php } else { ?>
  <div class="content"><p><?php echo $text_empty; ?></p></div>
  <?php } ?>
  </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('#content .box .product-grid').attr('class', 'box-product product-list');
		
		$('#content .box .product-list > div').each(function(index, element) {

			html = '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}

			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			html += '</div>';
			html += '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';

			html += '</div>';

			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';

			var rating = $(element).find('.rating').html();

			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}

			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';

			$(element).html(html);

		});		
		
		$('.display').html('<span class="icon-list-grey"><?php echo $text_list; ?></span><a class="icon-grid" onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('#content .box .product-list').attr('class', 'box-product product-grid');
		
		$('#content .box .product-grid > div').each(function(index, element) {
			html = '';

			html += '<div class="details">';

			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}

			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';
			
			html += '<div class="name" style="width: ' + <?php echo $this->config->get('config_image_product_width'); ?> + 'px">' + $(element).find('.name').html() + '</div>';

			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}

			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			$(element).html(html);
		});	
					
		$('.display').html('<a class="icon-list" onclick="display(\'list\');"><?php echo $text_list; ?></a><span class="icon-grid-grey"><?php echo $text_grid; ?></span>');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 
<?php echo $footer; ?>