@extends('layouts.app')

@section('content')

@include('layouts.menubar')
@include('layouts.slider')
@include('layouts.catplan')


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


$featured = DB::table('products')->where('status',1)->orderBy('id','desc')->limit(12)->get();

$all_product = DB::table('products')->where('status',1)->offset(12)->take(50)->get();

$trend = DB::table('products')->where('status',1)->where('trend',1)->orderBy('id','desc')->limit(8)->get();

$best = DB::table('products')->where('status',1)->where('best_rated',1)->orderBy('id','desc')->limit(8)->get();

$hot = DB::table('products')
        ->join('brands','products.brand_id','brands.id')
        ->select('products.*','brands.brand_name')
        ->where('products.status',1)->where('hot_deal',1)->orderBy('id','desc')->limit(3)
        ->get();

$mid = DB::table('products')
        ->join('categories','products.category_id','categories.id')
        ->join('brands','products.brand_id','brands.id')
        ->select('products.*','brands.brand_name','categories.category_name')
        ->where('products.mid_slider',1)->orderBy('id','DESC')->limit(3)
        ->get();

@endphp

    <!--=========Featured Product=========-->
    <section id="all-produc" class="my-3">
        <div class="container">
    <div class="title-middl">
     <h3 class="h3">  </h3>
    </div>
    <div class="row">
         @foreach ($featured as $row)
        <div class="col-md-2 col-sm-4 col-6">
            <div class="product-grid3">
                <div class="product-image3">
                        <img class="pic-1" src="{{ asset( $row->image_one )}}">
                        <img class="pic-2" src="{{ asset( $row->image_two )}}">
                    <ul class="social">
                        <li class="product_fav"> <button href="#" class="addwishlist" data-id="{{ $row->id }}" data-tip="Add to Wishlist"><i class="fas fa-heart"></i></button></li>
                        <li><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}" data-tip="View Product"><i class="fa fa-eye"></i></a></li>
                    </ul>
                     @if($row->discount_price == NULL)
                    <span class="badge badge-danger">নতুন</span>
                    @else
                    <span class="badge badge-danger">- {{en2bn((ceil(($row->selling_price - $row->discount_price)/$row->selling_price*100)))}} %</span>
                    @endif
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{en2bn($row->product_name)}}</a></h3>

                    <div class="price">
                     @if (empty($row->discount_price))
                      ৳{{en2bn($row->selling_price )}}
                     @else
                     ৳{{ en2bn($row->discount_price) }}
                     <span> ৳{{en2bn($row->selling_price )}} </span>
                     @endif

                    </div>
                      @if (empty($row->discount_price))
                         <p class="saved-cash">দুঃখতি! কোন অফার নেই</p>

                     @else
                     <p class="saved-cash">আপনি ছাড় পাচ্ছেন {{ en2bn((ceil($row->selling_price - $row->discount_price))) }}৳</p>

                     @endif
                     <ul class="rating">
                        <li><a href="#" class="add-to-cart" id="{{ $row->id }}" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)" data-tip="Add to Cart"><i class="fa fa-plus"></i></a></li>                    </ul>
                    </ul>

                </div>
            </div>
        </div>
     @endforeach
    </div>
</div>

</section>


<!--  Category One -->

@php
$cats = DB::table('categories')->skip(0)->first();
$catid = $cats->id;

$category_first = DB::table('products')->where('category_id',$catid)->where('status',1)->limit(10)->orderBy('id','DESC')->get();

@endphp


<section id="all-produc" class="my-3">
        <div class="container">
    <div class="title-left">
     <h3 class="h3"> {{ $cats->category_name }} </h3>
    </div>
    <div class="row">
         @foreach ($category_first as $row)
        <div class="col-md-2 col-sm-4 col-6">
            <div class="product-grid3">
                <div class="product-image3">
                        <img class="pic-1" src="{{ asset( $row->image_one )}}">
                        <img class="pic-2" src="{{ asset( $row->image_two )}}">
                    <ul class="social">
                        <li class="product_fav"> <button href="#" class="addwishlist" data-id="{{ $row->id }}" data-tip="Add to Wishlist"><i class="fas fa-heart"></i></button></li>
                        <li><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}" data-tip="View Product"><i class="fa fa-eye"></i></a></li>
                    </ul>
                     @if($row->discount_price == NULL)
                    <span class="badge badge-danger">নতুন</span>
                    @else
                    <span class="badge badge-danger">- {{en2bn((ceil(($row->selling_price - $row->discount_price)/$row->selling_price*100)))}} %</span>
                    @endif
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{en2bn($row->product_name)}}</a></h3>

                    <div class="price">
                     @if (empty($row->discount_price))
                      ৳{{en2bn($row->selling_price )}}
                     @else
                     ৳{{ en2bn($row->discount_price) }}
                     <span> ৳{{en2bn($row->selling_price )}} </span>
                     @endif

                    </div>
                      @if (empty($row->discount_price))
                         <p class="saved-cash">দুঃখতি! কোন অফার নেই</p>

                     @else
                     <p class="saved-cash">আপনি ছাড় পাচ্ছেন {{ en2bn((ceil($row->selling_price - $row->discount_price))) }}৳</p>

                     @endif
                     <ul class="rating">
                        <li><a href="#" class="add-to-cart" id="{{ $row->id }}" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)" data-tip="Add to Cart"><i class="fa fa-plus"></i></a></li>                    </ul>
                    </ul>

                </div>
            </div>
        </div>
     @endforeach
    </div>
</div>

</section>


@php
$cats = DB::table('categories')->skip(1)->first();
$catid = $cats->id;

$category_first = DB::table('products')->where('category_id',$catid)->where('status',1)->limit(10)->orderBy('id','DESC')->get();

@endphp


<section id="all-produc" class="my-3">
        <div class="container">
    <div class="title-right">
     <h3 class="h3"> {{ $cats->category_name }} </h3>
    </div>
    <div class="row">
         @foreach ($category_first as $row)
        <div class="col-md-2 col-sm-4 col-6">
            <div class="product-grid3">
                <div class="product-image3">
                        <img class="pic-1" src="{{ asset( $row->image_one )}}">
                        <img class="pic-2" src="{{ asset( $row->image_two )}}">
                    <ul class="social">
                        <li class="product_fav"> <button href="#" class="addwishlist" data-id="{{ $row->id }}" data-tip="Add to Wishlist"><i class="fas fa-heart"></i></button></li>
                        <li><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}" data-tip="View Product"><i class="fa fa-eye"></i></a></li>
                    </ul>
                     @if($row->discount_price == NULL)
                    <span class="badge badge-danger">নতুন</span>
                    @else
                    <span class="badge badge-danger">- {{en2bn((ceil(($row->selling_price - $row->discount_price)/$row->selling_price*100)))}} %</span>
                    @endif
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{en2bn($row->product_name)}}</a></h3>

                    <div class="price">
                     @if (empty($row->discount_price))
                      ৳{{en2bn($row->selling_price )}}
                     @else
                     ৳{{ en2bn($row->discount_price) }}
                     <span> ৳{{en2bn($row->selling_price )}} </span>
                     @endif

                    </div>
                      @if (empty($row->discount_price))
                         <p class="saved-cash">দুঃখতি! কোন অফার নেই</p>

                     @else
                     <p class="saved-cash">আপনি ছাড় পাচ্ছেন {{ en2bn((ceil($row->selling_price - $row->discount_price))) }}৳</p>

                     @endif
                     <ul class="rating">
                        <li><a href="#" class="add-to-cart" id="{{ $row->id }}" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)" data-tip="Add to Cart"><i class="fa fa-plus"></i></a></li>                    </ul>
                    </ul>

                </div>
            </div>
        </div>
     @endforeach
    </div>
</div>

</section>

@php
$cats = DB::table('categories')->skip(2)->first();
$catid = $cats->id;

$category_first = DB::table('products')->where('category_id',$catid)->where('status',1)->limit(10)->orderBy('id','DESC')->get();

@endphp


<section id="all-produc" class="my-3">
        <div class="container">
    <div class="title-left">
     <h3 class="h3"> {{ $cats->category_name }} </h3>
    </div>
    <div class="row">
         @foreach ($category_first as $row)
        <div class="col-md-2 col-sm-4 col-6">
            <div class="product-grid3">
                <div class="product-image3">
                        <img class="pic-1" src="{{ asset( $row->image_one )}}">
                        <img class="pic-2" src="{{ asset( $row->image_two )}}">
                    <ul class="social">
                        <li class="product_fav"> <button href="#" class="addwishlist" data-id="{{ $row->id }}" data-tip="Add to Wishlist"><i class="fas fa-heart"></i></button></li>
                        <li><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}" data-tip="View Product"><i class="fa fa-eye"></i></a></li>
                    </ul>
                     @if($row->discount_price == NULL)
                    <span class="badge badge-danger">নতুন</span>
                    @else
                    <span class="badge badge-danger">- {{en2bn((ceil(($row->selling_price - $row->discount_price)/$row->selling_price*100)))}} %</span>
                    @endif
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{en2bn($row->product_name)}}</a></h3>

                    <div class="price">
                     @if (empty($row->discount_price))
                      ৳{{en2bn($row->selling_price )}}
                     @else
                     ৳{{ en2bn($row->discount_price) }}
                     <span> ৳{{en2bn($row->selling_price )}} </span>
                     @endif

                    </div>
                      @if (empty($row->discount_price))
                         <p class="saved-cash">দুঃখতি! কোন অফার নেই</p>

                     @else
                     <p class="saved-cash">আপনি ছাড় পাচ্ছেন {{ en2bn((ceil($row->selling_price - $row->discount_price))) }}৳</p>

                     @endif
                     <ul class="rating">
                        <li><a href="#" class="add-to-cart" id="{{ $row->id }}" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)" data-tip="Add to Cart"><i class="fa fa-plus"></i></a></li>                    </ul>
                    </ul>

                </div>
            </div>
        </div>
     @endforeach
    </div>
</div>

</section>

@php
$cats = DB::table('categories')->skip(3)->first();
$catid = $cats->id;

$category_secound = DB::table('products')->where('category_id',$catid)->where('status',1)->limit(10)->orderBy('id','DESC')->get();

@endphp

<section id="all-produc" class="my-3">
        <div class="container">
    <div class="title-right">
     <h3 class="h3"> {{ $cats->category_name }} </h3>
    </div>
    <div class="row">
         @foreach ($category_secound as $row)
        <div class="col-md-2 col-sm-4 col-6">
            <div class="product-grid3">
                <div class="product-image3">
                        <img class="pic-1" src="{{ asset( $row->image_one )}}">
                        <img class="pic-2" src="{{ asset( $row->image_two )}}">
                    <ul class="social">
                        <li class="product_fav"> <a href="#" class="addwishlist" data-id="{{ $row->id }}" data-tip="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                        <li><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}" data-tip="View Product"><i class="fa fa-eye"></i></a></li>
                    </ul>
                     @if($row->discount_price == NULL)
                    <span class="badge badge-danger">নতুন</span>
                    @else
                    <span class="badge badge-danger">- {{en2bn((ceil(($row->selling_price - $row->discount_price)/$row->selling_price*100)))}} %</span>
                    @endif
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{en2bn($row->product_name)}}</a></h3>

                    <div class="price">
                     @if (empty($row->discount_price))
                      ৳{{en2bn($row->selling_price )}}
                     @else
                     ৳{{ en2bn($row->discount_price) }}
                     <span> ৳{{en2bn($row->selling_price )}} </span>
                     @endif

                    </div>
                      @if (empty($row->discount_price))
                         <p class="saved-cash">দুঃখতি! কোন অফার নেই</p>

                     @else
                     <p class="saved-cash">আপনি ছাড় পাচ্ছেন {{ en2bn((ceil($row->selling_price - $row->discount_price))) }}৳</p>

                     @endif
                     <ul class="rating">
                        <li><a href="#" class="add-to-cart" id="{{ $row->id }}" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)" data-tip="Add to Cart"><i class="fa fa-plus"></i></a></li>                    </ul>
                    </ul>

                </div>
            </div>
        </div>
     @endforeach
    </div>
</div>

</section>


@php
$cats = DB::table('categories')->skip(4)->first();
$catid = $cats->id;

$category_first = DB::table('products')->where('category_id',$catid)->where('status',1)->limit(10)->orderBy('id','DESC')->get();

@endphp


<section id="all-produc" class="my-3">
        <div class="container">
    <div class="title-left">
     <h3 class="h3"> {{ $cats->category_name }} </h3>
    </div>
    <div class="row">
         @foreach ($category_first as $row)
        <div class="col-md-2 col-sm-4 col-6">
            <div class="product-grid3">
                <div class="product-image3">
                        <img class="pic-1" src="{{ asset( $row->image_one )}}">
                        <img class="pic-2" src="{{ asset( $row->image_two )}}">
                    <ul class="social">
                        <li class="product_fav"> <button href="#" class="addwishlist" data-id="{{ $row->id }}" data-tip="Add to Wishlist"><i class="fas fa-heart"></i></button></li>
                        <li><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}" data-tip="View Product"><i class="fa fa-eye"></i></a></li>
                    </ul>
                     @if($row->discount_price == NULL)
                    <span class="badge badge-danger">নতুন</span>
                    @else
                    <span class="badge badge-danger">- {{en2bn((ceil(($row->selling_price - $row->discount_price)/$row->selling_price*100)))}} %</span>
                    @endif
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{en2bn($row->product_name)}}</a></h3>

                    <div class="price">
                     @if (empty($row->discount_price))
                      ৳{{en2bn($row->selling_price )}}
                     @else
                     ৳{{ en2bn($row->discount_price) }}
                     <span> ৳{{en2bn($row->selling_price )}} </span>
                     @endif

                    </div>
                      @if (empty($row->discount_price))
                         <p class="saved-cash">দুঃখতি! কোন অফার নেই</p>

                     @else
                     <p class="saved-cash">আপনি ছাড় পাচ্ছেন {{ en2bn((ceil($row->selling_price - $row->discount_price))) }}৳</p>

                     @endif
                     <ul class="rating">
                        <li><a href="#" class="add-to-cart" id="{{ $row->id }}" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)" data-tip="Add to Cart"><i class="fa fa-plus"></i></a></li>                    </ul>
                    </ul>

                </div>
            </div>
        </div>
     @endforeach
    </div>
</div>

</section>

@php
$cats = DB::table('categories')->skip(5)->first();
$catid = $cats->id;

$category_first = DB::table('products')->where('category_id',$catid)->where('status',1)->limit(10)->orderBy('id','DESC')->get();

@endphp


<section id="all-produc" class="my-3">
        <div class="container">
    <div class="title-right">
     <h3 class="h3"> {{ $cats->category_name }} </h3>
    </div>
    <div class="row">
         @foreach ($category_first as $row)
        <div class="col-md-2 col-sm-4 col-6">
            <div class="product-grid3">
                <div class="product-image3">
                        <img class="pic-1" src="{{ asset( $row->image_one )}}">
                        <img class="pic-2" src="{{ asset( $row->image_two )}}">
                    <ul class="social">
                        <li class="product_fav"> <button href="#" class="addwishlist" data-id="{{ $row->id }}" data-tip="Add to Wishlist"><i class="fas fa-heart"></i></button></li>
                        <li><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}" data-tip="View Product"><i class="fa fa-eye"></i></a></li>
                    </ul>
                     @if($row->discount_price == NULL)
                    <span class="badge badge-danger">নতুন</span>
                    @else
                    <span class="badge badge-danger">- {{en2bn((ceil(($row->selling_price - $row->discount_price)/$row->selling_price*100)))}} %</span>
                    @endif
                </div>
                <div class="product-content">
                    <h3 class="title"><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{en2bn($row->product_name)}}</a></h3>

                    <div class="price">
                     @if (empty($row->discount_price))
                      ৳{{en2bn($row->selling_price )}}
                     @else
                     ৳{{ en2bn($row->discount_price) }}
                     <span> ৳{{en2bn($row->selling_price )}} </span>
                     @endif

                    </div>
                      @if (empty($row->discount_price))
                         <p class="saved-cash">দুঃখতি! কোন অফার নেই</p>

                     @else
                     <p class="saved-cash">আপনি ছাড় পাচ্ছেন {{ en2bn((ceil($row->selling_price - $row->discount_price))) }}৳</p>

                     @endif
                     <ul class="rating">
                        <li><a href="#" class="add-to-cart" id="{{ $row->id }}" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)" data-tip="Add to Cart"><i class="fa fa-plus"></i></a></li>                    </ul>
                    </ul>

                </div>
            </div>
        </div>
     @endforeach
    </div>
</div>

</section>


    <!-- Brands -->

    <!--<div class="brands">-->
    <!--    <div class="container">-->
    <!--        <div class="row">-->
    <!--            <div class="col">-->
    <!--                <div class="brands_slider_container">-->

                        <!-- Brands Slider -->

    <!--                    <div class="owl-carousel owl-theme brands_slider">-->

    <!--                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="{{ asset('public/frontend/images/brands_1.jpg')}}" alt=""></div></div>-->
    <!--                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="{{ asset('public/frontend/images/brands_2.jpg')}}" alt=""></div></div>-->
    <!--                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="{{ asset('public/frontend/images/brands_3.jpg')}}" alt=""></div></div>-->
    <!--                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="{{ asset('public/frontend/images/brands_4.jpg')}}" alt=""></div></div>-->
    <!--                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="{{ asset('public/frontend/images/brands_5.jpg')}}" alt=""></div></div>-->
    <!--                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="{{ asset('public/frontend/images/brands_6.jpg')}}" alt=""></div></div>-->
    <!--                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="{{ asset('public/frontend/images/brands_7.jpg')}}" alt=""></div></div>-->
    <!--                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="{{ asset('public/frontend/images/brands_8.jpg')}}" alt=""></div></div>-->

    <!--                    </div>-->

                        <!-- Brands Slider Navigation -->
    <!--                    <div class="brands_nav brands_prev"><i class="fas fa-chevron-left"></i></div>-->
    <!--                    <div class="brands_nav brands_next"><i class="fas fa-chevron-right"></i></div>-->

    <!--                </div>-->
    <!--            </div>-->
    <!--        </div>-->
    <!--    </div>-->
    <!--</div>-->



    <!-- Newsletter -->

    <div class="newsletter">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="newsletter_container d-flex flex-lg-row flex-column align-items-lg-center align-items-center justify-content-lg-start justify-content-center">
                        <div class="newsletter_title_container">
                            <div class="newsletter_icon"><img src="{{ asset('public/frontend/images/send.png')}}" alt=""></div>
                            <div class="newsletter_title">আমাদের সাথেই থাকুন</div>
                            {{-- <div class="newsletter_text"><p>...and receive %20 coupon for first shopping.</p></div> --}}
                        </div>
                        <div class="newsletter_content clearfix">
       <form action="{{ route('store.newslater') }}" method="post" class="newsletter_form">
        @csrf
               <input type="email" class="newsletter_input" required="required" placeholder="আপনার ই-মেইল দিন" name="email">
            <button class="newsletter_button" type="submit">সাবস্ক্রাইব</button>
                            </form>
                            <div class="newsletter_unsubscribe_link"><a href="#">আনসাবস্ক্রাইব</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



<!-- Modal -->
<div class="modal fade" id="cartmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLavel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLavel">একনজরে পন্যট যাচাই করুন</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>


        <div class="modal-body">
         <div class="row">
          <div class="col-md-4">
              <div class="card">
                  <img src="" id="pimage" style="height: 220px; width: 200px;">
                  <div class="card-body">
                      <h5 class="card-title text-center" id="pname">  </h5>

                  </div>

              </div>

          </div>


  <div class="col-md-4">
              <ul class="list-group">
    <li class="list-group-item">পন্যের কোড:<span id="pcode"></span> </li>
    <li class="list-group-item">ক্যাটাগরি: <span id="pcat"></span></li>
    <li class="list-group-item">সাব ক্যাটাগরি: <span id="psub"></span></li>
    <li class="list-group-item">ব্র্যান্ড:<span id="pbrand"></span> </li>
    <li class="list-group-item">স্টক: <span class="badge" style="background: green;color: white;" >আছে</span> </li>
  </ul>

          </div>

          <div class="col-md-4">

          <form method="post" action="{{ route('insert.into.cart') }}">
          @csrf

      <input type="hidden" name="product_id" id="product_id">

           <div class="form-group">
              <label for="exampleInputcolor">রং</label>
              <select name="color" class="form-control" id="color">

               </select>

           </div>

   <div class="form-group">
              <label for="exampleInputcolor">সাইজ</label>
              <select name="size" class="form-control" id="size">

               </select>

           </div>


           <div class="form-group">
       <label for="exampleInputcolor">পরিমান</label>
       <input type="number" class="form-control" name="qty" value="1">
           </div>


  <button type="submit" class="btn btn-danger">কার্টে যোগ করুন </button>

  </form>

          </div>



         </div>
        </div>




        <div class="modal-footer">

        </div>
      </div>
    </div>
  </div>








<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>

<script type="text/javascript">
    function productview(id){
        $.ajax({
         url: "{{ url('/cart/product/view/') }}/"+id,
         type: "GET",
         dataType:"json",
         success:function(data){
       $('#pcode').text(data.product.product_code);
       $('#pcat').text(data.product.category_name);
       $('#psub').text(data.product.subcategory_name);
       $('#pbrand').text(data.product.brand_name);
       $('#pname').text(data.product.product_name);
       $('#pimage').attr('src',data.product.image_one);
       $('#product_id').val(data.product.id);

      var d = $('select[name="color"]').empty();
      $.each(data.color,function(key,value){
      $('select[name="color"]').append('<option value="'+value+'">'+value+'</option>');
        });

          var d = $('select[name="size"]').empty();
      $.each(data.size,function(key,value){
      $('select[name="size"]').append('<option value="'+value+'">'+value+'</option>');
        });


         }
        })
    }


</script>



 <script type="text/javascript">

   $(document).ready(function(){
     $('.addcart').on('click', function(){
        var id = $(this).data('id');
        if (id) {
            $.ajax({
                url: " {{ url('/add/to/cart/') }}/"+id,
                type:"GET",
                datType:"json",
                success:function(data){
             const Toast = Swal.mixin({
                  toast: true,
                  position: 'top-end',
                  showConfirmButton: false,
                  timer: 3000,
                  timerProgressBar: true,
                  onOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                  }
                })

             if ($.isEmptyObject(data.error)) {

                Toast.fire({
                  icon: 'success',
                  title: data.success
                })
             }else{
                 Toast.fire({
                  icon: 'error',
                  title: data.error
                })
             }


                },
            });

        }else{
            alert('danger');
        }
     });

   });


</script>



<script type="text/javascript">

   $(document).ready(function(){
     $('.addwishlist').on('click', function(){
        var id = $(this).data('id');
        if (id) {
            $.ajax({
                url: " {{ url('add/wishlist/') }}/"+id,
                type:"GET",
                datType:"json",
                success:function(data){
             const Toast = Swal.mixin({
                  toast: true,
                  position: 'top-end',
                  showConfirmButton: false,
                  timer: 3000,
                  timerProgressBar: true,
                  onOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                  }
                })

             if ($.isEmptyObject(data.error)) {

                Toast.fire({
                  icon: 'success',
                  title: data.success
                })
             }else{
                 Toast.fire({
                  icon: 'error',
                  title: data.error
                })
             }


                },
            });

        }else{
            alert('danger');
        }
     });

   });


</script>




@endsection
