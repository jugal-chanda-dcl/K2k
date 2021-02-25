@extends('layouts.app')

@section('style')

<style media="screen">
.not_checked {
  background-color: rgba(220,53,59,0.4);
}
.checked {
  background-color: rgba(40,167,69,0.4);
}

</style>
@endsection

@section('content')

<div class="card">
  <div class="card-header">Riview Answers</div>

  <div class="card-body">
    @if($answers->count() > 0)
    <table class="table">
      <thead>
        <tr>
          <th scope="col">Student Name</th>
          <th scope="col">Email</th>
          <th scope="col">Answer Scripts</th>
          <th scope="col">Score</th>
        </tr>

      </thead>
      <tbody>
        @foreach($answers as $answer)
        <tr class="checked">
          <td>{{$answer->user->name}}</td>
          <td>{{ $answer->user->email }}</td>
          <td class=""> <a href="{{ route('answer.script',['answer'=>$answer]) }}">Answer Scripts</a> </td>
          <td>{{ $answer->score }}/{{ $answer->total }}</td>
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

  showtoastr('success','scriptChecked');

  </script>
@endsection
