@extends('layouts.app')

@section('content')

<div class="card">
  <div class="card-header">
    All topics of {{ $subject->name }}(Class {{ $subject->class }})
    @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('learn.create')))
    <a href="{{ route('learn.create',['subject'=>$subject]) }}" class="btn btn-sm btn-success">Create Learning Materials</a>
    @endif
  </div>

  <div class="card-body">
    @if($topics->count() > 0)
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
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('topic.learn')))
            <a href="{{route('topic.learn',['topic'=>$topic])}}" class="btn btn-info btn-sm">Learn</a>
            @endif

          </td>
        </tr>
        @endforeach


      </tbody>
    </table>
    @else
    <p class="text-center">No Topics created yet</p>
    @endif
  </div>
</div>

@endsection
