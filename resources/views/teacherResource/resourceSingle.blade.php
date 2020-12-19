@extends('layouts.app')

@section('style')

@endsection
@section('content')

<div class="card">
  <div class="card-header">
    Resource ({{ $resource->topic }})
  </div>

  <div class="card-body">
    {!! $resource->content !!}
  </div>
</div>

@endsection

@section('script')

@endsection
