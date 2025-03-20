<div id="brands-carousel" class="logo-slider wow fadeInUp">
    <h3 class="section-title">Our Brands</h3>
    <div class="logo-slider-inner">
        <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
            <!-- Brand Items -->
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/aoc.jpg" src="assets/images/blank.gif" alt="AOC">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/bajaj.jpg" src="assets/images/blank.gif" alt="Bajaj">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/blackberry.jpg" src="assets/images/blank.gif" alt="Blackberry">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/canon.jpg" src="assets/images/blank.gif" alt="Canon">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/compas.jpg" src="assets/images/blank.gif" alt="Compas">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/daikin.jpg" src="assets/images/blank.gif" alt="Daikin">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/dell.jpg" src="assets/images/blank.gif" alt="Dell">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/samsung.jpg" src="assets/images/blank.gif" alt="Samsung">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/hcl.jpg" src="assets/images/blank.gif" alt="HCL">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/sony.jpg" src="assets/images/blank.gif" alt="Sony">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/voltas.jpg" src="assets/images/blank.gif" alt="Voltas">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/lg.jpg" src="assets/images/blank.gif" alt="LG">
                </a>
            </div>
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/lenovo.jpg" src="assets/images/blank.gif" alt="Lenovo">
                </a>
            </div>
        </div><!-- /.owl-carousel #logo-slider -->
    </div><!-- /.logo-slider-inner -->
</div><!-- /.logo-slider -->
<style>

	/* Section Title Styling */
.section-title {
    text-align: center;
    font-size: 2.5rem;
    font-weight: bold;
    margin-bottom: 30px;
    color: #333;
    position: relative;
    display: inline-block;
}

.section-title::after {
    content: '';
    position: absolute;
    left: 50%;
    bottom: -10px;
    width: 60px;
    height: 3px;
    background-color: #007bff;
    transform: translateX(-50%);
}

/* Logo Slider Container */
.logo-slider {
    padding: 50px 0;
    background-color: #f9f9f9;
}

/* Logo Slider Items */
.brand-slider .item {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.brand-slider .item:hover {
    transform: translateY(-10px);
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
}

.brand-slider .item img {
    max-width: 100%;
    height: auto;
    filter: grayscale(100%);
    transition: filter 0.3s ease;
}

.brand-slider .item:hover img {
    filter: grayscale(0%);
}

/* Owl Carousel Navigation Arrows */
.owl-carousel .owl-nav button {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(0, 123, 255, 0.8) !important;
    color: #fff !important;
    border-radius: 50%;
    width: 40px;
    height: 40px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 1.5rem;
    transition: background-color 0.3s ease;
}

.owl-carousel .owl-nav button:hover {
    background-color: rgba(0, 123, 255, 1) !important;
}

.owl-carousel .owl-nav button.owl-prev {
    left: -50px;
}

.owl-carousel .owl-nav button.owl-next {
    right: -50px;
}

/* Owl Carousel Dots */
.owl-carousel .owl-dots {
    text-align: center;
    margin-top: 20px;
}

.owl-carousel .owl-dots button.owl-dot {
    width: 12px;
    height: 12px;
    margin: 0 5px;
    background-color: #ccc !important;
    border-radius: 50%;
    transition: background-color 0.3s ease;
}

.owl-carousel .owl-dots button.owl-dot.active {
    background-color: #007bff !important;
}
	</style>

	<script>
		$(document).ready(function(){
    $("#brand-slider").owlCarousel({
        loop: true,
        margin: 20,
        nav: true,
        dots: true,
        autoplay: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 2
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });
});
		</script>