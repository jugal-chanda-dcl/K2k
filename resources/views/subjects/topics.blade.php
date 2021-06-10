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
            <div>
                <form class="my-1" action="" method="get">
                    <div class="row">
                        <div class="col-md-4 my-1">
                            <label class="sr-only" for="class">Class</label>
                            <select name="search" class="form-control" id="class" placeholder="Hello">
                                <option disabled selected>--Search Topic--</option>
                                @foreach ($topics as $topic)
                                    <option value="{{ $topic->id }}" @if (request()->search == $topic->id) selected @endif>
                                        {{ $topic->name }}
                                    </option>
                                @endforeach

                            </select>
                        </div>
                        <div class="text-center">
                            <button type="submit" name="" class="btn btn-info btn-sm px-3">Search</button>
                            <a href="{{ route('subject.topics', ['subject' => request()->subject]) }}"
                                class="btn btn-primary btn-sm px-3">Clear</a>
                        </div>

                    </div>
                </form>
            </div>
            @if (Auth::user()->hasPermission(Route::getRoutes()->getByName('learn.create')))
                <a href="{{ route('learn.create', ['subject' => $subject]) }}" class="btn btn-sm btn-success">Create Learning
                    Materials</a>
            @endif
        </div>

        <div class="card-body">
            @if ($topics->count() > 0)
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Topic Name</th>
                            <th scope="col"> Learn</th>
                            @if(auth()->user()->role->id == 1)
                            <th scope="col">Attempt</th>
                            <th scope="col">Reviewed</th>
                            <th scope="col">Score</th>
                            @endif
                            <th scope="col">Action</th>
                        </tr>

                    </thead>
                    <tbody>

                        @foreach ($topics as $topic)


                            <tr>
                                <td>{{ $topic->name }}</td>
                                <td>
                                    @if (Auth::user()->hasPermission(Route::getRoutes()->getByName('topic.learn')))
                                        <a href="{{ route('topic.learn', ['topic' => $topic]) }}"
                                            class="btn btn-info btn-sm">Learn</a>
                                    @endif
                                </td>
                                @if(auth()->user()->role->id == 1)
                                <td>
                                  {{ $topic->attempt() }}
                                </td>
                                <td>
                                  {{ $topic->reviewed() }}
                                </td>
                                <td>{{  $topic->score()  }}</td>
                                @endif
                                <td>
                                    @if (Auth::user()->hasPermission(Route::getRoutes()->getByName('answer.submit_view')))
                                        @if ($topic->learn->question)
                                            <a href="{{ route('answer.submit_view', ['question' => $topic->learn->question]) }}"
                                                class="btn btn-sm btn-info">View Questions and Practice</a>
                                        @else
                                              <a href="" class="btn btn-info btn-sm">No Question Uploded</a>
                                        @endif
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
