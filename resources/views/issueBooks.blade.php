@extends('layouts.master')

@section('content')
    <div class="row">
        @include('_message')
        <form class="" action="{{route('issueBooks')}}" method="post">
            {{ csrf_field() }}
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">First Portion</div>
                    <div class="panel-body">
                        <select name="member_id" class="form-control">
                            <option value="">Select a Member</option>
                            @foreach(App\member::orderBy('memName','asc')->get() as $member)
                                <option value="{{$member->id}}">{{$member->memName}}</option>
                            @endforeach
                        </select>
                        <div class="form-group">
                            <label for="bookname">Book Name</label>
                            <input type="text" class="form-control" name="bookname" value="" id="bookname"
                                   placeholder="Book Name">
                        </div>
                        <div class="form-group">
                            <label for="bookissueid">Book ID</label>
                            <input type="text" class="form-control" name="bookissueid" value="" id="bookissueid"
                                   placeholder="Book ID">
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">Second Portion</div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="issueDate">Issue Date</label>
                            <input type="date" class="form-control" name="issueDate" id="issueDate">
                        </div>
                        <div class="form-group">
                            <label for="retDate">Return Date</label>
                            <input type="date" name="retDate" class="form-control" id="retDate">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary" name="button">Issue Books</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </div>


@endsection
