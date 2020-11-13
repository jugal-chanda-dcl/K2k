@extends('layouts.app')

@section('content')

<div class="card">
  <div class="card-header">All Subjects && Classes</div>

  <div class="card-body">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">Topic Name</th>
          <th scope="col">Class</th>
          <th scope="col">Subject</th>
          <th scope="col">Action</th>
        </tr>

      </thead>
      <tbody>

        @foreach($topics as $topic)
        <tr>
          <td>{{ $topic->name }}</td>
          <td>{{ $topic->subject->class}}</td>
          <td>{{ $topic->subject->name }}</td>
          <td class="">
            <form class="d-inline" action="{{ route('topic.destroy',['topic'=>$topic->id]) }}" method="post">
                  @csrf
                  @method('delete')
                  <button type="submit" name="button"  class="btn btn-danger btn-sm">Delete</button>

            </form>
            <a href="{{route('topic.edit',['topic'=>$topic->id])}}" class="btn btn-info btn-sm">Edit</a>
          </td>
        </tr>
        @endforeach


      </tbody>
    </table>
  </div>
</div>

@endsection
