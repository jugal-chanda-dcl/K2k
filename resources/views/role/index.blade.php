@extends('layouts.admin')

@section('content')

<div class="card">
  <div class="card-header">All Roles</div>

  <div class="card-body">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">Role Name</th>
          <th scope="col">Action</th>
        </tr>

      </thead>
      <tbody>
        @foreach($roles as $role)
        <tr>
          <td>{{$role->name}}</td>
          <td>
            <form class="d-inline" action="{{ route('role.destroy',['role'=>$role->id])}}" method="post">
                  @csrf
                  @method('delete')
                  <button type="submit" name="button"  class="btn btn-danger btn-sm">Delete</button>

            </form>
            <a href="{{ route('role.edit',['role' => $role->id]) }}" class="btn btn-info btn-sm">Edit</a>
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</div>

@endsection
