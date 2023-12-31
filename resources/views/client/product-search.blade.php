@extends('client.layout.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('client/css/sach-moi-tuyen-chon.css') }}">
@endsection

@section('content')
    <!-- các sản phẩm  -->
    <section class="content my-4">
        <div class="container">
            <div class="noidung bg-white" style=" width: 100%;">
                <div class="col-12 d-flex justify-content-between align-items-center pb-2 bg-transparent pt-4">
                    @if (!empty($data['q']) || !empty($data['author']) || !empty($data['price']))
                        <div class="header text-uppercase" style="font-size:20px">
                            Tìm kiếm
                            <ul style="font-size:15px;list-style-type:none;">
                                @if (isset($data['q']) && !empty($data['q']))
                                    <li class="text-danger">theo từ khóa: "{{ $data['q'] }}"</li>
                                @endif
                                @if (isset($data['author']) && !empty($data['author']))
                                    <li class="text-danger">theo tác giả: "{{ \App\Models\Author::find($data['author'])->name }}"</li>
                                @endif
                                @if (isset($data['price']) && !empty($data['price']))
                                    <li class="text-danger">theo khoảng giá: 
                                        @if ($data['price'] == 1)
                                            "0 - 50,000đ"
                                        @elseif ($data['price'] == 2)
                                            "50,000đ - 100,000đ"
                                        @elseif ($data['price'] == 3)
                                            "100,000đ - 150,000đ"
                                        @else 
                                            "trên 150,000đ"
                                        @endif
                                    </li>
                                @endif
                            </ul>
                        </div>
                    @else 
                        <p class="header text-uppercase" style="font-size:20px">
                            Tất cả sản phẩm
                        </p>
                    @endif
                </div>
                <div class="items">
                    <div class="row">
                        @foreach ($products as $product)
                            <div class="col-lg-3 col-md-4 col-xs-6">
                                <div class="card">
                                    <a href="{{ route('product.detail', ['id' => $product->id]) }}" class="motsanpham"
                                        style="text-decoration: none; color: black;" data-toggle="tooltip"
                                        data-placement="bottom" title="{{ $product->name }}">
                                        <img class="card-img-top anh" src="{{ asset(@$product->image->first()->url) }}"
                                            alt="{{ $product->name }}">
                                        <div class="card-body noidungsp mt-3 text-center">
                                            <h6 class="card-title ten">{{ $product->name }}</h6>
                                            <small class="tacgia text-muted">{{ \App\Models\Author::find($product->author_id)->name }}</small>
                                            <div class="gia">
                                                @if (strtotime(date('Y-m-d')) < strtotime($product->start_date) || strtotime(date('Y-m-d')) > strtotime($product->end_date))
                                                    <div class="giamoi text-center">{{ number_format($product->price, -3, ',', ',') }}
                                                        VND</div>
                                                @else 
                                                    <div class="giamoi">{{ number_format($product->sale_price,-3,',',',') }} VND</div>
                                                    <small class="text-secondary"><del>{{ number_format($product->price,-3,',',',') }} VND</del></small>
                                                @endif
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>

                <!-- pagination bar  -->
                <div class="pagination-bar my-3">
                    <div class="row">
                        <div class="col-12">
                            {{ $products->links() }}
                        </div>
                    </div>
                </div>

                <!--het khoi san pham-->
            </div>
            <!--het div noidung-->
        </div>
        <!--het container-->
    </section>
@endsection
