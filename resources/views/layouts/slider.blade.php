<!-- Banner -->

@php
$slider = DB::table('products')
        ->join('categories','products.category_id','categories.id')
        ->join('brands','products.brand_id','brands.id')
        ->select('products.*','brands.brand_name','categories.category_name')
        ->where('main_slider',1)->orderBy('id','DESC')->limit(3)
        ->get();
@endphp

<section id="slider">
    <div class="container">
        <div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
              <div class="carousel-inner">
                @foreach($slider as $key => $product)
                <div class="carousel-item {{$key == 0 ? 'active' : '' }}">
                  <div class="mask flex-center">
                    <div class="container">
                      <div class="row align-items-center">
                        <!--<div class="col-md-6 col-6 order-md-1 order-2">-->
                          <!--<h4>{{ $product->product_name }}</h4>-->
                         <!--{{$product->product_details}}-->
                            <!--<a href="{{ url('product/details/'.$product->id.'/'.$product->product_name) }}" data-tip="Quick View">কিনুন</a>-->
                        <!-- </div>-->
                        <div class="col-md-12 col-12" id="full-width">
                            <a href="{{ url('product/details/'.$product->id.'/'.$product->product_name) }}">
                              <img src="{{ asset( $product->image_one  )}}" class="mx-auto" alt="slide">
                            </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                @endforeach
             </div>
                  <!--  <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev"> -->
                  <!--<span class="carousel-control-prev-icon" aria-hidden="true"></span> -->
                  <!--<span class="sr-only">Previous</span> </a> -->
                  <!--    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next"> -->
                  <!--    <span class="carousel-control-next-icon" aria-hidden="true"></span> -->
                  <!--    <span class="sr-only">Next</span> -->
                  <!--  </a> -->
                   <!-- Brands -->

    <!--<div class="brands">-->
    <!--    <div class="container">-->
    <!--        <div class="row">-->
    <!--            <div class="col">-->
    <!--                <div class="brands_slider_container">-->
    <!--
                        <!-- Brands Slider -->

    <!--                    <div class="owl-carousel owl-theme brands_slider">-->
    <!--
    <!--                        <div class="owl-item">-->
    <!--                            <div class="brands_item d-flex flex-column justify-content-center">-->
    <!--                                -->
                                    <!--<img src="{{ asset('frontend/images/brands_1.jpg')}}" alt="">-->
    <!--                            </div>-->
    <!--                        </div>-->
    <!--
    <!--                    </div>-->

                        <!-- Brands Slider Navigation -->
    <!--                    <div class="brands_nav brands_prev"><i class="fas fa-chevron-left"></i></div>-->
    <!--                    <div class="brands_nav brands_next"><i class="fas fa-chevron-right"></i></div>-->

    <!--                </div>-->
    <!--            </div>-->
    <!--        </div>-->
    <!--    </div>-->
    <!--</div>-->
    <!--end brand-->
         </div>
    </div>
</section>
