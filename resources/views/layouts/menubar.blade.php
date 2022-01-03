
   @php

$category = DB::table('categories')->limit('11')->get();
   @endphp

   <nav class="main_nav">
            <div class="container">
                <div class="row">
                    <div class="col">

                        <div class="main_nav_content d-flex flex-row">

                            <!-- Categories Menu -->

                            <div class="cat_menu_container">
                                <div class="cat_menu_title d-flex flex-row align-items-center justify-content-start" onclick="myFunction()">
                                    <div class="cat_burger"><span></span><span></span><span></span></div>
                                    <div class="cat_menu_text">সব ক্যাটাগরি &nbsp; <i class="fa fa-chevron-down"></i></div>
                                </div>

                                <ul class="cat_menu" id="myDIV">

                                    @foreach($category as $cat)
                                    <li class="hassubs">
                                        <a href="{{ url('allcategory/'.$cat->id) }}">{{ $cat->category_name }}<i class="fas fa-chevron-right"></i></a>
                                        <ul>

                                            @php
                                            $subcategory = DB::table('subcategories')->where('category_id',$cat->id)->get();
                                            @endphp

                                          @foreach($subcategory as $row)
                                            <li class="hassubs">
                                                <a href="{{ url('products/'.$row->id) }}">{{ $row->subcategory_name }}<i class="fas fa-chevron-right"></i></a>

                                            </li>
                                            @endforeach

                                        </ul>
                                    </li>
                                    @endforeach

                                </ul>
                            </div>

                            <!-- Main Nav Menu -->

                            <div class="main_nav_menu ml-auto">
                                <ul class="standard_dropdown main_nav_dropdown">
                                    <li><a href="{{ url('/') }}">প্রচ্ছদ<i class="fas fa-chevron-down"></i></a></li>
                                    <li><a href="{{ route('blog.post') }}">অফার<i class="fas fa-chevron-down"></i></a></li>
                                    <li><a href="{{ route('about') }}">আমাদের সম্পর্কে<i class="fas fa-chevron-down"></i></a></li>
                                    <li><a href="{{ route('contact') }}">যোগাযোগ<i class="fas fa-chevron-down"></i></a></li>



                                </ul>
                            </div>

                            <!-- Menu Trigger -->

                            <div class="menu_trigger_container ml-auto">
                                <div class="menu_trigger d-flex flex-row align-items-center justify-content-end">
                                    <div class="menu_burger">
                                        {{-- <div class="menu_trigger_text">মেনু</div> --}}
                                        <div class="cat_burger menu_burger_inner"><span></span><span></span><span></span></div>
                                    </div>
                                </div>
                            </div>

                        </div>



                    </div>
                </div>
            </div>
        </nav>

        <!-- Menu -->

        <div class="page_menu">
            <div class="container">
                <div class="row">
                    <div class="col">

                        <div class="page_menu_content">

                            <ul class="page_menu_nav">

                                <li><a href="{{ url('/') }}">প্রচ্ছদ</a></li>
                                    <li><a href="{{ route('blog.post') }}">অফার</a></li>
                                    <li><a href="{{ route('about') }}">আমাদের সম্পর্কে</a></li>
                                    <li><a href="{{ route('contact') }}">যোগাযোগ</a></li>

                            {{--
                            <div class="menu_contact">
                                <div class="menu_contact_item"><div class="menu_contact_icon"><img src="{{ asset('public/frontend/images/phone_white.png')}}" alt=""></div>+01617892323</div>
                                <div class="menu_contact_item"><div class="menu_contact_icon"><img src="{{ asset('public/frontend/images/mail_white.png')}}" alt=""></div><a href="mailto:support@nursupershop.com">support@nursupershop.com</a></div>
                            </div> --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page_menu_search">
            <form  method="post" action="{{ route('product.search') }}" class="header_search_form clearfix">
                   @csrf
                   <input type="search" required="required" id="livesearch" class="header_search_input" placeholder="পন্য খুজুন..." name="search">

                   <button type="submit" class="header_search_button trans_300" value="Submit"><img src="{{ asset('public/frontend/images/search.png')}}" alt=""></button>
               </form>
               <div id="search_list"></div>
       </div>

    </header>

