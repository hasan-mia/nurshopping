<!-- =======All Category  Plan======== -->
  <section id="all-category-link">
      <div class="container my-4 mx-auto">
        <div class="row">
            <div class="col-6 col-md-3 col-sm-3">
              <a href="#">
                <div class="cat-img justify-content-center">
                  <img src="{{ asset('public/category/freeshipping.png')}}" alt="">
                  <div class="cat-text">ফ্রি শিপিং</div>
                </div>
              </a>
            </div>
            <div class="col-6 col-md-3 col-sm-3">
              <a href="#">
                <div class="cat-img justify-content-center">
                  <img src="{{ asset('public/category/digitalseba.gif')}}" alt="">
                  <div class="cat-text">ডিজিটাল সেবা</div>
                </div>
              </a>
            </div>
            <div class="col-6 col-md-3 col-sm-3">
              <a href="#">
                <div class="cat-img justify-content-center">
                  <img src="{{ asset('public/category/bajarsodai.png')}}" alt="">
                 <div class="cat-text"> বাজার সদাই </div>
                </div>
              </a>
            </div>
            <div class="col-6 col-md-3 col-sm-3">
              <a href="#">
                <div class="cat-img justify-content-center">
                  <img src="{{ asset('public/category/foreingsopno.gif')}}" alt="">
                  <div class="cat-text">বিদেশী পন্য</div>
                </div>
              </a>
            </div>
        </div>
        <!-- end row -->

    <!-- title -->
    <!-- <div class="text-muted mt-1 text-center display-4">Our Category</div> -->
    <!-- Popular Categories -->
        @php
        $category = DB::table('categories')->limit('11')->get();
        @endphp

          <div class="row my-3">
              @foreach($category as $cat)
              <div class="col-lg-2 col-md-2 col-sm-6 col-6">
                <a href="{{ url('allcategory/'.$cat->id) }}" class="">
                  <div class="category-item">
                      <div class="category-item__image">
                        <img src="https://storage.googleapis.com/bponi/shop/5c83731f-f52e-4ec8-a181-5d31b5660b89.webp" alt="">
                      </div>
                    <div class="category-item__title">{{ $cat->category_name  }}</div>
                  </div>
                </a>
              </div>
              @endforeach

              <div class="col-lg-2 col-md-2 col-sm-6 col-6">
                <a href="{{ route('allcat') }}" class="">
                  <div class="category-item">
                      <div class="category-item__image">
                        <img src="https://storage.googleapis.com/bponi/shop/5c83731f-f52e-4ec8-a181-5d31b5660b89.webp" alt="">
                      </div>
                    <div class="category-item__title">সব ক্যাটাগরি</div>
                  </div>
                </a>
              </div>
              <!-- <div class="col-lg-2 col-md-2 col-sm-6 col-6">-->
              <!--  <a href="/category/1-tk-haat/oq/" class="">-->
              <!--    <div class="category-item">-->
              <!--        <div class="category-item__image">-->
              <!--          <img src="https://storage.googleapis.com/bponi/shop/5c83731f-f52e-4ec8-a181-5d31b5660b89.webp" alt="">-->
              <!--        </div>-->
              <!--      <div class="category-item__title">1 Tk Haat</div>-->
              <!--    </div>-->
              <!--  </a>-->
              <!--</div>-->

          </div>
      </div>
  </section>
