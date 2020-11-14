@extends('layouts.app')

@section('style')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
@endsection
@section('content')


@foreach($learns as $learn)

<div class="card">
  <div class="card-header">{{ $learn->topic->name }}</div>
  <div class="card-body">
    {!!  Str::limit($learn->content, $limit = 150, $end = '...') !!}
  </div>
  <div class="card-footer">
    <a href="{{ route('learn.show',['learn'=>$learn->id]) }}" class="btn btn-sm btn-info">Show</a>
  </div>

</div>

@endforeach

@endsection

@section('script')
<script>
  $('#content').summernote({
    placeholder: 'Hello Bootstrap 4',
    tabsize: 2,
    height: 100
  });
</script>

@endsection
