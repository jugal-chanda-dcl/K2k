@extends('layouts.app')


@section('style')
<link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
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
          <th scope="col">Rating</th>
          <!-- if auth user is teacher  -->
          @if(Auth::user()->role->id == 2)
              <th scope="col">Auto Aprove</th>
          @endif
          <th scope="col">Action</th>
        </tr>

      </thead>
      <tbody>
        @foreach($subjects as $subject)
        <tr>
          <td>{{$subject->name}}</td>
          <td>{{ $subject->class }}</td>
          <td>{{ $subject->rating }}</td>
          @if(Auth::user()->role->id == 2)
          <td>
            <input type="checkbox" data-toggle="toggle" data-onstyle="success" data-offstyle="danger" onchange="toggleAutoAprove($(this))"  data-url="{{ route('subject.toggle_aprove',['subject'=>$subject]) }}"  @if($subject->auto_aprove) checked @endif >
          </td>
          @endif
          <td class="">
            <a href="{{ route('rating.create',['subject' => $subject ]) }}">Give Rating</a>
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('subject.destroy')))
            <form class="d-inline" action="{{ route('subject.destroy',['subject'=>$subject->id])}}" method="post">
                  @csrf
                  @method('delete')
                  <button type="submit" name="button"  class="btn btn-danger btn-sm mb-2">Delete</button>

            </form>
            @endif
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('subject.edit')))
            <a href="{{ route('subject.edit',['subject'=>$subject->id]) }}" class="btn btn-info btn-sm mb-2">Edit</a><br>
            @endif
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('subject.topics')))
            <a href="{{ route('subject.topics',['subject'=>$subject->id]) }}" class="btn btn-info btn-sm mb-2">Topics</a>
            @endif
            @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('subject.subscriptions')))
            <a href="{{ route('subject.subscriptions',['subject'=>$subject]) }}" class="btn btn-info btn-sm mb-2">Suscriptions</a>
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

@section('script')

<script type="text/javascript">

function setSession(key,txt) {
  sessionStorage.setItem(key,txt);
}
function showtoastr(type,key) {
  if(sessionStorage.getItem(key)){
    if(type=='success'){
      toastr.success(sessionStorage.getItem(key));
      sessionStorage.removeItem(key);
    }
  }
}


showtoastr('success','answerSubmit');

function toggleAutoAprove(el) {
  $.ajax({
    url: el.attr('data-url'),
    type: 'get',
    dataType: 'json',
    contentType: 'application/json',
    success: function (responseData) {
      if(responseData){
        toastr.success("Auto Aproved Turned On");
      }else{
        toastr.success("Auto Aproved Turned Off");
      }
    },
  });
}


</script>




@endsection
