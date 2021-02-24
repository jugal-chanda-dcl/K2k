@extends('layouts.admin')

@section('content')

<div class="card">
  <div class="card-header">Update Role</div>

  <div class="card-body">
    <form method="POST" action="{{ route('role.update',['role'=>$role->id]) }}">

        @csrf
        @method('put')

        <div class="form-group mx-2">
            <label for="name" class="">Role Name</label>
            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $role->name }}" required autocomplete="name" autofocus>

            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group mx-2">
            <label for="description" class="">description</label>
            <textarea id="description" class="form-control @error('description') is-invalid @enderror" name="description" value="" required  rows="8" cols="80">{{ $role->description }}</textarea>

              @error('description')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
        </div>
        <div class="form-group mx-2">
          <label for="permissions" class="">Permissions</label>
          @foreach($permissions as $permission)
            <div class="form-check">

              <input class="form-check-input" type="checkbox" name="permissons[]" value="{{ $permission->id }}" id="{{ 'checkboxid'.$permission->id }}"

              @foreach($role->permissions as $temp)
                @if ($permission->id == $temp->id)
                checked
                @endif
              @endforeach
              >
              <label class="form-check-label" for="{{ 'checkboxid'.$permission->id }}">
                {{ $permission->name }}
              </label>
            </div>
          @endforeach

        </div>

        <div class="form-group row justify-content-center mb-1">
          <button type="submit" class="btn btn-primary">
              Store
          </button>
        </div>
    </form>
  </div>
</div>

@endsection
