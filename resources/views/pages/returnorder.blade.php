@extends('layouts.app')
@section('content')

@php
$order = DB::table('orders')->where('user_id',Auth::id())->orderBy('id','DESC')->limit(10)->get();
@endphp 

<div class="contact_form">
  <div class="container"> 
    <div class="row">
      <div class="col-8 card">
        <table class="table table-response">
          <thead>
            <tr>
              <th scope="col"> পেমেন্ট টাইপ </th>
              <th scope="col">ফেরত </th>
              <th scope="col">পরিমান </th>
              <th scope="col">তারিখ </th>
              <th scope="col">স্ট্যাটাস  </th>
              
              <th scope="col">এ্যাকশন </th>

            </tr>
          </thead>
          <tbody>
            @foreach($order as $row)
            <tr>
              <td scope="col">{{ $row->payment_type }} </td>

              <td scope="col">

              @if($row->return_order == 0)
              <span class="badge badge-warning">কোন অনুরোধ নেই</span>
              @elseif($row->return_order == 1)
              <span class="badge badge-info">মুলতুবী</span>
                @elseif($row->return_order == 2)
                <span class="badge badge-warning">সফল</span>
                 
              @endif   
        </td>

              <td scope="col">{{ $row->total }}$  </td>
              <td scope="col">{{ $row->date }}  </td>

               <td scope="col">
          @if($row->status == 0)
          <span class="badge badge-warning">মুলতুবী</span>
          @elseif($row->status == 1)
          <span class="badge badge-info">ট্রাকা গ্রহন করা হয়েছে</span>
            @elseif($row->status == 2)
            <span class="badge badge-warning">উন্নতি</span>
            @elseif($row->status == 3)
            <span class="badge badge-success">পৌছানো হয়েছে</span>
            @else
            <span class="badge badge-danger">বাতিল করুন</span>

          @endif  

                </td> 
              
              <td scope="col">
             @if($row->return_order == 0)
  <a href="{{ url('request/return/'.$row->id) }}" class="btn btn-sm btn-danger" id="return"> ফেরত</a>
              @elseif($row->return_order == 1)
              <span class="badge badge-info">মূলত</span>
                @elseif($row->return_order == 2)
                <span class="badge badge-warning">সফলতা</span>
                 
              @endif    
              
               </td>
            </tr>
             @endforeach

          </tbody>
          
        </table>
        
      </div>

      <div class="col-4">
        <div class="card">
          <img src="{{ asset('public/frontend/images/kaziariyan.png') }}" class="card-img-top" style="height: 90px; width: 90px; margin-left: 34%;">
          <div class="card-body">
            <h5 class="card-title text-center">{{ Auth::user()->name }}</h5>
            
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item"> <a href="{{ route('password.change') }}">পাসওয়ার্ড পরিবর্তন</a>  </li>
             <li class="list-group-item">Edit Profile</li>
              <li class="list-group-item"><a href="{{ route('success.orderlist') }}"> অর্ডার ফেরত দিন</a> </li> 
          </ul>

          <div class="card-body">
            <a href="{{ route('user.logout') }}" class="btn btn-danger btn-sm btn-block">লগআউট</a>
            
          </div>
          
        </div>
        
      </div>

    </div>

  </div>
  

</div>





@endsection
