<!-- @if(Session::has('errors'))
<p class='alert alert-danger'>{{Session::get('errors')}}</p>
@endif

@foreach($errors->all() as $error)
<p class='alert alert-danger'>{{$error}}</p>
@endforeach -->
@if(count($errors) > 0)
	<div class="alert alert-danger">
		@foreach($errors->all() as $error)
			{{$error}}<br>
		@endforeach
	</div>
@endif


@if(Session('loi'))
<p class='alert alert-danger'>{{Session('loi')}}</p>
@endif
