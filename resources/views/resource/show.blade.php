@extends('layouts.admin')

@section('style')

@endsection
@section('content')

<div class="card">
  <div class="card-header">
    Resource ({{ $resource->topic }})
    <div class="">
      <a href="{{  route('resource.edit',['resource'=>$resource]) }}" class="btn btn-info btn-sm">Edit</a>
      <form class="d-inline" action="{{  route('resource.destroy',['resource'=>$resource]) }}" method="post">
        @csrf
        @method('delete')
        <button type="submit" name="button" class="btn btn-sm btn-danger">Delete</button>

      </form>
    </div>
  </div>

  <div class="card-body">
    {!! $resource->content !!}
  </div>
</div>

@endsection

@section('script')

@endsection
