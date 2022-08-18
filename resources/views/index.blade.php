<!doctype html>
<html lang="en">
    @include('partial.head')
<body>

    <!--================Header Menu Area =================-->
        @include('partial.nav')
    <!--================Header Menu Area =================-->

    <!--================Home Banner Area =================-->
    <section class="home_banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-6 col-xl-5 offset-xl-7">
                        <div class="banner_content">
                            <h3>CarRentals<br/> Management System</h3>
                            <p>CarRentals System is a  web based application crafted using finnest and modern web programming languages to deliver high productivity, robustness and user friendlyness in automobile hire agencies.</p>
                            <a class="banner_btn" href="core/index.php">Lets Xplore The Magic<i class="ti-arrow-right"></i></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Service  Area =================-->
    <section id="core_features" class="service-area area-padding">
        <div class="container">
            <div class="row">
                <!-- Single service -->
                <div class="col-md-6 col-lg-4">
                    <div class="single-service">
                        <div class="service-icon">
                            <i class="ti-pencil-alt"></i>
                        </div>
                        <div class="service-content">
                            <h5>Unique Design</h5>
                            <p>This application is crafted with unique designs that it can run on any platforms ie(Smartphones, Tables and Laptops), Its unique design makes it responsive and lightweight.</p>
                            <a href="{{ url('/features') }}">Read More</a>
                        </div>
                    </div>
                </div>

                <!-- Single service -->
                <div class="col-md-6 col-lg-4">
                    <div class="single-service">
                        <div class="service-icon">
                            <i class="ti-image"></i>
                        </div>
                        <div class="service-content">
                            <h5>Payment Intergrations</h5>
                            <p>Payment records are processed directly in the payments module which makes it esy for the finance guys to analize agency finances quickly and with less hassle</p>
                            <a href="{{ url('/features') }}">Read More</a>
                        </div>
                    </div>
                </div>


                <!-- Single service -->
                <div class="col-md-6 col-lg-4">
                    <div class="single-service">
                        <div class="service-icon">
                            <i class="ti-headphone-alt"></i>
                        </div>
                        <div class="service-content">
                            <h5>Advanced Reporting</h5>
                            <p>CarRentals is shipped with a complex advance reporting module which takes care of all reporting in the agency ranging from car hire records, car returns, payments, staff records, client records and car records. this module utilizes the
                            data visualization tools like graphs and charts. </p>
                            <a href="{{ url('/features') }}">Read More</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--================Service Area end =================-->




    


    <!-- ================ start footer Area ================= -->
    @include('partial.footer')
<!-- ================ End footer Area ================= -->






<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/mail-script.js"></script>
<script src="js/contact.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>
<script src="js/theme.js"></script>
</body>
</html>