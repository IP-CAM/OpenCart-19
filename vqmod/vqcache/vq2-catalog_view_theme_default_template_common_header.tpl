<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php if (isset ($jqzoomloaded)) {} else { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/jqzoom/css/jquery.jqzoom.css"/>
<script type='text/javascript' src='catalog/view/javascript/jquery/jqzoom/js/jquery.jqzoom-core.js'></script>  
<?php }; $jqzoomloaded = true; ?>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
<style type="text/css" >
div.home { width: 24px; height: 24px; background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAABICAYAAADs+TUPAAABx0lEQVR42u2WTW6DMBBGcwxWkdtVjsExeoTcAm6Rk3RRdeHQ8HMEll1VlHbLBiWIeipMh2LAMeOmKLH0SYZE72Ezxl6t/lMry3JTFIVjDV5VVSaSkkuOx6MrwLxuGvThHumT17+aHEkj9yFnS4fgWCKyQ9e+8bToNPF/zxpcW2AK1xLMgU9W11z4qIQKrpRQw3uS0+m0lQuFEP7NE+yHzlRRCQar6KICmFM59Kl3ZipoFxH0b4KFClCV9IK/L3gXU2V1vY09vW3Y46tjDx58ZCzIU3IJe85cts/53ctnDYE+3CN9cglvJc1IGM/ce577EOiTwLFkvc938hokxtOik3WQe9bg2gJTuJZgDnyyuubCRyVUcKWEGt6TMJ5v5UKhgv8svPfuuYhKMFhFFxXAnLZDn3hnRgK8iKB/EyxUIKtEFbxb4V1MlSs+F3HONyKONXgURVkcxym55HA4uALOkySpIdCHe6RPLuEyciSN3IecLR2CY4n4fYdG5htPi07E/z1rcG2BKVxLMAc+WV1z4aMSKrhSQg3vScIw3MqFQgj3m3TPRVSCwSq6qADmFA2d2xC0iwj6N8FCBahKesHfF7yLqfKnJ5Evc6DmqSF5OHMAAAAASUVORK5CYII=) no-repeat scroll 0% 0% transparent; background-position: 0px -48px; cursor: pointer; float: left; margin: 7px 3px 0px 3px; }
div.home:hover { background-position: 0px -24px; }
div.home:active { background-position: 0px 0px; }
</style>
</head>
<body>
<div id="container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $language; ?>
  <?php echo $currency; ?>
  <?php echo $cart; ?>
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
  <div class="links"><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
</div>
<?php if ($categories) { ?>
<div id="menu">
  <ul>
<a alt="<?php echo $text_home; ?>" href="<?php echo $home; ?>"><div class="home"></div></a>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
<div id="notification"></div>
