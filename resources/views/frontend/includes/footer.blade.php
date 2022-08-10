<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <ul class="footer-links">
                    <li>
                        <h4 class="heading-footer">Useful Links</h4>
                    </li>
                    <li class="li-footer"><a
                            href="{{ route('frontend.how_to_place_order.index') }}">How to
                            Place an Order</a></li>
                    <li class="li-footer"><a href="{{ route('frontend.faq.index') }}">FAQ</a>
                    </li>
                    <li class="li-footer"><a
                            href="{{ route('frontend.care_tip.index') }}">Tractors
                            Care Tips</a></li>
                    <li class="li-footer"><a href="{{ route('frontend.gallery.index') }}">Gallery</a>
                    </li>
                    <li class="li-footer"><a
                            href="{{ route('frontend.sales_agent.index') }}">Sales
                            Representatives</a></li>
                    <li class="li-footer"><a
                            href="{{ route('frontend.shipment.index') }}">Shipment
                            Process</a></li>
                </ul>
                <ul class="footer-links">
                    <li>
                        <h4 class="heading-footer">Track Shipment</h4>
                    </li>
                    <li><a href="{{ route('frontend.mearsk_line.index') }}">MaerskLine Pakistan</a></li>
                    <li><a href="{{ route('frontend.cma_cgm.index') }}">CMA-CGM Pakistan</a></li>
                    <li><a href="{{ route('frontend.msc_pakistan.index') }}">MSC Pakistan</a></li>
                </ul>
            </div>
            <div class="col-md-2">
                <ul class="footer-links">
                    <li>
                        <h4 class="heading-footer">Tractors</h4>
                    </li>
                    @foreach ($mf_sidebar as $item)
                    <li class="li-footer-2"><a
                            href="{{ route('frontend.product.index', ['brand'=>$item->getBrandName['name'],'slag'=>$item->tractor_slug]) }}">{{$item->name}}</a></li>
                    @endforeach
                </ul>
            </div>
            <div class="col-md-2">
                <ul class="footer-links">
                    <li>
                        <h4 class="heading-footer">Implements</h4>
                    </li>
                    @foreach ($imp_footer as $item)
                    <li class="li-footer-2"><a
                            href="{{ route('frontend.product.index', ['brand'=>$item->getBrandName['name'],'slag'=>$item->tractor_slug]) }}">{{$item->name}}</a>
                    </li>
                    @endforeach
                </ul>
            </div>
            <div class="col-md-2">
                <ul class="footer-links">
                    <li>
                        <h4 class="heading-footer">Countries</h4>
                    </li>
                    @foreach ($countries as $item)
                    <li class="li-footer-2"><a href="{{ route('frontend.countries.index', ['c_slag'=>$item->link]) }}">{{$item->name}}</a></li>
                    @endforeach
                </ul>
            </div>
            <div class="col-md-2">
                <ul class="footer-links">
                    <li>
                        <h4 class="heading-footer">(Call or WhatsApp)</h4>
                    </li>
                    <li><a href="tel:+923170001715">+923170001715 </a></li>
                    <li><a href="tel:+923170001572">+923170001572</a></li>

                </ul>
                <ul class="footer-links">
                    <li>
                        <h4 class="heading-footer"> Connect Via Email</h4>
                    </li>
                    <li><a href="mailto:info@agroasiatractors.com">Info@AgroAsiaTractors.com</a></li>
                    <li><a href="mailto:Sales@agroasiatractors.com">Sale@AgroAsiaTractors.com</a></li>
                </ul>
                <ul class="footer-links">
                    <li>
                        <h4 class="heading-footer">Connect With Us</h4>
                    </li>
                    <li><a href="https://www.facebook.com/AgroAsiaTractors/">Facebook</a></li>
                    <li><a href="https://pk.linkedin.com/company/agroasiatractors">LinkedIn</a></li>
                    <li><a href="https://twitter.com/AgroAsiaTractor/">Twitter</a></li>
                    <li><a href="https://www.youtube.com/AgroAsiaTractors">Youtube</a></li>
                </ul>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

    <div class="container">
        <hr>
        <div class="text-center">
            <ul class="footer-sitemap">
                <li class="li-sitemap"><a href="{{ route('frontend.index') }}">Home</a></li>
                <li class="li-sitemap"><a href="{{ route('frontend.about_us.index') }}">About Us</a>
                </li>
                <li class="li-sitemap"><a href="{{ route('frontend.contact_us.index') }}">Contact Us</a>
                </li>
                <li class="li-sitemap"><a href="https://blog.agroasiatractors.com/">Blog</a></li>
                <li class="li-sitemap"><a href="{{ route('frontend.site_map.index') }}">Sitemap</a></li>
            </ul>
            <br>
            <p class="text-center copyright">Copyright @2021-2025 | Designed With by AgroAsia Tractors</p>
        </div>
    </div>
</footer>