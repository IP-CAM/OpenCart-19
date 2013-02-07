<script type="text/javascript"><!--
$(function(){$("#quantity").parent().children().css("vertical-align","middle")});function btnminus(a){document.getElementById("quantity").value>a?document.getElementById("quantity").value--:document.getElementById("quantity").value=a}function btnplus(){document.getElementById("quantity").value++};
//--></script>
<div id="footer">
  <?php if ($informations) { ?>
  <div class="column">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <?php } ?>
  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                  <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
</div>

</div><div style="text-align:center;"><p>Railroad Bazaar is an authorized retailer for the following brands:</p>
<ul style="list-style-type:none; display:inline-block;padding-left:5px;">
<li style="display:inline;"><img src="http://www.railroadbazaar.com/shop/image/data/logos/Fender-8845.png" /></li>
<li style="display:inline;"><img src="http://www.railroadbazaar.com/shop/image/data/logos/Dean-8845.png" /></li>
<li style="display:inline;"><img src="http://www.railroadbazaar.com/shop/image/data/logos/Peavey-8845.png" /></li>
<li style="display:inline;"><img src="http://www.railroadbazaar.com/shop/image/data/logos/Martin-8845.png" /></li>
</ul>
</div><div style="text-align:center;padding-top:5px;font-size:.8em">
  <p>© 2013 Railroad Bazaar. All Rights Reserved.</p>
© Copyright 2013 FMIC. Fender®, Stratocaster®, Strat®, Telecaster®, Tele®, Precision Bass®, P Bass®, Jazz Bass®, J Bass®, and the distinctive headstock designs commonly found on these guitars are trademarks of Fender Musical Instruments Corporation. All rights reserved.<p>Prices subject to change without notice.</p></div>
</body></html>
