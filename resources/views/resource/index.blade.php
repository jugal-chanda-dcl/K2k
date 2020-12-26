@extends('layouts.admin')

@section('style')

@endsection
@section('content')

@if($resources->count() > 0)

  @foreach($resources as $resource)
  <div class="card mb-2">
    <div class="card-header">
      {{ $resource->topic }}
    </div>
    <div class="card-body">
      {!! Str::limit($resource->content,$limit = 500, $end = '...')  !!}
    </div>
    <div class="card-footer ">
      <a href="{{ route('resource.show',['resource'=>$resource]) }}" class="btn btn-info btn-sm float-right mx-2">Read More</a>
      <a href="{{ route('resource.edit',['resource'=>$resource]) }}" class="btn btn-info btn-sm float-right mx-2">Edit</a>
      <form class="d-inline float-right" action="{{  route('resource.destroy',['resource'=>$resource]) }}" method="post">
        @csrf
        @method('delete')
        <button type="submit" name="button" class="btn btn-sm btn-danger">Delete</button>

      </form>
    </div>

  </div>
  @endforeach
@else
  <div class="card">
    <div class="card-body text-center">
      No resouce available.
    </div>

  </div>
@endif

@endsection

@section('script')

@endsection
