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
  $en = array("red", "blue", "green", "black", "white", "yellow", "pink", "gray", "navyblue", "ash", "NoColor");
  $bn = array("লাল", "ব্লু", "সবুজ", "কালো", "সাদা", "হলুদ", "গোলাপি", "ছাই", "নেভিব্লু", "এ্যাশ", "কোন রং নেই");

 return str_replace($en, $bn, $color);
}

function SizeBn($size) {
  $en = array("S", "L", "M", "XL", "XXL", "XXXL", "Free Size");
  $bn = array("এস", "এল", "এম", "এক্স এল", "ডবল এক্স এল", "ট্রিপল এক্স এল", "ফ্রি সাইজ");

 return str_replace($en, $bn, $size);
}
@endphp

<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/shop_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/shop_responsive.css') }}">




<div class="container">
	<div class="row">

	    <div class="col-lg-9 col-sm-12 col-12">

            <div class="row">
                 @foreach ($products as $row)
                <div class="col-md-3 col-sm-4 col-6">
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
    	    <!-- Shop Page Navigation -->
			<div class="shop_page_nav d-flex flex-row">
                {{ $products->links() }}
			</div>
        </div>


	            <div class="col-lg-3 col-sm-12 col-12">
					<!-- Shop Sidebar -->
					<div class="shop_sidebar">
						<div class="sidebar_section">
							<div class="sidebar_title">ক্যাটাগরিসমূহ</div>
    							<ul class="sidebar_categories">
    								@foreach($categorys as $cat)
    								<li><a href="#">{{ $cat->category_name }}</a></li>
    								@endforeach

    							</ul>
						    </div>


    						<div class="sidebar_section">
    							<div class="sidebar_subtitle brands_subtitle">ব্র্যান্ডসমূহ</div>
    							<ul class="brands_list">
    								@php
                                    $brand = DB::table('brands')->where('id',$row->brand_id)->first();
    								@endphp
    								@foreach($brands as $row)
    								<li class="brand"><a href="#">{{ $brand->brand_name }}</a></li>
    								@endforeach

    							</ul>
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
        <h5 class="modal-title" id="exampleModalLavel">Product Quick View</h5>
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
  <li class="list-group-item">Product Code:<span id="pcode"></span> </li>
  <li class="list-group-item">Category: <span id="pcat"></span></li>
  <li class="list-group-item">Subcategory: <span id="psub"></span></li>
  <li class="list-group-item">Brand:<span id="pbrand"></span> </li>
  <li class="list-group-item">Stock: <span class="badge" style="background: green;color: white;" > Available</span> </li>
</ul>

        </div>

        <div class="col-md-4">

        <form method="post" action="{{ route('insert.into.cart') }}">
        @csrf

    <input type="hidden" name="product_id" id="product_id">

         <div class="form-group">
            <label for="exampleInputcolor">Color</label>
            <select name="color" class="form-control" id="color">

             </select>

         </div>

 <div class="form-group">
            <label for="exampleInputcolor">Size</label>
            <select name="size" class="form-control" id="size">

             </select>

         </div>


         <div class="form-group">
     <label for="exampleInputcolor">Quantity</label>
     <input type="number" class="form-control" name="qty" value="1">
         </div>


<button type="submit" class="btn btn-danger">Add to Cart </button>

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
