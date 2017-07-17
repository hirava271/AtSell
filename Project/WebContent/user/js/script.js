 /**
  * $Desc
  *
  * @version    $Id$
  * @package    wpbase
  * @author     WPOpal  Team <wpopal@gmail.com, support@wpopal.com>
  * @copyright  Copyright (C) 2014 wpopal.com. All Rights Reserved.
  * @license    GNU/GPL v2 or later http://www.gnu.org/licenses/gpl-2.0.html
  * @addition this license does not allow theme provider using in themes to sell on marketplaces.
  * 
  * @website  http://www.wpopal.com
  * @support  http://www.wpopal.com/support/forum.html
  */
jQuery(document).ready(function($){
	$( '.filter-option' ,"#ptsinfiniteproducts").click( function(){
		$( '.filter-option' ,"#ptsinfiniteproducts").parent().removeClass( 'active' );
		$(this).parent().addClass( 'active' );
		if( $(this).data('option') == 'all' ) {
			$(".ptsinfiniteproducts_item").show();  
		}else {
			$(".ptsinfiniteproducts_item").hide();
	        $('[data-'+$(this).data('option')+'=1]').show();
		}
	});
	
	$('#loadmore_product').click(function(){
		$(this).addClass('pts-loading');
		$(this).parent().addClass('process-ajax');
		var page = parseInt($(this).attr('data-page')) + 1;

		$.ajax({
			type: "POST",
			url: ajaxcontent_url,
			data: { 
				page: page,
				ajax: 1
			}
		}).done(function( html ) {
			$('#loadmore_product').parent().removeClass('process-ajax');
			$('#loadmore_product').removeClass('pts-loading');
			$('#loadmore_product').attr('data-page', page);
			$('#product_infinite_content').append(html);
		});
	});
});

