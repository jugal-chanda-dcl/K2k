@extends('layouts.app')

@section('style')

@endsection
@section('content')

<div class="card">
  <div class="card-header">
    Resource
  </div>

  <div class="card-body">
    {!! $resource->content !!}
  </div>
</div>

@endsection

@section('script')

@endsection
