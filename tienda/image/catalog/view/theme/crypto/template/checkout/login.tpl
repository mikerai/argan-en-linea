<div class="left">
  <h2><?php echo $text_new_customer; ?></h2>
  <div class="content">
  <p><strong><?php echo $text_checkout; ?></strong></p>
  <p>
  <label for="register">
    <?php if ($account == 'register') { ?>
    <input type="radio" name="account" value="register" id="register" checked="checked" />
    <?php } else { ?>
    <input type="radio" name="account" value="register" id="register" />
    <?php } ?>&nbsp;
    <strong><?php echo $text_register; ?></strong>
  </label>
  </p>
  <?php if ($guest_checkout) { ?>
  <p>
  <label for="guest">
    <?php if ($account == 'guest') { ?>
    <input type="radio" name="account" value="guest" id="guest" checked="checked" />
    <?php } else { ?>
    <input type="radio" name="account" value="guest" id="guest" />
    <?php } ?>&nbsp;
    <strong><?php echo $text_guest; ?></strong>
  </label>
  </p>
  <?php } ?>
  <p><?php echo $text_register_account; ?></p>
  </div>
  <div class="buttons">
  <div class="right">
  <i class="icon-share-alt prdadd" style="margin-top:21px;"></i> <input type="button" value="<?php echo $button_continue; ?>" id="button-account" class="icon-forward-white button" />
  </div>
  </div>
</div>
<div id="login" class="right">
  <h2><?php echo $text_returning_customer; ?></h2>
  <div class="content">
  <p class="clearafter"><strong><?php echo $text_i_am_returning_customer; ?></strong></p>
  <p class="clearafter"><strong><?php echo $entry_email; ?></strong><input type="text" name="email" value="" /></p>
  <p class="clearafter"><strong><?php echo $entry_password; ?></strong><input type="password" name="password" value="" /></p>
  </div>
  <div class="buttons">
  <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
  <div class="right">
   <i class="icon-shopping-cart prdadd" style="margin-top:21px;"></i><input type="button" value="<?php echo $button_login; ?>" id="button-login" class="icon-lock-white button" />
  </div>
  </div>
</div>