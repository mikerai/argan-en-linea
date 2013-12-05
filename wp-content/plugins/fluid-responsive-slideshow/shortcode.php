<?php


add_action('wp_enqueue_scripts', 'pjc_jq_scripts', 10000);


function pjc_jq_scripts() {

	wp_enqueue_script('jquery');

	$file = dirname(__FILE__) . '/Fluid-Responsive-Slideshow.php';
	$plugin_url = plugin_dir_url($file);
	$orbit_js = $plugin_url . "js/jquery.orbit-1.2.3.js";
	$orbit_css = $plugin_url . "css/orbit-1.2.3.css";
	$pjc_slideshow_css = $plugin_url . "css/fluid-responsive-slideshow.css";
	

	wp_enqueue_style('carousel_frs', $orbit_css);

	wp_enqueue_style('fluid-responsive-slideshow', $pjc_slideshow_css);
	wp_enqueue_script('fluid-responsive-slideshow', $orbit_js);

	global $is_IE;


	if ( $is_IE ) {
	    wp_enqueue_style( 'tonjoo_frs_ie', plugins_url("Fluid-Responsive-Slideshow/css/ie.css") );
	}
	
}

add_shortcode('pjc_slideshow', 'pjc_gallery_print');

function pjc_gallery_print($attr) {

	$current = $attr['slide_type'];

	 require (plugin_dir_path(__FILE__) . 'default-options.php');


	 if(!$options[$current]['skin'])
	 	$options[$current]['skin']="default";

	 $skin = plugins_url("skins/{$options[$current]['skin']}.css" , __FILE__ );



	if (!$attr) {
		extract(shortcode_atts(array('slide_type' => 'empty', ), $attr));
	}

	/*
	 * Check if taxonomy exist
	 */

	if ($attr['slide_type'] == "empty" || !term_exists($attr['slide_type'])) :

		return "<span style='padding:5px;margin:10px;background-color:#FF5959;color:white'>You must provide the correct slide type on the [pjc_slideshow slide_type='your_slide_type'] shortcode</span>";
	else :

		

		

		if ($options[$current]['fade_time'] == '0') {
			$options[$current]['timer'] = "false";
		} else {
			$options[$current]['timer'] = "true";
		}

		$attr['slide_type'] = $attr['slide_type'];
		$attr['slide_type_id'] = $attr['slide_type'] . "pjc";



		if($options[$current][show_textbox]=="true"){
			$textbox_style ="
			#$attr[slide_type_id]wrap .orbit-caption{
		    	height:{$options[$current][textbox_height]}px;
		    	text-align:justify;
		    }";
		}

		if($options[$current][is_fluid]=="true"){
			$slideshow_width ="
			#$attr[slide_type_id] {
		 		width:100%;		
			}
			#$attr[slide_type_id]wrap{
			 	width:100%;	
			 	margin-left:auto;
			 	margin-right:auto;
			}

			#$attr[slide_type_id]wrap img{
				width:100%;
			}

			";


		}

		else{
			$slideshow_width ="
			#$attr[slide_type_id] {
		 		max-width:{$options[$current][width]}px;		
			}
			#$attr[slide_type_id]wrap{
			 	max-width:{$options[$current][width]}px;
			 	margin-left:auto;
			 	margin-right:auto;
			}";
		}
		
		
		
		$javascript = "
		<!-- Slideshow generated using Fluid-Responsive-Slideshow, http://www.tonjoo.com/wordpress-plugin-fluid-responsive-slideshow-plugin/ -->
		<script>
			jQuery(document).ready(function($) {
		
						jQuery('#{$attr[slide_type_id]}').orbit({
							animation : '{$options[$current][animation]}', // fade, horizontal-slide, vertical-slide, horizontal-push
							animationSpeed :  {$options[$current][animation_time]}, // how fast animtions are
							timer :  true, // true or false to have the timer
							advanceSpeed :   {$options[$current][fade_time]}, // if timer is enabled, time between transitions
							pauseOnHover : {$options[$current][pause]}, // if you hover pauses the slider
							startClockOnMouseOut :  {$options[$current][start_mouseout]}, // if clock should start on MouseOut
							startClockOnMouseOutAfter :  {$options[$current][start_mouseout_after]}, // how long after MouseOut should the timer start again
							directionalNav :  {$options[$current][navigation]}, // manual advancing directional navs
							captions : true, // do you want captions?
							captionAnimation : 'fade', // fade, slideOpen, none
							captionAnimationSpeed : 800, // if so how quickly should they animate in
							bullets :  {$options[$current][bullet]}, // true or false to activate the bullet navigation
							bulletThumbs : true, // thumbnails for the bullets
							bulletThumbLocation : '', // location from this file where thumbs will be
							navigationSmallTreshold:  {$options[$current][small_navigation_treshold]},
							navigationSmall:   {$options[$current][small_navigation]},
							skinClass: '{$options[$current]['skin']}'
						});
					
			})
		
		</script>
		<!--[if lt IE 9]>
			<style type='text/css'>
			#$attr[slide_type_id]wrap  .timer { display: none !important; }
			#$attr[slide_type_id]wrap  div.caption { background:transparent; filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,endColorstr=#99000000);zoom: 1; }
			</style>
		<![endif]-->
		";

		if($options[$current][show_timer]=="false"){
			$timer ="#$attr[slide_type_id]wrap  .timer { display: none !important; }";
		}
		
		/*
		 * Get the slide
		 */
			
			
		$condition  = array('orderby' => 'tonjoo_frs_order_number meta_value_num',
							'order' => 'ASC',
							'meta_key' => 'tonjoo_frs_order_number',
							'slide_type' => $attr['slide_type'],
							'posts_per_page'=>-1);
			
	    $query = new WP_Query( $condition);  
	    $i =1;
	    global $post;
	    $slide="";
	    
    	while ( $query->have_posts() ) : $query->the_post();
    		 $postmeta = get_post_meta($post->ID, 'tonjoo_frs_meta',true);
			$thumb = wp_get_attachment_image_src( get_post_thumbnail_id(),'original');
			$url = $thumb['0'];
			$href =  $postmeta['href'];

	



			if($i==1){
				$slide .= "<div data-caption='#caption{$attr[slide_type_id]}$i' class='first-slide'>";

				if($href!="")
	        		$slide .= "<a title='$href' href='$href' ><img src=".$url." /></a>";    
	        	else
	        		$slide .= "<img src=".$url." />";         
				$slide .= "</div>";
			}
			else{
				if($href!="")
					$slide .= "<div data-caption='#caption{$attr[slide_type_id]}$i' class='pjc-preload' ><a title='$href' href='$href'   ><img src='$url' alt='' /></a></div>";           
				else
					$slide .= "<div data-caption='#caption{$attr[slide_type_id]}$i' class='pjc-preload' ><img  src='$url' alt='' /></div>";           

			}
	       $i+=1;
        endwhile; //end get slide
 
        if($options[$current]['skin']=='modern'){
        	$i=$i-1;
			$li_width= 100/$i;
			$li_width = round($li_width,10);

	        $li="
        	#$attr[slide_type_id]wrap  li.pjc-slideshow-navbullets{
        		width:$li_width%;
    		}

	        ";
        }
        

        $style="
		<link rel='stylesheet' href='$skin' type='text/css'>

		<style>
		$timer
		$li
		$slideshow_width
		$textbox_style
		

		#$attr[slide_type_id] .orbit-wrapper .orbit-caption {
				display:none;
			}

		#$attr[slide_type_id]wrap .orbit-caption h4{
			font-size:{$options[$current][textbox_h4_size]}px;
		    margin:0px;
		    padding:3px {$options[$current][textbox_padding]}px;
		
		}
		#$attr[slide_type_id]wrap .orbit-caption p{
		    margin:0px;
		    padding:0px {$options[$current][textbox_padding]}px;
		
		    font-size:{$options[$current][textbox_p_size]}px;
		}
		
		#$attr[slide_type_id]wrap div.slider-nav span{
		    top:{$options[$current][arrow_position]};
		}
		</style>
		";
      
		



		if($options[$current][show_textbox]=="false"){
			$caption="";
		}
		else{
			/*
			 * Get caption of the slide
			 */
			 $caption="";
			 $query = new WP_Query( $condition );  
		     $i =1;

		     while ( $query->have_posts() ) : $query->the_post();

			 	  $postmeta = get_post_meta($post->ID, 'tonjoo_frs_meta',true);

			
				  if($postmeta['show_text']=='true'){
					  $class_name = "caption".$attr['slide_type_id'].$i;
						
				      $caption .= "<span class='orbit-caption ' id='".$class_name."' >";                   
				    
				       
				      $caption .=  "<h4>{$post->post_title}</h4>";
				      $caption .=  "<p>{$post->post_content}</p>";
				              
				      
					  $title_color = $postmeta['title_color'];
					  $textcolor = $postmeta['text_color'];
					    
				      $caption .= "</span>     
				    
				     <style>
				         #$class_name  h4{
				        	color:$title_color
				        }
				        
				        #$class_name  p{
				        	color: $textcolor
				        }
				     </style>";
				 }
			    $i+=1;
			endwhile; // end get caption
		}



		
		$html ="
		<div class='pjc-slideshow-container'>
			<div class='featured' id='{$attr[slide_type_id]}'>
			$slide
			</div>
			$caption
		</div>
		
	

		
		";

		wp_reset_query(); // restore main query 
		
		$shortcode = $style.$javascript.$html;
		
		
		return $shortcode;
	endif;
}
