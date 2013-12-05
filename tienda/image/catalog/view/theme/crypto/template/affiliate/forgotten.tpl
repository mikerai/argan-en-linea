<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="box">
 <h1><span><?php echo $heading_title; ?></span></h1>
  <div class="recover-account-content">
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <p><?php echo $text_email; ?></p>
    <h2><?php echo $text_your_email; ?></h2>
    <div class="content">
      <table class="form">
        <tr>
          <td><strong><?php echo $entry_email; ?></strong></td>
          <td><input type="text" name="email" value="" /></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
       <div class="left"><a href="<?php echo $back; ?>" class="button"><i class="icon-reply che"></i><?php echo $button_back; ?></a></div>
      <div class="right">
        <button type="submit" class="button"><i class="icon-share-alt che"></i><?php echo $button_continue; ?></button>
      </div>
    </div>
  </form>
  </div>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>