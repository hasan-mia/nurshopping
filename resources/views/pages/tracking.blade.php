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
@endphp

<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/cart_responsive.css') }}">
	<!-- Cart -->

<div class="contact_form">
	<div class="container">
		<div class="row">

  <div class="col-5 offset-lg-1">
   <div class="contact_form_title"> <h4>আপনার অর্ডার স্ট্যাটাস </h4></div>


   <div class="progress">

    @if($track->status == 0)
<div class="progress-bar bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>

   @elseif($track->status == 1)
  <div class="progress-bar bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>

  <div class="progress-bar bg-primary" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>

  @elseif($track->status == 2)
  <div class="progress-bar bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>

  <div class="progress-bar bg-primary" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>

  <div class="progress-bar bg-info" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>

  @elseif($track->status == 3)
  <div class="progress-bar bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>

  <div class="progress-bar bg-primary" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>

  <div class="progress-bar bg-info" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>

  <div class="progress-bar bg-success" role="progressbar" style="width: 35%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>

    @else

  <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
    @endif

</div><br>

 @if($track->status == 0)
 <h4>নোট : আপনার অর্ডাটি রিভিওয়ে আছে, অনুগ্রহপূর্বক অপেক্ষা করুন  </h4>

 @elseif($track->status == 1)
  <h4>নোট : আপনার অর্ডারটি গ্রহন করা হয়েছে  </h4>

   @elseif($track->status == 2)
  <h4>নোট : প্যাকিং সম্পন্ন হয়েছে, ডেলিভারির কাজ চলছে  </h4>

  @elseif($track->status == 3)
  <h4>অর্ডার সম্পন্ন হয়েছে  </h4>

 @else

 <h4>নোট : অর্ডারটি বাতিল  </h4>

 @endif




  </div>









  <div class="col-5 offset-lg-1">
   <div class="contact_form_title"><h4> আপনার অর্ডারের বর্ণনা</h4> </div>

  <ul class="list-group col-lg-12">
  	<li class="list-group-item"> <b>পেমেন্টের ধরন:</b> {{ $track->payment_type  }} </li>
  	<li class="list-group-item"> <b>ট্রানজেকশন আইডি:</b> {{ $track->payment_id  }}</li>
  	<li class="list-group-item"> <b>ব্যালেন্স আইডি:</b> {{ $track->blnc_transection  }}</li>
  	<!--<li class="list-group-item"> <b>মোট:</b> $ {{ $track->subtotal  }}</li>-->
  	<!--<li class="list-group-item"> <b>Shipping:</b> $ {{ $track->shipping  }}</li>-->
  	<!--<li class="list-group-item"> <b>Vat:</b> $ {{ $track->vat  }}</li>-->
  	<li class="list-group-item"> <b>মোট:</b> ৳ {{ en2bn($track->total  )}}</li>
  	<li class="list-group-item"> <b>মাস:</b> {{ en2bn($track->month  )}}</li>
  	<li class="list-group-item"> <b>তারিখ:</b> {{en2bn( $track->date ) }}</li>
  	<li class="list-group-item"> <b>বছর:</b> {{en2bn( $track->year  )}}</li>



  </ul>


  </div>




		</div>

	</div>

</div>










@endsection
