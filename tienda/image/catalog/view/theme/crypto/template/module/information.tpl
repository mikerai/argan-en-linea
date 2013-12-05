<div class="box">
  <div class="box-heading informa"><span><?php echo $heading_title; ?></span></div>
  <div class="box-content">
    <ul class="treemenu">
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><span><?php echo $information['title']; ?></span></a></li>
      <?php } ?>
      <li><a href="<?php echo $contact; ?>"><span><?php echo $text_contact; ?></span></a></li>
      <li><a href="<?php echo $sitemap; ?>"><span><?php echo $text_sitemap; ?></span></a></li>
    </ul>
  </div>
</div>
