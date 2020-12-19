@extends('layouts.app')

@section('content')

<div class="card">
  <div class="card-header">All topics of {{ $subject->name }}(Class {{ $subject->class }})</div>

  <div class="card-body">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">Topic Name</th>

          <th scope="col">Action</th>
        </tr>

      </thead>
      <tbody>

        @foreach($topics as $topic)
        <tr>
          <td>{{ $topic->name }}</td>
          <td class="">
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('topic.destroy')))
            <form class="d-inline" action="{{ route('topic.destroy',['topic'=>$topic->id]) }}" method="post">
                  @csrf
                  @method('delete')
                  <button type="submit" name="button"  class="btn btn-danger btn-sm">Delete</button>

            </form>
            @endif
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('topic.edit')))
            <a href="{{route('topic.edit',['topic'=>$topic->id])}}" class="btn btn-info btn-sm">Edit</a>
            @endif
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('topic.learn')))
            <a href="{{route('topic.learn',['topic'=>$topic])}}" class="btn btn-info btn-sm">Learn</a>
            @endif

          </td>
        </tr>
        @endforeach


      </tbody>
    </table>
  </div>
</div>

@endsection
