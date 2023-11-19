<ul id="menu-main-menu-1" class="menu">
    <li class="menu-item">
        <a href="/">
            <span class="menu-label-level-0">হোম</span>
        </a>
    </li>
    @foreach ($categories as $item)
    <li class="menu-item">
        <a href="{{ route('category_product',[$item->id, urlencode($item->name) ]) }}">
            <span class="menu-label-level-0"> {{$item->name}} </span>
        </a>
        @if (count($item->frontend_child))
        <div class="sub-menu">
            <ul>
                @foreach ($item->frontend_child as $child)
                <li>
                    <a href="{{ route('category_product',[$child->id, urlencode($child->name) ]) }}"> {{$child->name}} </a>
                </li>
                @endforeach
            </ul>
        </div>
        @endif
    </li>
    @endforeach

</ul>
