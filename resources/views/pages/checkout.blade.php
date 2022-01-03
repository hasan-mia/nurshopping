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
  $en = array("red", "blue", "green", "black", "white", "yellow", "pink", "gray", "navyblue", "ash", "No Color", "Red", "Blue", "Green", "Black", "White", "Yellow", "Pink", "Gray", "Navyblue", "Ash", "no color");
  $bn = array("লাল", "ব্লু", "সবুজ", "কালো", "সাদা", "হলুদ", "গোলাপি", "ছাই", "নেভিব্লু", "এ্যাশ", "কোন রং নেই", "লাল", "ব্লু", "সবুজ", "কালো", "সাদা", "হলুদ", "গোলাপি", "ছাই", "নেভিব্লু", "এ্যাশ", "কোন রং নেই");

 return str_replace($en, $bn, $color);
}

function SizeBn($size) {
  $en = array("S", "L", "M", "XL", "XXL", "XXXL", "Free Size", "s", "l", "m", "xl", "xxl", "xxxl", "free size", "no size", "No Size");
  $bn = array("এস", "এল", "এম", "এক্স এল", "ডবল এক্স এল", "ট্রিপল এক্স এল", "ফ্রি সাইজ", "এস", "এল", "এম", "এক্স এল", "ডবল এক্স এল", "ট্রিপল এক্স এল", "ফ্রি সাইজ",  " নো সাইজ", "নো সাইজ");

 return str_replace($en, $bn, $size);
}

$setting = DB::table('settings')->first();
$charge = $setting->shipping_charge;
$vat = $setting->vat;
@endphp

<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/cart_responsive.css') }}">
	<!-- Cart -->

	<div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="cart_container">
						<div class="cart_title">চেকআউট</div>
						<div class="cart_items">
							<ul class="cart_list">

                              @foreach($cart as $row)

		<li class="cart_item clearfix">
			<div class="cart_item_image text-center"><br><img src="{{ asset($row->options->image) }} " style="width: 70px; width: 70px;" alt=""></div>
			<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
				<div class="cart_item_name cart_info_col">
					<div class="cart_item_title">নাম</div>
					<div class="cart_item_text">{{ $row->name  }}</div>
				</div>

				@if($row->options->color == NULL)

                @else
				<div class="cart_item_color cart_info_col">
					<div class="cart_item_title">রং</div>
					<div class="cart_item_text"> {{ ColorBn($row->options->color) }}</div>
				</div>
				 @endif


                @if($row->options->size == NULL)

                @else
                <div class="cart_item_color cart_info_col">
					<div class="cart_item_title">সাইজ</div>
					<div class="cart_item_text"> {{ SizeBn($row->options->size) }}</div>
				</div>
                @endif


				<div class="cart_item_quantity cart_info_col">
					<div class="cart_item_title">পরিমান</div><br>

           <form method="post" action="{{ route('update.cartitem') }}">
           	@csrf
           	<input type="hidden" name="productid" value="{{ $row->rowId }}">
           	<input type="number" name="qty" value="{{ $row->qty }}" style="width: 50px;">
           	<button type="submit" class="btn btn-success btn-sm"><i class="fas fa-check-square"></i> </button>

           </form>
				</div>



				<div class="cart_item_price cart_info_col">
					<div class="cart_item_title">দাম</div>
					<div class="cart_item_text">৳{{ en2bn($row->price )}}</div>
				</div>
				<div class="cart_item_total cart_info_col">
					<div class="cart_item_title">মোট</div>
					<div class="cart_item_text">৳{{ en2bn($row->price*$row->qty )}}</div>
				</div>

                <div class="cart_item_total cart_info_col">
					<div class="cart_item_title">বাতিল</div><br>
	 <a href="{{ url('remove/cart/'.$row->rowId ) }}" class="btn btn-sm btn-danger">x</a>
				</div>



			</div>
		</li>
								@endforeach
							</ul>
						</div>

						<!-- Order Total -->

          <div class="order_total_content" style="padding: 15px;">
         @if(Session::has('coupon'))

         @else

          <h5 style="margin-left: 20px;"> কুপোন ব্যবহার করুন </h5>
          	<form method="post" action="{{ route('apply.coupon') }}">
          		@csrf
          		<div class="form group col-lg-4">
          			<input type="text" name="coupon" class="form-control" required="" placeholder="আপনার কুপন কোড দিন">
          		</div><br>
         <button type="submit" class="btn btn-danger ml-2">জমা দিন
         </button>
          	</form>
          	@endif

          </div>

          <ul class="list-group col-lg-4" style="float: right;">
          	@if(Session::has('coupon'))
          	<li class="list-group-item">মোট : <span style="float: right;">
          	${{ en2bn(Session::get('coupon')['balance'] )}} </span> </li>
          	 <li class="list-group-item">কুপন : ({{ Session::get('coupon')['name'] }} )

              <a href="{{ route('coupon.remove') }}" class="btn btn-danger btn-sm">X</a>
           <span style="float: right;">৳{{ en2bn(Session::get('coupon')['discount'] )}} </span> </li>
          	@else
          	<li class="list-group-item">মোট : <span style="float: right;">
          	৳{{  en2bn(Cart::Subtotal()) }} </span> </li>
          	@endif



          	<!--<li class="list-group-item">পরিবহন খরচ : <span style="float: right;">৳{{ en2bn($charge)  }} </span> </li>-->
          	<!--<li class="list-group-item">Vat : <span style="float: right;">${{ $vat }} </span> </li>-->
          	@if(Session::has('coupon'))
          	<li class="list-group-item">চার্জসহ মোট : <span style="float: right;">৳{{en2bn( Session::get('coupon')['balance'] )}} </span> </li>
          	@else
      <li class="list-group-item">সর্বমোট : <span style="float: right;">৳{{en2bn( Cart::Subtotal() )}} </span> </li>
          	@endif


          </ul>
           </div>
            </div>
             </div>








						<div class="cart_buttons">
							<!--<button type="button" class="button cart_button_clear">All Cancel</button>-->
	 <a href="{{ route('payment.step') }}"  class="button cart_button_checkout">টাকা পরিশোধ করুন</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<script src="{{ asset('public/frontend/js/cart_custom.js') }}"></script>
@endsection
