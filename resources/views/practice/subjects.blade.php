@extends('layouts.app')


@section('style')

@endsection

@section('content')

<div class="card">

  <div class="card-header">All Subjects</div>
  <div class="bg-success p-2 d-none my-1" id="status">

  </div>
  <div class="card-body">
    @if($subjects->count() > 0)
    <table class="table">
      <thead>
        <tr>
          <th scope="col">Subject Name</th>
          <th scope="col">Class</th>
          <th scope="col">Action</th>
        </tr>

      </thead>
      <tbody>
        @foreach($subjects as $subject)
        <tr>
          <td>{{$subject->name}}</td>
          <td>{{ $subject->class }}</td>
          <td class="">
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('subject.topics')))
            <a href="{{ route('practices.topics',['subject'=>$subject]) }}" class="btn btn-info btn-sm mb-2">Topic Wise Questions</a>
            @endif
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
    @else
    <p class="text-center">No Subject Created yet</p>
    @endif
  </div>
</div>

@endsection
