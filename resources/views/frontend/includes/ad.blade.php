@if ($ad!=Null)
     @foreach($ad as $item)
<img class="ad d-block" src="{{asset("$item->path")}}" alt="{{asset("$item->path")}}" style="margin-top: 31px;" height="300px" width="250px">
@endforeach
@endif

 {{-- <img class="ad w-100 h-100" src="{{asset("assets_final/images/ad.png")}}" height="115"> --}}
