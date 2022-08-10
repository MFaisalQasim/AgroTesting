<nav class="navbar navbar-expand-lg sub-nav">
    <div class="container">
        <div class="text-right"><button class="navbar-toggler" type="button" onclick="OpenNav()"
                data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li><button type="button" class="close" onclick="closeNav()" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button></li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('frontend.index') }}"><span>Home</span> </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdownTractor" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Tractor
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownTractor">
                        <li><a class="dropdown-item"
                                href="{{ route('frontend.massey_ferguson_tractors.index') }}"><span>Massey Ferguson</span></a></li>
                        <li><a class="dropdown-item" href="{{ route('frontend.new_holland_tractors.index') }}"><span>New Holland</span> </a></li>
                        <li><a class="dropdown-item" href="{{ route('frontend.ford_tractors.index') }}"><span>Ford</span> </a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('frontend.farm_implements.index') }}"><span>Implements</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('frontend.about_us.index') }}"><span>About Us</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('frontend.contact_us.index') }}"><span>Contact Us</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('frontend.testimonial.index') }}"><span>Testimonials</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('frontend.bank_details.index') }}"><span>Bank
                        Details</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdownCountry" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Country
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownCountry">
                        @foreach ($countries as $item)
                        <li><a class="dropdown-item" href="{{ route('frontend.countries.index', ['c_slag'=>$item->link]) }}"><span>{{$item->name}}</span></a></li>
                        @endforeach
                    </ul>
                </li>

            </ul>
        </div>
    </div>
</nav>