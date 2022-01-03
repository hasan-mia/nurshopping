
@extends('layouts.app')

@section('content')
@include('layouts.menubar')

@php
function en2bn($number) {
  $bn = array("১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯", "০");
  $en = array("1", "2", "3", "4", "5", "6", "7", "8", "9", "0");
 return str_replace($en, $bn, $number);
}
$setting = DB::table('settings')->first();
$charge = $setting->shipping_charge; 
$vat = $setting->vat; 
$cart = Cart::Content();
@endphp


<style>
  /**
 * The CSS shown here will not be introduced in the Quickstart guide, but shows
 * how you can use CSS to style your Element's container.
 */
.StripeElement {
  box-sizing: border-box;

  height: 40px;
  width: 100%;

  padding: 10px 12px;

  border: 1px solid transparent;
  border-radius: 4px;
  background-color: white;

  box-shadow: 0 1px 3px 0 #e6ebf1;
  -webkit-transition: box-shadow 150ms ease;
  transition: box-shadow 150ms ease;
}

.StripeElement--focus {
  box-shadow: 0 1px 3px 0 #cfd7df;
}

.StripeElement--invalid {
  border-color: #fa755a;
}

.StripeElement--webkit-autofill {
  background-color: #fefde5 !important;
}

</style>









       
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_styles.css') }} ">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_responsive.css') }}">

<div class="contact_form">
        <div class="container">
            <div class="row">
                <div class="col-lg-7" style="border: 1px solid grey; padding: 20px; border-radius: 25px;">
                    <div class="contact_form_container">
                        <div class="contact_form_title text-center">আপনার পন্যসমূহের তালিকা</div>

          
                          <div class="cart_items">
                            <ul class="cart_list">
                              
                              @foreach($cart as $row)

        <li class="cart_item clearfix">
             


            <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">

                 <div class="cart_item_name cart_info_col">
                    <div class="cart_item_title"><b>পন্যের ছবি</b></div>
                    <div class="cart_item_text"><img src="{{ asset($row->options->image) }} " style="width: 70px; width: 70px;" alt=""></div>
                </div>


                <div class="cart_item_name cart_info_col">
                    <div class="cart_item_title"><b>নাম</b></div>
                    <div class="cart_item_text">{{ $row->name  }}</div>
                </div>

                @if($row->options->color == NULL)

                @else
                <div class="cart_item_color cart_info_col">
                    <div class="cart_item_title"><b>রং</b></div>
                    <div class="cart_item_text"> {{ $row->options->color }}</div>
                </div>
                 @endif
 

                @if($row->options->size == NULL)

                @else
                <div class="cart_item_color cart_info_col">
                    <div class="cart_item_title"><b>সাইজ</b></div>
                    <div class="cart_item_text"> {{ en2bn($row->options->size) }}</div>
                </div>
                @endif
                  

                <div class="cart_item_quantity cart_info_col">
                    <div class="cart_item_title"><b>পরিমান</b></div> 
                 <div class="cart_item_text"> {{ en2bn($row->qty )}}</div>
           
                </div>



                <div class="cart_item_price cart_info_col">
                    <div class="cart_item_title"><b>দাম</b></div>
                    <div class="cart_item_text">৳{{ en2bn($row->price )}}</div>
                </div>
                <div class="cart_item_total cart_info_col">
                    <div class="cart_item_title"><b>মোট</b></div>
                    <div class="cart_item_text">৳{{ en2bn($row->price*$row->qty )}}</div>
                </div>

                 
            </div>
        </li>
                                @endforeach
                            </ul>
                        </div>

        <ul class="list-group col-lg-8" style="float: right;">
            @if(Session::has('coupon'))
            <li class="list-group-item">মোট : <span style="float: right;">
            ${{ en2bn(Session::get('coupon')['balance'] )}} </span> </li>
             <li class="list-group-item">কুপন : ({{ Session::get('coupon')['name'] }} )
              <a href="{{ route('coupon.remove') }}" class="btn btn-danger btn-sm">X</a>
           <span style="float: right;">${{en2bn( Session::get('coupon')['discount'] )}} </span> </li>
            @else
            <li class="list-group-item">মোট : <span style="float: right;">
            ৳{{ en2bn( Cart::Subtotal() )}} </span> </li>
            @endif
            
          

            <!--<li class="list-group-item">Shiping Charge : <span style="float: right;">${{ $charge  }} </span> </li>-->
            <!--<li class="list-group-item">Vat : <span style="float: right;">${{ $vat }} </span> </li>-->
            @if(Session::has('coupon'))
            <li class="list-group-item"> সর্বমোট: <span style="float: right;">৳{{en2bn( Session::get('coupon')['balance']) }} </span> </li>
            @else
      <li class="list-group-item"> সর্বমোট: <span style="float: right;">৳{{en2bn( Cart::Subtotal())}} </span> </li>
            @endif
           
          </ul> 

           

                    </div>
                </div>

 
 


<div class="col-lg-5" style="border: 1px solid grey; padding: 20px; border-radius: 25px;"> 
                    <div class="contact_form_container">
                        <div class="contact_form_title text-center">আপনার পছন্দের পন্যটি অর্ডার করুন</div>

            <form action="{{ route('oncash.charge') }}" method="post" id="payment-form">
              @csrf
              <div class="form-row">
                <label for="card-element">
                    <ul class="car-details">
                       <li>মোবাইল ব্যাংকিং<li/>
                  
                    <li> অনুগ্রহ করে ডেলিভারি চার্জ  ১৫০৳ সহ সর্বমোট: <span style="color:red">{{en2bn( Cart::Subtotal() + 150)}} টাকা</span> ০১৬১৭৮৯২৩২৩ এই নাম্বার বিকাশ/নগদ/রকেট করতে হবে।</li>
                    
                    </ul>
                    </label>
                <div id="card-element">
                  <!-- A Stripe Element will be inserted here. -->
                </div>

                <!-- Used to display form errors. -->
                <div id="card-errors" role="alert"></div>
              </div><br>

      <input type="hidden" name="shipping" value="{{ $charge }} ">
       <input type="hidden" name="vat" value="{{ $vat }} ">
       <input type="hidden" name="total" value="{{ Cart::Subtotal() + $charge }} ">

  <input type="hidden" name="ship_name" value="{{ $data['name'] }} ">
  <input type="hidden" name="ship_phone" value="{{ $data['phone'] }} ">
 <input type="hidden" name="ship_email" value="{{ $data['email'] }} ">
  <input type="hidden" name="ship_address" value="{{ $data['address'] }} ">
  <input type="hidden" name="ship_city" value="{{ $data['city'] }} ">
  <input type="hidden" name="payment_type" value="{{ $data['payment'] }} ">




              <button class="btn btn-info">জমা দিন</button>
            </form>
         

                    </div>
                </div>







            </div>
        </div>
        <div class="panel"></div>
    </div>



  








@endsection
