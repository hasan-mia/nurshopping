@php
function entobn($number) {
  $bn = array("১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯", "০");
  $en = array("1", "2", "3", "4", "5", "6", "7", "8", "9", "0");
 return str_replace($en, $bn, $number);
}

$setting = DB::table('sitesetting')->first();

 @endphp


 <!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
<title>NurSuperShop</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Nur Super shop Online Store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="{{ asset('public/frontend/images/icon.png') }}"/>
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/bootstrap4/bootstrap.min.css') }}">
<link href="{{ asset('public/frontend/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css') }}" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/plugins/OwlCarousel2-2.2.1/owl.carousel.css') }} ">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/plugins/OwlCarousel2-2.2.1/owl.theme.default.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/plugins/OwlCarousel2-2.2.1/animate.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/plugins/slick-1.8.0/slick.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/main_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/fonts/SolaimanLipi.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/responsive.css') }}">

<!-- chart -->
         <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.css">

         <link rel="stylesheet" href="sweetalert2.min.css">

     <script src="https://js.stripe.com/v3/"></script>


</head>

<body>


<div class="super_container">

    <!-- Header -->

    <header class="header">

        <!-- Top Bar -->

        <div class="top_bar">
            <div class="container">
                <div class="row">
                    <div class="col d-flex flex-row">
                        <div class="top_bar_contact_item"><div class="top_bar_icon"><img src="{{ asset('public/frontend/images/phone.png')}}" alt=""></div>{{ entobn($setting->phone_one) }}</div>
                        <div class="top_bar_contact_item"><div class="top_bar_icon"><img src="{{ asset('public/frontend/images/mail.png')}}" alt=""></div><a href="mailto:support@nursupershop.com">{{ $setting->email }}</a></div>
                        <div class="top_bar_content ml-auto">

                            @guest

                            @else
                            <div class="top_bar_menu">
                                  <ul class="standard_dropdown top_bar_dropdown">

                                  <li>
                                     <a href="" data-toggle="modal" data-target="#exampleModal">পন্য ট্র্যাক করুন</a>
                                  </li>

                                </ul>
                            </div>
                            @endguest


                            <div class="top_bar_user">

                             @guest
                                <div><a href="{{ route('login') }}"><div class="user_icon"><img src="{{ asset('public/frontend/images/user.svg')}}" alt=""></div>রেজিস্টার/লগইন</a></div>
                                @else

                                <ul class="standard_dropdown top_bar_dropdown">
                                    <li>
                                        <a href="{{ route('home') }}"><div class="user_icon"><img src="{{ asset('public/frontend/images/user.svg')}}" alt=""></div> প্রফাইল<i class="fas fa-chevron-down"></i></a>
                                        <ul>
                                            <li><a href="{{ route('user.wishlist') }}">প্রিয় পন্য</a></li>
                                            <li><a href="{{ route('user.checkout') }}">পন্য কিনুন</a></li>
                                            <li> <a href="" data-toggle="modal" data-target="#exampleModal">পন্য ট্র্যাক করুন</a> </li>
                                        </ul>
                                    </li>

                                </ul>
                                @endguest


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Header Main -->

        <div class="header_main">
            <div class="container">
                <div class="row">

                    <!-- Logo -->
                    <div class="col-lg-2 col-sm-3 col-3 order-1">
                        <div class="logo_container">
                            <div class="logo"><a href="{{ url('/') }}"><img src="{{ asset('public/frontend/images/logo1.png')}}" alt=""></a></div>
                        </div>
                    </div>

                       @php
                      $category = DB::table('categories')->get();
                       @endphp
                    <!-- Search -->
                    <div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
                        <div class="header_search">
                            <div class="header_search_content">
                                <div class="header_search_form_container">
                                    <form  method="post" action="{{ route('product.search') }}" class="header_search_form clearfix">
                                        @csrf
                                        <input type="search" required="required" class="header_search_input" placeholder="পন্য খুজুন..." name="search">
                                        <div class="custom_dropdown">
                                            <div class="custom_dropdown_list">
                                                <span class="custom_dropdown_placeholder clc">সব ক্যাটাগরি</span>
                                                <i class="fa fa-chevron-down"></i>
                                                <ul class="custom_list clc">
                                                  @foreach($category as $row)
                                                    <li><a class="clc" href="#">{{ $row->category_name }}</a></li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        </div>
                                        <button type="submit" class="header_search_button trans_300" value="Submit"><img src="{{ asset('public/frontend/images/search.png')}}" alt=""></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Wishlist -->
                    <div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
                        <div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
                            <div class="wishlist d-flex flex-row align-items-center justify-content-end">
                             @guest

                             @else

                               @php
                                 $wishlist = DB::table('wishlists')->where('user_id',Auth::id())->get();
                               @endphp

                                <!-- Wishlist -->
                                <div class="cart">
                                    <div class="cart_container d-flex flex-row align-items-center justify-content-end">
                                        <div class="cart_content">
                                            <div class="cart_text">
                                                <a href="{{ route('user.wishlist') }}">
                                                <div class="cart_icon">
                                                    <img src="{{ asset('public/frontend/images/heart.png')}}" alt="">
                                                    <span class="cart_count"><span>{{ entobn(count($wishlist)) }}</span>
                                                </div>
                                            </div>

                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <!--<div class="wishlist_icon"><img src="{{ asset('frontend/images/heart.png')}}" alt=""></div>-->
                                <!--<div class="wishlist_content">-->
                                <!--    <div class="wishlist_text"><a href="#"><span class="wishlist_count">{{entobn( count($wishlist)) }}</span> Wishlist</a></div>-->

                                <!--</div>-->
                            </div>

                            @endguest

                            <!-- Cart -->
                            <div class="cart">
                                <div class="cart_container d-flex flex-row align-items-center justify-content-end">

                                    <div class="cart_content">
                                        <div class="cart_text">
                                            <a href="{{ route('show.cart') }}">
                                            <div class="cart_icon">
                                                <img src="{{ asset('public/frontend/images/cart.png')}}" alt="">
                                                <span class="cart_count"><span>{{ entobn(Cart::count()) }}</span>
                                            </div>
                                        </div>
                                        {{-- কার্ট --}}
                                        </a>
                                    </div>
                                        <div class="cart_price">${{entobn( Cart::subtotal() )}}</div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Navigation -->


    <!-- Characteristics -->

    @yield('content')



<!-- Footer -->
 @php
$setting = DB::table('sitesetting')->first();

 @endphp
    <footer class="footer">
        <div class="container">
            <div class="row" id="footer">

                <div class="col-lg-4 footer_col">
                    <div class="footer_column footer_contact">
                        <div class="logo_container">
                            <div class="logo"><a href="#">{{ $setting->company_name }}</a></div>
                        </div>
                        <div class="footer_title">কোন প্রশ্ন? এখনি ফোন করুন ২৪/৭</div>
                        <div class="footer_phone">{{ entobn($setting->phone_two) }}</div>
                        <div class="footer_contact_text">
                            <p>{{ $setting->company_address }}</p>
                        </div>
                        <div class="footer_social">
                            <ul>
                                <li><a href="{{ $setting->facebook }}"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="{{ $setting->twitter }}"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="{{ $setting->youtube }}"><i class="fab fa-youtube"></i></a></li>
                                <li><a href="{{ $setting->instagram }}"><i class="fab fa-google"></i></a></li>

                            </ul>
                        </div>
                    </div>
                </div>

                @php
                $category = DB::table('categories')->limit('7')->get();;
                @endphp
                <div class="col-lg-2">
                    <div class="footer_column">
                        <div class="footer_title">ক্যাটাগরি</div>

                        <ul class="footer_list">
                            @foreach($category as $cat)
                            <li><a href="{{ url('allcategory/'.$cat->id) }}">{{ $cat->category_name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    @php
                    $category2 = DB::table('categories')->skip('7')->limit('7')->get();;
                    @endphp
                        <ul class="footer_list">
                            @foreach($category2 as $cat)
                            <li><a href="{{ url('allcategory/'.$cat->id) }}">{{ $cat->category_name }}</a></li>
                            @endforeach
                        </ul>
                </div>
                <div class="col-lg-4">
                    <div class="apps">
                        <ul class="apps_list">
                            <li><a href="#"><img src="{{ asset('public/frontend/images/playapp.png')}}" alt=""></a></li>
                            <li><a href="#"><img src="{{ asset('public/frontend/images/iapp.png')}}" alt=""></a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!--============Back To Top===========-->
  <a id="button" class="backtotop"> <i class="fas fa-angle-up fa-2x"></i> </a>
    </footer>

    <!-- Copyright -->

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col">

                    <div class="copyright_container d-flex flex-sm-row flex-column align-items-center justify-content-start">
                        <div class="copyright_content">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved  <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://nursupershop.com" target="_blank">NurSuperShop</a>
</div>
                        <div class="logos ml-sm-auto">
                            <ul class="logos_list">
                                <li><a href="#"><img src="{{ asset('public/frontend/images/logos_1.png')}}" alt=""></a></li>
                                <li><a href="#"><img src="{{ asset('public/frontend/images/logos_2.png')}}" alt=""></a></li>
                                <li><a href="#"><img src="{{ asset('public/frontend/images/logos_3.png')}}" alt=""></a></li>
                                <li><a href="#"><img src="{{ asset('public/frontend/images/logos_4.png')}}" alt=""></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!--Order Traking Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">আপনার স্ট্যাটাস কোড</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
   <form method="post" action="{{ route('order.tracking') }}">
    @csrf
    <div class="modal-body">
        <label> স্ট্যাটাস কোড</label>
        <input type="text" name="code" required="" class="form-control" placeholder="আপনার অর্ডার কোড নাম্বারটি দিন">
    </div>

     <button class="btn btn-danger" type="submit">ট্র্যাক করুন</button>

   </form>


      </div>

    </div>
  </div>
</div>










<script src="{{ asset('public/frontend/js/jquery-3.3.1.min.js')}}"></script>
<script src="{{ asset('public/frontend/styles/bootstrap4/popper.js')}}"></script>
<script src="{{ asset('public/frontend/styles/bootstrap4/bootstrap.min.js')}}"></script>
<script src="{{ asset('public/frontend/plugins/greensock/TweenMax.min.js')}}"></script>
<script src="{{ asset('public/frontend/plugins/greensock/TimelineMax.min.js')}}"></script>
<script src="{{ asset('public/frontend/plugins/scrollmagic/ScrollMagic.min.js')}}"></script>
<script src="{{ asset('public/frontend/plugins/greensock/animation.gsap.min.js')}}"></script>
<script src="{{ asset('public/frontend/plugins/greensock/ScrollToPlugin.min.jsplugins/greensock/ScrollToPlugin.min.js')}}"></script>
<script src="{{ asset('public/frontend/plugins/OwlCarousel2-2.2.1/owl.carousel.js')}}"></script>
<script src="{{ asset('public/frontend/plugins/slick-1.8.0/slick.js')}}"></script>
<script src="{{ asset('public/frontend/plugins/easing/easing.js')}}"></script>
<script src="{{ asset('public/frontend/js/custom.js')}}"></script>
<script src="{{ asset('public/frontend/js/product_custom.js')}}"></script>


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>


   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
  <script src="{{ asset('https://unpkg.com/sweetalert/dist/sweetalert.min.js')}}"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

        <script type="text/javascript">
            $(document).ready(function () {

                $('#livesearch').on('keyup',function() {
                    var query = $(this).val();
                    $.ajax({

                        url:"{{ route('product.search') }}",

                        type:"GET",

                        data:{'search':query},

                        success:function (data) {

                            $('#search_list').html(data);
                        }
                    })
                    // end of ajax call
                });


                $(document).on('click', 'li', function(){

                    var value = $(this).text();
                    $('#livesearch').val(value);
                    $('#search_list').html("");
                });
            });
        </script>


 <script>
        @if(Session::has('messege'))
          var type="{{Session::get('alert-type','info')}}"
          switch(type){
              case 'info':
                   toastr.info("{{ Session::get('messege') }}");
                   break;
              case 'success':
                  toastr.success("{{ Session::get('messege') }}");
                  break;
              case 'warning':
                 toastr.warning("{{ Session::get('messege') }}");
                  break;
              case 'error':
                  toastr.error("{{ Session::get('messege') }}");
                  break;
          }
        @endif
     </script>


 <script>
         $(document).on("click", "#return", function(e){
             e.preventDefault();
             var link = $(this).attr("href");
                swal({
                  title: "Are you Want to Return?",
                  text: "Once Return, this will return your money!",
                  icon: "warning",
                  buttons: true,
                  dangerMode: true,
                })
                .then((willDelete) => {
                  if (willDelete) {
                       window.location.href = link;
                  } else {
                    swal("Cancel!");
                  }
                });
            });
    </script>


<script type="text/javascript">
    (function($) {
    $(function() {
        $('#myCarousel').carousel({
        interval: 3000,
     });
    });
})(jQuery)

</script>



 <!--Back To Top-->

<script type="text/javascript">
    $(document).ready(function() {
  var btn = $('#button');
  var offset = 300;
  var duration = 500;
  jQuery(window).scroll(function() {
    if ($(window).scrollTop() > 200) {
      btn.addClass('show');
    } else {
      btn.removeClass('show');
    }
  });
$('.backtotop').click(function(event) {
    event.preventDefault();
    jQuery('html, body').animate({
      scrollTop: 0
    }, duration);
    return false;
  })
});
</script>

<script>
    function myFunction() {
      var x = document.getElementById("myDIV");
      if (x.style.visibility === "hidden") {
        x.style.visibility = "visible";
      } else {
        x.style.visibility = "hidden";
      }
    }
</script>

</body>

</html>
