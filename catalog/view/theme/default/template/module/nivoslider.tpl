<div class="slideshow">
  <div id="nivoslider<?php echo $module; ?>" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
</div>
<script type="text/javascript">
	$(document).ready(function() 
	{
			//var filter = $slide_startSlide;
		
			$('#nivoslider<?php echo $module; ?>').nivoSlider({
			effect:'<?php  echo$display_soption; ?>', // Specify sets like: 'fold,fade,sliceDown'
			slices: <?php echo $slide_slices; ?>, // For slice animations
			boxCols: <?php echo $slide_boxCols; ?>, // For box animations
			boxRows: <?php echo $slide_boxRows; ?>, // For box animations
			animSpeed: <?php echo $slide_animSpeed; ?>, // Slide transition speed
			pauseTime: <?php echo $slide_pauseTime; ?>, // How long each slide will show
			startSlide: <?php echo $slide_startSlide; ?>
			
	   })
	});
</script>
