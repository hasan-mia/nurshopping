@extends('layouts.app')

@section('content')
@include('layouts.menubar')

@php
function en2bn($number) {
  $bn = array("১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯", "০");
  $en = array("1", "2", "3", "4", "5", "6", "7", "8", "9", "0");
 return str_replace($en, $bn, $number);
}
function ColorBn($color) {
  $en = array("red", "blue", "green", "black", "white", "yellow", "pink", "gray", "navyblue", "ash", "NoColor", "Red", "Blue", "Green", "Black", "White", "Yellow", "Pink", "Gray", "Navyblue", "Ash");
  $bn = array("লাল", "ব্লু", "সবুজ", "কালো", "সাদা", "হলুদ", "গোলাপি", "ছাই", "নেভিব্লু", "এ্যাশ", "কোন রং নেই", "লাল", "ব্লু", "সবুজ", "কালো", "সাদা", "হলুদ", "গোলাপি", "ছাই", "নেভিব্লু", "এ্যাশ");

 return str_replace($en, $bn, $color);
}

function SizeBn($size) {
  $en = array("S", "L", "M", "XL", "XXL", "XXXL", "Free Size");
  $bn = array("এস", "এল", "এম", "এক্স এল", "ডবল এক্স এল", "ট্রিপল এক্স এল", "ফ্রি সাইজ");

 return str_replace($en, $bn, $size);
}

@endphp

<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/cart_responsive.css') }}">
<style type="text/css">
.cart_section {
    width: 100%;
    padding-top: 52px;
    text-align:center;
}
</style>
	<!-- Cart -->

	<div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="cart_container">
						<div class="cart_title">আপনার পছন্দের পন্য সমূহ</div>
						<div class="cart_items">
							<ul class="cart_list">

                              @foreach($product as $row)

		<li class="cart_item clearfix">
			<div class="cart_item_image text-center"><br><img src="{{ asset($row->image_one) }} " style="width: 70px; width: 70px;" alt=""></div>
			<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
				<div class="cart_item_name cart_info_col">
					<div class="cart_item_title">নাম</div>
					<div class="cart_item_text">{{ $row->product_name  }}</div>
				</div>

				@if($row->product_color == NULL)

                @else
				<div class="cart_item_color cart_info_col">
					<div class="cart_item_title">রং</div>
					<div class="cart_item_text"> {{ ColorBn($row->product_color )}}</div>
				</div>
				 @endif


                @if($row->product_size == NULL)

                @else
                <div class="cart_item_color cart_info_col">
					<div class="cart_item_title">সাইজ</div>
					<div class="cart_item_text"> {{ SizeBn($row->product_size) }}</div>
				</div>
                @endif

                <div class="cart_item_color cart_info_col">
                    <a href="#" class="btn btn-sm btn-danger">কার্টে যোগ করুন</a>
					<!--<div class="cart_item_title">এ্যাকশন</div>-->
				</div>


			</div>
		</li>
								@endforeach
							</ul>
						</div>




					</div>
				</div>
			</div>
		</div>
	</div>


<script src="{{ asset('public/frontend/js/cart_custom.js') }}"></script>
@endsection
