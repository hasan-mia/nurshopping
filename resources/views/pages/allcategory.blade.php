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
  $en = array("red", "blue", "green", "black", "white", "yellow", "pink", "gray", "navyblue", "ash", "NoColor");
  $bn = array("লাল", "ব্লু", "সবুজ", "কালো", "সাদা", "হলুদ", "গোলাপি", "ছাই", "নেভিব্লু", "এ্যাশ", "কোন রং নেই");

 return str_replace($en, $bn, $color);
}

function SizeBn($size) {
  $en = array("S", "L", "M", "XL", "XXL", "XXXL", "Free Size");
  $bn = array("এস", "এল", "এম", "এক্স এল", "ডবল এক্স এল", "ট্রিপল এক্স এল", "ফ্রি সাইজ");

 return str_replace($en, $bn, $size);
}


$category = DB::table('categories')->get();

@endphp

<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/shop_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/shop_responsive.css') }}">

	<div class="home">
		<div class="home_overlay"></div>
		<div class="home_content d-flex flex-column align-items-center justify-content-center">
			<h2 class="home_title"> সব ক্যাটাগরি </h2>
		</div>
	</div>

    <div class="container">
        <div class="row my-4">
          @foreach($category as $cat)
          <div class="col-lg-2 col-md-2 col-sm-6 col-6">
            <a href="{{ url('allcategory/'.$cat->id) }}" class="">
              <div class="category-item">
                  <div class="category-item__image">
                    <img src="https://storage.googleapis.com/bponi/shop/5c83731f-f52e-4ec8-a181-5d31b5660b89.webp" alt="">
                  </div>
                <div class="category-item__title">{{ $cat->category_name  }}</div>
              </div>
            </a>
          </div>
          @endforeach
      </div>
    </div>

@endsection
