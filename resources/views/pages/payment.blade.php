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

$setting = DB::table('settings')->first();
$charge = $setting->shipping_charge;
$vat = $setting->vat;
@endphp

<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_styles.css') }} ">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_responsive.css') }}">

<div class="contact_form">
        <div class="container">
            <div class="row">
                <div class="col-lg-7" style="border: 1px solid grey; padding: 20px; border-radius: 25px;">
                    <div class="contact_form_container">
                        <div class="contact_form_title text-center">আপনার পন্যের তালিকা</div>


                          <div class="cart_items">
                            <ul class="cart_list">

                              @foreach($cart as $row)

        <li class="cart_item clearfix">



            <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">

                 <div class="cart_item_name cart_info_col">
                    <div class="cart_item_title"><b>ছবি</b></div>
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
                    <div class="cart_item_text"> {{ ColorBn($row->options->color )}}</div>
                </div>
                 @endif


                @if($row->options->size == NULL)

                @else
                <div class="cart_item_color cart_info_col">
                    <div class="cart_item_title"><b>সাইজ</b></div>
                    <div class="cart_item_text"> {{ SizeBn($row->options->size) }}</div>
                </div>
                @endif


                <div class="cart_item_quantity cart_info_col">
                    <div class="cart_item_title"><b>পরিমান</b></div>
                 <div class="cart_item_text"> {{ en2bn($row->qty) }}</div>

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
            ${{ Session::get('coupon')['balance'] }} </span> </li>
             <li class="list-group-item">কুপন : ({{ Session::get('coupon')['name'] }} )
              <a href="{{ route('coupon.remove') }}" class="btn btn-danger btn-sm">X</a>
           <span style="float: right;">৳{{en2bn( Session::get('coupon')['discount'])}} </span> </li>
            @else
            <li class="list-group-item">মোট: <span style="float: right;">
            ৳{{ en2bn( Cart::Subtotal() )}} </span> </li>
            @endif



            <!--<li class="list-group-item">পরিবহন চার্জ : <span style="float: right;>৳{{ $charge  }} </span> </li>-->

            @if(Session::has('coupon'))
            <li class="list-group-item">সর্বমোট : <span style="float: right;">৳{{en2bn( Session::get('coupon')['balance']) }} </span> </li>
            @else
      <li class="list-group-item">সর্বমোট : <span style="float: right;">৳{{en2bn( Cart::Subtotal())}} </span> </li>
            @endif

          </ul>



                    </div>
                </div>





<div class="col-lg-5" style="border: 1px solid grey; padding: 20px; border-radius: 25px;">
                    <div class="contact_form_container">
                        <div class="contact_form_title text-center">আপনার  পন্য প্রেরণের ঠিকানা</div>

         <form action="{{ route('payment.process') }}" id="contact_form" method="post">
             @csrf

          <div class="form-group">
    <label for="exampleInputEmail1">পুরো নাম</label>
    <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="আপনার পুরো নাম দিন " name="name" required="">
         </div>


         <div class="form-group">
    <label for="exampleInputEmail1">মোবাইল</label>
    <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="আপনার ফোন নাম্বার দিন " name="phone" required="">
         </div>


         <div class="form-group">
    <label for="exampleInputEmail1">ইমেইল</label>
    <input type="email" class="form-control"  aria-describedby="emailHelp" placeholder="আপনার ই-মেইল দিন " name="email" required="">
         </div>


         <div class="form-group">
    <label for="exampleInputEmail1">ঠিকানা</label>
    <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="আপনার ঠিকানা দিন" name="address" required="">
         </div>



         <div class="form-group">
    <label for="exampleInputEmail1">শহর</label>
    <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="আপনার শহরের নাম দিন" name="city" required="">
         </div>

    <div class="contact_form_title text-center"> পরিশোধের মাধ্যম </div>
    <div class="form-group">
        <ul class="logos_list">
            <li><input type="radio" name="payment" value="stripe"><img src="{{ asset('public/frontend/images/mastercard.png') }}" style="width: 100px; height: 60px;"> </li>

             <li><input type="radio" name="payment" value="oncash"><img src="{{ asset('public/frontend/images/cashon.png') }}" style="width: 100px; height: 60px;"> </li>

              <li><input type="radio" name="payment" value="mobile"><img src="{{ asset('public/frontend/images/mobile.png') }}" style="width: 100px; height: 60px;"> </li>

        </ul>

    </div>


                            <div class="contact_form_button text-center">
        <button type="submit" class="btn btn-info">পরিশোধ করুন</button>
                            </div>
                        </form>

                    </div>
                </div>







            </div>
        </div>
        <div class="panel"></div>
    </div>












@endsection
