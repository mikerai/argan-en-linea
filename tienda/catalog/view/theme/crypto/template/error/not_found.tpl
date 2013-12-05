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
  <div class="content"><p><?php echo $text_error; ?></p></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="icon-forward-white button"><?php echo $button_continue; ?></a></div>
  </div>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>