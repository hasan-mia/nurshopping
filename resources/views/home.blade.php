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

$order = DB::table('orders')->where('user_id',Auth::id())->orderBy('id','DESC')->limit(10)->get();
@endphp


<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/cart_responsive.css') }}">
	<!-- Cart -->

<div class="contact_form">
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-sm-12 col-12 card">
        <table class="table table-response">
          <thead>
            <tr>
              <th scope="col"> পেমেন্ট টাইপ </th>
              <th scope="col">পেমেন্ট আইডি </th>
              <th scope="col">পরিমান </th>
              <th scope="col">তারিখ </th>
              <th scope="col">স্ট্যাটাস  </th>
              <th scope="col">স্ট্যাটাস কোড </th>
              <th scope="col">এ্যাকশন </th>

            </tr>
          </thead>
          <tbody>
            @foreach($order as $row)
            <tr>
              <td scope="col">{{ $row->payment_type }} </td>
              <td scope="col">{{ en2bn($row->payment_id) }} </td>
              <td scope="col">{{ en2bn($row->total) }}$  </td>
              <td scope="col">{{ en2bn($row->date) }}  </td>

               <td scope="col">
          @if($row->status == 0)
          <span class="badge badge-warning">অর্ডার প্রসেসিং</span>
          @elseif($row->status == 1)
          <span class="badge badge-info">টাকা গ্রহন করা হয়েছে</span>
            @elseif($row->status == 2)
            <span class="badge badge-warning">ডেলিভারি চলতেছে</span>
            @elseif($row->status == 3)
            <span class="badge badge-success">ডেলিভারি সম্পন</span>
            @else
            <span class="badge badge-danger">বাতিল</span>

          @endif

                </td>

              <td scope="col">{{ $row->status_code }}  </td>
              <td scope="col">
             <a href="" class="btn btn-sm btn-info"> দেখুন</a>
               </td>
            </tr>
             @endforeach

          </tbody>

        </table>

      </div>

      <div class="col-md-4 col-sm-12 col-12">
        <div class="card">
          <img src="{{ asset('public/frontend/images/kaziariyan.png') }}" class="card-img-top" style="height: 90px; width: 90px; margin-left: 34%;">
          <div class="card-body">
            <h5 class="card-title text-center">{{ Auth::user()->name }}</h5>

          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item"> <a href="{{ route('password.change') }}">পাসওয়ার্ড পরিবর্তন করুন</a>  </li>
             <li class="list-group-item">প্রফাইল পরিবর্তন</li>
              <li class="list-group-item"><a href="{{ route('success.orderlist') }}"> পন্য ফেরত দিন</a> </li>
          </ul>

          <div class="card-body">
            <a href="{{ route('user.logout') }}" class="btn btn-danger btn-sm btn-block">লগআঊট</a>

          </div>

        </div>

      </div>

    </div>

  </div>


</div>





@endsection
