<style>
    a{
        cursor: pointer;
    }
</style>
<p>
    We know that agriculture is dominated by farm tractors, which is known as one of the
    most significant, easily recognizable, and in-demand Agricultural Machinery in Botswana.
    Tractors and Farm implements are considered as the best companions for farmers since
    they help them to complete their daily work operations efficiently and effectively to
    produce healthy and export quality crops. <br><br><br>
</p>
<div class="accordion" id="accordionExample">
    <div class="categories">
        <h5>Categories</h5>
    </div>
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingOne">
            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                data-bs-target="#collapseOne" aria-expanded="true"
                aria-controls="collapseOne">
                Tractor Categories
            </button>
        </h2>
        <div id="collapseOne" class="accordion-collapse collapse show">
            <div class="accordion-body">
                <div class="accordion" id="accordionExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button" type="button"
                                data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                aria-expanded="true" aria-controls="collapseTwo">
                                MF Tractors
                            </button>
                        </h2>
                      
                        <div id="collapseTwo" class="accordion-collapse collapse show">
                            <div class="accordion-body">
                                @foreach ($mf_sidebar as $item)
                                <div class="inner-body">
                                    <a  href="{{ route('frontend.product.index', ['brand'=>$item->getBrandName['name'],'slag'=>$item->tractor_slug]) }}">{{$item->name}}</a><br>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="accordion-item">
        <h2 class="accordion-header" id="headingTwo">
            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                data-bs-target="#collapseThree" aria-expanded="false"
                aria-controls="collapseThree">
                Implements
            </button>
        </h2>
        <div id="collapseThree" class="accordion-collapse collapse show"
            aria-labelledby="headingTwo">
            <div class=" accordion-body">
                @foreach ($imp_sidebar as $item)
                <div class="inner-body">
                    <a href="{{ route('frontend.product.index', ['brand'=>$item->getBrandName['name'],'slag'=>$item->tractor_slug]) }}" >{{$item->name}}</a><br>
                    <br>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
