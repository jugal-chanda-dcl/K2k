@extends('layouts.app')

@section('style')

<style media="screen">

</style>
@endsection

@section('content')

<div class="card">
  <div class="card-header">Subscriptions</div>

  <div class="card-body">

    <table class="table">
      <thead>
        <tr>
          <th scope="col">Student Name</th>
          <th scope="col">Email</th>
          <th scope="col">Phone</th>
          <th scope="col">Action</th>
        </tr>

      </thead>
      <tbody>
        @foreach($users as $user)
          <tr>
            <td>{{ $user->name }}</td>
            <td>{{ $user->email }}</td>
            <td>{{ $user->phone }}</td>
            <td>
              @if($subject->subscriptionStatus($user->id) == "not aproved")
              {{ $subject->id }} {{ $user->id }}
                  <a href="{{ route('subject.aprove_subscription',['subject'=>$subject,'user'=>$user]) }}" class="btn btn-success btn-sm">Aprove</a>
              @endif
              @if(Auth::user()->hasPermission(Route::getRoutes()->getByName('subject.delete_subscription')))
                <a href="{{ route('subject.delete_subscription',['subject'=>$subject,'user'=>$user]) }}" class="btn btn-danger btn-sm">Decline</a>
              @endif
            </td>
          </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</div>

@endsection
