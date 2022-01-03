@extends('layouts.app')

@section('content')
@include('layouts.menubar')

@php
 $site = DB::table('sitesetting')->first();

@endphp

<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_responsive.css') }}">

	<!-- Contact Info -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-12">
                <div class="contact_info text-center">
                    <h2>আমাদের সম্পর্কে</h2>
                    <hr>
				</div>
			</div>
		</div>
	</div>
	<!-- Contact Form -->


@endsection
