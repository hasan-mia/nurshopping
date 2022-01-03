@extends('layouts.app')

@section('content')
@include('layouts.menubar')

<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_styles.css') }} ">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_responsive.css') }}">

<div class="contact_form">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 offset-lg-1" style="border: 1px solid grey; padding: 20px; border-radius: 25px;">
                    <div class="contact_form_container">
                        <div class="contact_form_title text-center">লগিন করুন</div>

          <form action="{{ route('login') }}" id="contact_form" method="post">
            @csrf

                             <div class="form-group">
    <label for="exampleInputEmail1"> ফোন</label>
    <input type="text" class="form-control @error('email') is-invalid @enderror" name="phone" value="{{ old('email') }}"  aria-describedby="emailHelp"  required="">
             @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
             @enderror
         </div>

      <div class="form-group">
    <label for="exampleInputEmail1">পাসওয়ার্ড</label>
    <input type="password" class="form-control @error('password') is-invalid @enderror"  aria-describedby="emailHelp" name="password" required="">
               @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror

                     </div>


                            <div class="contact_form_button">
              <button type="submit" class="btn btn-info">লগিন করুন</button>
                            </div>
                        </form>
                        <br>
            <a href="{{ route('password.request') }}">আমি পাসওয়ার্ড ভুলে গিয়েছি</a>   <br> <br>

   <button type="submit" class="btn btn-primary btn-block"><i class="fab fa-facebook-square"></i> ফেসবুকের মাধ্যমে লগিন করুন </button>

    <a href="{{ url('/auth/redirect/google') }}" class="btn btn-danger btn-block"><i class="fab fa-google"></i> গুগুল দিয়ে লগিন করুন </a>

                    </div>
                </div>


<div class="col-lg-5 offset-lg-1" style="border: 1px solid grey; padding: 20px; border-radius: 25px;">
                    <div class="contact_form_container">
                        <div class="contact_form_title text-center">প্রথমবার হলে রেজিস্ট্রেশন করুন</div>

         <form action="{{ route('register') }}" id="contact_form" method="post">
             @csrf

          <div class="form-group">
    <label for="exampleInputEmail1">আপনার নাম</label>
    <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="আপনার পুরো নাম দিন " name="name" required="">
         </div>


        <div class="form-group">
    <label for="exampleInputEmail1">মোবাইল</label>
    <input type="text" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}"  aria-describedby="emailHelp" placeholder="আপনার ফোন নাম্বার দিন " required="">
         </div>


         <div class="form-group">
    <label for="exampleInputEmail1">ইমেইল</label>
    <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}"  aria-describedby="emailHelp" placeholder="আপনার ইমেইল দিন যদি থাকে ">
         </div>



         <div class="form-group">
    <label for="exampleInputEmail1">পাসওয়ার্ড</label>
    <input type="password" class="form-control"  aria-describedby="emailHelp" placeholder="আপনার ৮ অক্ষরের পাসওয়ার্ড দিন " name="password" required="">
         </div>

         <div class="form-group">
    <label for="exampleInputEmail1">পুনরায় পাসওয়ার্ড</label>
    <input type="password" class="form-control"  aria-describedby="emailHelp" placeholder="ঐ পাসওয়ার্ডতি আবারও দিন " name="password_confirmation" required="">
         </div>





                            <div class="contact_form_button">
        <button type="submit" class="btn btn-info">রেজিস্ট্রেশন করুন</button>
                            </div>
                        </form>

                    </div>
                </div>







            </div>
        </div>
        <div class="panel"></div>
    </div>












@endsection
