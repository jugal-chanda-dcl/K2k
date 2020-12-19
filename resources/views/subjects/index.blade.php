@extends('layouts.app')

@section('content')

<div class="card">
  <div class="card-header">All Subjects && Classes</div>

  <div class="card-body">
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
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('subject.destroy')))
            <form class="d-inline" action="{{ route('subject.destroy',['subject'=>$subject->id])}}" method="post">
                  @csrf
                  @method('delete')
                  <button type="submit" name="button"  class="btn btn-danger btn-sm">Delete</button>

            </form>
            @endif
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('subject.edit')))
            <a href="{{ route('subject.edit',['subject'=>$subject->id]) }}" class="btn btn-info btn-sm">Edit</a>
            @endif
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('subject.topics')))
            <a href="{{ route('subject.topics',['subject'=>$subject->id]) }}" class="btn btn-info btn-sm">Topics</a>
            @endif
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</div>

@endsection
