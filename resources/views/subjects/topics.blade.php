@extends('layouts.app')

@section('content')

<div class="card">
  <div class="card-header">
    <div class="">
        Class: {{ $subject->class }}
    </div>
    <div class="">
        Subject : {{ $subject->name }}
    </div>
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
          <td>
            <div class="mb-2">
              {{ $topic->name }}
            </div>
            @if(Auth::user()->role->id == 1)
            <strong class="border border-primary p-1">{{ Auth::user()->practiceStatus($topic->learn->question->id) }}</strong>
            @endif

          </td>
          <td class="">
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('topic.learn')))
            <a href="{{route('topic.learn',['topic'=>$topic])}}" class="btn btn-info btn-sm">Learn</a>
            @endif
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('learn.questions')))
            <a href="{{ route('learn.questions',['learn'=>$topic->learn]) }}" class="btn btn-sm btn-info">View Questions and Practice</a>
            @endif
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('topic.destroy')))
            <form class="d-inline" action="{{ route('topic.destroy',['topic'=>$topic->id]) }}" method="post">
                  @csrf
                  @method('delete')
                  <button type="submit" name="button"  class="btn btn-danger btn-sm">Delete</button>

            </form>
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
