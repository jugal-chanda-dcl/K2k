@extends('layouts.app')

@section('style')

@endsection
@section('content')

<div class="card">
  <div class="card-header">
    <div class="row">
      <div class="col-lg-10 col-md-8">
        <h4>Content</h4>
        <h5>{{ $content->topic }}</h5>
        <h5>Ammount {{ $content->ammount }} Tk.</h5>
        <h5>Given By: {{ $content->user->name }}</h5>
      </div>
      <div class="col-lg-2 col-md-4 align-self-center">
        @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('content.edit')))
        <a href="{{ route('content.edit',['content'=>$content]) }}" class="btn btn-sm btn-info d-md-block  mb-md-2">Edit</a>
        @endif
        @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('content.destroy')))
        <form class="" action="{{ route('content.destroy',['content'=>$content]) }}" method="post">
          @csrf
          @method('delete')
          <input type="submit" name="button" class="form-control btn btn-sm btn-danger d-md-block" value="Delete"></input>
        </form>
        @endif
      </div>

    </div>

  </div>

  <div class="card-body">
    {!! $content->content !!}

  </div>
</div>

@endsection
