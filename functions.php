<?php

function patrios_child_scripts() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri(). '/style.css' );
}
add_action( 'wp_enqueue_scripts', 'patrios_child_scripts' );

/*페이지에서 빈 p태그 방지*/
function remove_empty_p(){
	if(is_page()||is_product()){
		remove_filter('the_content', 'wpautop');
	}
}
add_action('wp_head', 'remove_empty_p');

include 'wp-crowdfunding-custom.php';



