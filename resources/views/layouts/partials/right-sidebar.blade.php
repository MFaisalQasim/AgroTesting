<div class="right-sidebar">
    <div class="slimscrollright">
        <div class="rpanel-title"> Service Panel <span><i class="icon-close right-side-toggler"></i></span></div>
        @if(auth()->check())
            <div class="text-center">
                <a class="btn btn-primary m-t-10" href="{{route('logout')}}">Logout</a>
            </div>
        @endif
        <div class="r-panel-body">
            @if(auth()->check())
                <p><b>Layout type</b></p>
                <ul class="layouts">
                    <li class="@if(session()->get('theme-layout') == 'normal') active @endif"><a
                                href="{{asset('?theme=normal')}}">Normal Layout</a></li>
                    <li class="@if(session()->get('theme-layout') == 'fix-header') active @endif"><a
                                href="{{asset('?theme=fix-header')}}">Fixed Header</a></li>
                    <li class="@if(session()->get('theme-layout') == 'mini-sidebar') active @endif"><a
                                href="{{asset('?theme=mini-sidebar')}}">Mini-sidebar</a></li>
                </ul>
                <br>
                @if(session()->get('theme-layout') != 'fix-header')
                    <ul class="hidden-xs">
                        <li><b>Layout Options</b></li>
                        <li>
                            <div class="checkbox checkbox-danger">
                                <input id="headcheck" type="checkbox" class="fxhdr">
                                <label for="headcheck"> Fix Header </label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox checkbox-warning">
                                <input id="sidecheck" type="checkbox" class="fxsdr">
                                <label for="sidecheck"> Fix Sidebar </label>
                            </div>
                        </li>
                    </ul>
                @endif
            @else
                <div class="text-center">
                    <a class="btn btn-primary m-t-10 " href="{{route('login')}}">LogIn</a> &nbsp;&nbsp;
                    <a class="btn btn-success m-t-10" href="{{route('register')}}">Register</a>
                </div>
            @endif


            <ul id="themecolors" class="m-t-20">
                <li><b>With Light sidebar</b></li>
                <li><a href="javascript:void(0)" data-theme="default" class="default-theme working">1</a></li>
                <li><a href="javascript:void(0)" data-theme="green" class="green-theme">2</a></li>
                <li><a href="javascript:void(0)" data-theme="yellow" class="yellow-theme">3</a></li>
                <li><a href="javascript:void(0)" data-theme="red" class="red-theme">4</a></li>
                <li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>
                <li><a href="javascript:void(0)" data-theme="black" class="black-theme">6</a></li>
                <li class="db"><b>With Dark sidebar</b></li>
                <li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme">7</a></li>
                <li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>
                <li><a href="javascript:void(0)" data-theme="yellow-dark" class="yellow-dark-theme">9</a></li>
                <li><a href="javascript:void(0)" data-theme="red-dark" class="red-dark-theme">10</a></li>
                <li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>
                <li><a href="javascript:void(0)" data-theme="black-dark" class="black-dark-theme">12</a></li>
            </ul>
            <ul class="m-t-20 chatonline">
                <li><b>Chat option</b></li>
                <li>
                    <a href="javascript:void(0)"><img src="{{asset('plugins/images/users/1.jpg')}}" alt="user-img"
                                                      class="img-circle"> <span>Varun Dhavan <small
                                    class="text-success">online</small></span></a>
                </li>
                <li>
                    <a href="javascript:void(0)"><img src="{{asset('plugins/images/users/2.jpg')}}" alt="user-img"
                                                      class="img-circle"> <span>Genelia Deshmukh <small
                                    class="text-warning">Away</small></span></a>
                </li>
                <li>
                    <a href="javascript:void(0)"><img src="{{asset('plugins/images/users/3.jpg')}}" alt="user-img"
                                                      class="img-circle"> <span>Ritesh Deshmukh <small
                                    class="text-danger">Busy</small></span></a>
                </li>
                <li>
                    <a href="javascript:void(0)"><img src="{{asset('plugins/images/users/4.jpg')}}" alt="user-img"
                                                      class="img-circle"> <span>Arijit Sinh <small class="text-muted">Offline</small></span></a>
                </li>
                <li>
                    <a href="javascript:void(0)"><img src="{{asset('plugins/images/users/5.jpg')}}" alt="user-img"
                                                      class="img-circle"> <span>Govinda Star <small
                                    class="text-success">online</small></span></a>
                </li>
                <li>
                    <a href="javascript:void(0)"><img src="{{asset('plugins/images/users/6.jpg')}}" alt="user-img"
                                                      class="img-circle"> <span>John Abraham<small class="text-success">online</small></span></a>
                </li>
            </ul>
        </div>
    </div>
</div>