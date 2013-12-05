<div class="box">
  <div class="box-heading affili"><span><?php echo $heading_title; ?></span></div>
  <div class="box-content">
    <ul class="treemenu">
      <?php if (!$logged) { ?>
      <li><a href="<?php echo $login; ?>"><span><?php echo $text_login; ?></span></a></li>
	  <li><a href="<?php echo $register; ?>"><span><?php echo $text_register; ?></span></a></li>
      <li><a href="<?php echo $forgotten; ?>"><span><?php echo $text_forgotten; ?></span></a></li>
      <?php } ?>
      <li><a href="<?php echo $account; ?>"><span><?php echo $text_account; ?></span></a></li>
      <?php if ($logged) { ?>
      <li><a href="<?php echo $edit; ?>"><span><?php echo $text_edit; ?></span></a></li>
      <li><a href="<?php echo $password; ?>"><span><?php echo $text_password; ?></span></a></li>
      <?php } ?>
      <li><a href="<?php echo $payment; ?>"><span><?php echo $text_payment; ?></span></a></li>
      <li><a href="<?php echo $tracking; ?>"><span><?php echo $text_tracking; ?></span></a></li>
      <li><a href="<?php echo $transaction; ?>"><span><?php echo $text_transaction; ?></span></a></li>
      <?php if ($logged) { ?>
      <li><a href="<?php echo $logout; ?>"><span><?php echo $text_logout; ?></span></a></li>
      <?php } ?>
    </ul>
  </div>
</div>
