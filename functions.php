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



//체크아웃페이지 필드
add_filter( 'woocommerce_checkout_fields' , 'custom_override_checkout_fields' );
function custom_override_checkout_fields( $fields ) {
	unset($fields['billing']['billing_last_name']);
	unset($fields['billing']['billing_company']);
	unset($fields['billing']['billing_city']);
	unset($fields['billing']['billing_country']);
	unset($fields['billing']['billing_state']);
	return $fields;
}

add_filter( 'woocommerce_default_address_fields', 'custom_move_checkout_fields' );
function custom_move_checkout_fields( $fields ) {

	// default priorities:  기본 우선순위
	// 'first_name' - 10  (이름)
	// 'last_name' - 20  (성)
	// 'company' - 30 (회사명)
	// 'country' - 40 (국가)
	// 'address_1' - 50 (집 번호 또는 거리명)
	// 'address_2' - 60 (아파트, 동, 호수 기타)
	// 'city' - 70 (기본 주소)
	// 'state' - 80 (주)
	// 'postcode' - 90 (우편번호)

	// 예: '회사명'을 '이름'위로 이동
	// 10보다 낮은 우선순위를 지정하면 됩니다
	$fields['postcode']['priority'] = 45;

	return $fields;
}
