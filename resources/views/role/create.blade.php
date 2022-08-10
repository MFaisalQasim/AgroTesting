@extends('layouts.master')

@push('css')
@endpush

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Create Role</h3>
                    <a class="btn btn-success pull-right" href="{{url('role-management')}}"><i class="icon-eye"></i>
                        &nbsp; View Roles</a>
                    <div class="clearfix"></div>
                    <hr>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <form class="form-horizontal" method="post" action="{{url('role/create')}}">
                                {{csrf_field()}}
                                <div class="form-group">
                                    <label for="name" class="col-sm-3 control-label">Role Name</label>
                                    <div class="col-sm-7">
                                        <input type="text"
                                               class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}"
                                               name="name" value="{{ old('name') }}" autofocus>
                                        @if ($errors->has('name'))
                                            <span class="invalid-feedback">
                                <strong>{{ $errors->first('name') }}</strong>
                                </span>
                                        @endif </div>
                                </div>

                                <table class="table table-striped">
                                    <tr>
                                        <th colspan="6" class="text-center">Grant Permissions</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center">Menu</th>
                                        <th class="text-center">View</th>
                                        <th class="text-center">Add</th>
                                        <th class="text-center">Edit</th>
                                        <th class="text-center">Delete</th>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td class="text-center">
                                            <input type="checkbox" value="" name="all_view" id="all_view">
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="" name="all_add" id="all_add">
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="" name="all_edit" id="all_edit">
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="" name="all_delete" id="all_delete">
                                        </td>
                                    </tr>


                                    @foreach($laravelAdminMenus->menus as $section)
                                        @if(count(collect($section->items)) > 0)
                                            @foreach($section->items as $key=>$menu)
                                                @php @endphp
                                                <tr>
                                                    <td class="text-center">{{ $menu->title }}</td>
                                                    @php $permissions = \App\Permission::permissionList($menu->title);
                                                    @endphp

                                                    <td class="text-center">
                                                        <input type="checkbox" class="view" name="permissions[]"
                                                               value="{{$permissions['view']}}">
                                                    </td>
                                                    <td class="text-center">
                                                        <input type="checkbox" class="add" name="permissions[]"
                                                               value="{{$permissions['add']}}">
                                                    </td>
                                                    <td class="text-center">
                                                        <input type="checkbox" class="edit" name="permissions[]"
                                                               value="{{$permissions['edit']}}">
                                                    </td>
                                                    <td class="text-center">
                                                        <input type="checkbox" class="delete" name="permissions[]"
                                                               value="{{$permissions['delete']}}">
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @endif
                                    @endforeach
                                    <tr>
                                        <td class="text-center">Blog</td>
                                        <td class="text-center">
                                            <input type="checkbox" class="view" name="permissions[]"
                                                   value="{{$blog_permissions['view']}}">
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" class="add" name="permissions[]"
                                                   value="{{$blog_permissions['add']}}">
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" class="edit" name="permissions[]"
                                                   value="{{$blog_permissions['edit']}}">
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" class="delete" name="permissions[]"
                                                   value="{{$blog_permissions['delete']}}">
                                        </td>
                                    </tr>
                                </table>

                                <div class="form-group m-b-0">
                                    <div class="col-md-12 text-center">
                                        <button type="submit" class="btn btn-info waves-effect waves-light m-t-10">
                                            Grant
                                        </button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>

                </div>
            </div>
        </div>


        @include('layouts.partials.right-sidebar')
    </div>
@endsection

@push('js')
    <script src="{{asset('plugins/components/toast-master/js/jquery.toast.js')}}"></script>
    <script>

        @if(\Session::has('message'))
        $.toast({
            heading: 'Success!',
            position: 'top-center',
            text: '{{session()->get('message')}}',
            loaderBg: '#ff6849',
            icon: 'success',
            hideAfter: 3000,
            stack: 6
        });
        @endif

        $(document).ready(function () {
            //Select all View check boxes
            $('#all_view').click(function () {
                if ($(this).attr("checked")) {
                    $('.view').click();
                } else {
                    $('.view').click();
                }
            });

            //Select all Add check boxes
            $('#all_add').click(function () {
                if ($(this).attr("checked")) {
                    $('.add').click();
                } else {
                    $('.add').click();
                }
            });

            //Select all Edit check boxes
            $('#all_edit').click(function () {
                if ($(this).attr("checked")) {
                    $('.edit').click();
                } else {
                    $('.edit').click();
                }
            });

            //Select all Delete check boxes
            $('#all_delete').click(function () {
                if ($(this).attr("checked")) {
                    $('.delete').click();
                } else {
                    $('.delete').click();
                }
            });
        });
    </script>
@endpush