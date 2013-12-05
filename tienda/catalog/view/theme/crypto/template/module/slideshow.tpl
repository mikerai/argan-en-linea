<div class="silderbanner">
<div id="flexslideshow<?php echo $module; ?>" class="flexslider">
  <ul class="slides">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <li><a href="<?php echo $banner['link']; ?>"> <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="slide_img" /> </a> </li>
    <?php } else { ?>
    <li> <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="slide_img" /> </li>
    <?php } ?>
    <?php } ?>
  </ul>
</div>
<script type="text/javascript">
  $(window).load(function() {
    $('#flexslideshow<?php echo $module; ?>').flexslider({
          animation: "fade",
		  pauseOnHover: true,
		  touch: true,
		  animationSpeed: 1300,
		  slideshowSpeed: 6500,
		  smoothHeight: false,
		  controlNav: false,
          directionNav: true
    });
  });
</script> 

</div>
