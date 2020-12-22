@extends('front-end.layout.main')
@section('css')
    <link rel="stylesheet" href="/hi-tech/content/css/lienhe.css">
@endsection
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
    @if (Session::get('add-oke'))
        <script>
            Swal.fire(
                'Thành công!',
                'Cảm ơn bạn đã liên hệ với chúng tôi!',
                'success'
            )
        </script>

    @endif
    <script>
        $().ready(function() {
            $("#contactForm").validate({
                onfocusout: true,
                onkeyup: true,
                onclick: true,
                rules: {
                    "name": {
                        required: true,
                        maxlength: 50
                    },
                    "phone": {
                        required: true,
                        phone: true
                    },
                    "email": {
                        required: true,
                        email: true
                    },
                    "address": {
                        required: true
                    },
                    "title": {
                        required: true
                    },
                    "content1": {
                        required: true
                    }
                },
                messages: {
                    "name": {
                        required: "Bạn chưa nhập tên",
                        maxlength: "Hãy nhập tối đa 50 ký tự"
                    },
                    "phone": {
                        required: 'Bạn chưa nhập số điện thoại',
                        phone: "Định dạng số điện thoại sai"
                    },
                    "email": {
                        required: 'Bạn chưa nhập email',
                        email: "Định dạng email sai"
                    },
                    "address": {
                        required: "Bạn chưa nhập địa chỉ"
                    },
                    "title": {
                        required: "Bạn chưa nhập tiêu đề"
                    },
                    "content1": {
                        required: 'Bạn chưa nhập nội dung'
                    }
                }
            });
        });
    </script>
@endsection
@section('content')
    <section id="nav-link" class="w-100">
        <a href="{{route('home')}}">Trang chủ</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a>Liên Hệ</a>

    </section>
    <!-- dịch vụ -->
    <section id="dich-vu" class="container-fluid" style="margin-top:20px">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="d-flex align-items-center title">
                    <img src="/hi-tech/images/icon.png" alt="Dịch vụ" class="">
                    <strong class="theme">Liên Hệ</strong>
                </div>
                <div class="title-contact">
                    <h2>Công ty cổ phần thiết bị công nghệ cao TM<br> <span>TM HI-TECH JSC</span></h2>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.319919320292!2d105.79816471440658!3d20.97980929482468!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc37a630087%3A0xbd8b61ae88bb4f0c!2zMTI5IMSQxrDhu51uZyBUw6JuIFRyaeG7gXUsIFTDom4gVHJp4buBdSwgVGhhbmggVHLDrCwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1598325779481!5m2!1svi!2s" width="100%" height="335px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                            <div class="content-item">
                                <h3 class="title-ft"><i style="margin-right: 10px; color: #1c458f" class="fas fa-map-marker-alt nav-icon"></i>Trụ sở :</h3>
                                <ul>
                                    <li>12B/2, 781 Hồng Hà, Quận Hoàn Kiếm,</li>
                                    <li>Tel: <a href="#">(024) 3576 343</a>5 / 3576 3436&nbsp;</li>
                                    <li>Fax: <a href="#">(04) 3 576 5512</a></li>
                                    <li>Email: <a href="mailto:info@tmhitech.com.vn">info@tmhitech.com.vn</a></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.319919320292!2d105.79816471440658!3d20.97980929482468!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc37a630087%3A0xbd8b61ae88bb4f0c!2zMTI5IMSQxrDhu51uZyBUw6JuIFRyaeG7gXUsIFTDom4gVHJp4buBdSwgVGhhbmggVHLDrCwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1598325779481!5m2!1svi!2s" width="100%" height="335px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                            <div class="content-item">
                                <h3 class="title-ft"><i style="margin-right: 10px; color: #1c458f" class="fas fa-map-marker-alt nav-icon"></i>VPĐD tại HN :</h3>
                                <ul>
                                    <li>42 Phương Mai, Đống Đa, Hà Nội</li>
                                    <li>Tel: <a href="#">(024) 3576 3636</a>&nbsp;-&nbsp;<a href="tel:35763838">3576&nbsp;3838</a></li>
                                    <li>Mobile: <a href="tel:090683 5678">090 683 5678</a></li>
                                    <li>Email: <a href="mailto:info@tmhitech.com.vn">info@tmhitech.com.vn</a></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.319919320292!2d105.79816471440658!3d20.97980929482468!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc37a630087%3A0xbd8b61ae88bb4f0c!2zMTI5IMSQxrDhu51uZyBUw6JuIFRyaeG7gXUsIFTDom4gVHJp4buBdSwgVGhhbmggVHLDrCwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1598325779481!5m2!1svi!2s" width="100%" height="335px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                            <div class="content-item">
                                <h3 class="title-ft"><i style="margin-right: 10px; color: #1c458f" class="fas fa-map-marker-alt nav-icon"></i>Trụ sở :</h3>
                                <ul>
                                    <li>12B/2, 781 Hồng Hà, Quận Hoàn Kiếm,</li>
                                    <li>Tel: <a href="#">(024) 3576 343</a>5 / 3576 3436&nbsp;</li>
                                    <li>Fax: <a href="#">(04) 3 576 5512</a></li>
                                    <li>Email: <a href="mailto:info@tmhitech.com.vn">info@tmhitech.com.vn</a></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="contact">
                    <p style="padding: 0">Cảm ơn các bạn đã quan tâm đến sản phẩm và dịch vụ của Công ty chúng tôi!</p>
                    <span>Gửi thông tin liên hệ cho chúng tôi</span>
                    <form id="contactForm" class="form-contact" action="{{route('front-end.add-contact')}}">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <input name="name" id="name" placeholder="Họ Tên *" type="text" class="form-control ip">
                                </div>
                                <div class="form-group">
                                    <input name="phone" id="phone" placeholder="Điện Thoại *" type="text" class="form-control ip">
                                </div>
                                <div class="form-group">
                                    <input name="email" id="email" placeholder="Email *" type="text" class="form-control ip">
                                </div>
                                <div class="form-group">
                                    <input name="address" id="address" placeholder="Địa Chỉ *" type="text" class="form-control ip">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <input name="title" id="title" placeholder="Tiêu Đề *" type="text" class="form-control ip">
                                </div>
                                <div class="form-group">
                                    <textarea name="content1" id="content1" placeholder="Nội Dung *" class="form-control ip" style="height: 143px !important;"></textarea>
                                </div>
                                <input type="submit" class="btn-submit gui" value="Gửi đi"/>
                            </div>

                        </div>

                    </form>
                </div>
            </div>

        </div>
    </section>
@endsection
