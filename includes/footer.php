<footer id="footer" class="footer color-bg">
    <div class="links-social inner-top-sm">
        <div class="container">
            <div class="row">
                <!-- Contact Info Column -->
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="contact-info">
                        <div class="footer-logo">
                            <div class="logo">
                                <a href="index.php">
                                    <h3 class="logo-text">Shopping Portal</h3>
                                </a>
                            </div>
                        </div>
                        <div class="module-body m-t-20">
                            <p class="about-us">
                                "Thank you for shopping with us! Your satisfaction is our priority. For support, contact us at HubbiesHub@gmail.com or call us at +233-00-000-0000. Follow us on social media for updates and exclusive deals!"
                            </p>
                            <div class="social-icons">
                                <a href="http://facebook.com/transvelo" class="active"><i class="icon fa fa-facebook"></i></a>
                                <a href="#"><i class="icon fa fa-twitter"></i></a>
                                <a href="#"><i class="icon fa fa-linkedin"></i></a>
                                <a href="#"><i class="icon fa fa-rss"></i></a>
                                <a href="#"><i class="icon fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Opening Time Column -->
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="contact-timing">
                        <div class="module-heading">
                            <h4 class="module-title">Opening Time</h4>
                        </div>
                        <div class="module-body outer-top-xs">
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr><td>Monday-Friday:</td><td class="pull-right">08.00 To 18.00</td></tr>
                                        <tr><td>Saturday:</td><td class="pull-right">09.00 To 20.00</td></tr>
                                        <tr><td>Sunday:</td><td class="pull-right">10.00 To 20.00</td></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Information Column -->
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="contact-information">
                        <div class="module-heading">
                            <h4 class="module-title">Information</h4>
                        </div>
                        <div class="module-body outer-top-xs">
                            <ul class="toggle-footer">
                                <li class="media">
                                    <div class="pull-left">
                                        <span class="icon fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-map-marker fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </div>
                                    <div class="media-body">
                                        <p>Western Region, Ghana</p>
                                    </div>
                                </li>
                                <li class="media">
                                    <div class="pull-left">
                                        <span class="icon fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </div>
                                    <div class="media-body">
                                        <p>(+233) 000000000000<br>(+233) 000000000000</p>
                                    </div>
                                </li>
                                <li class="media">
                                    <div class="pull-left">
                                        <span class="icon fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </div>
                                    <div class="media-body">
                                        <span><a href="#">info@HubiesHub.com</a></span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.links-social -->
</footer>

<style>
/* Footer Background and Text */
.footer {
    background-color: whitesmoke;
    color: black;
    padding: 40px 0;
    font-family: serif;
}

/* Logo Text Styling */
.logo-text {
    font-size: 3rem;
    font-weight: bold;
    color: black;
    transition: color 0.3s ease;
}

.logo-text:hover {
    color: #D4AF37;
}

/* About Us Text */
.about-us {
    font-size: 10px;
    line-height: 1.6;
    margin-bottom: 20px;
}

/* Social Icons */
.social-icons {
    display: flex;
    gap: 15px;
}

.social-icons a {
    color: #ecf0f1;
    font-size: 1.2rem;
    transition: transform 0.3s ease, color 0.3s ease;
}

.social-icons a:hover {
    color: #D4AF37;
    transform: translateY(-5px);
}

/* Module Titles */
.module-title {
    font-size: 1.5rem;
    font-weight: bold;
    color: black;
    margin-bottom: 20px;
    position: relative;
}

.module-title::after {
    content: '';
    position: absolute;
    left: 0;
    bottom: -10px;
    width: 50px;
    height: 3px;
    background-color: #1abc9c;
}

/* Table Styling */
.table-responsive {
    background-color: whitesmoke;
    border-radius: 10px;
    padding: 15px;
}

.table {
    color: black;
    margin-bottom: 0;
}

.table td {
    padding: 10px;
    border: none;
}


/* Media List Styling */
.toggle-footer .media {
    margin-bottom: 15px;
    display: flex;
    align-items: center;
}

.toggle-footer .icon {
    background-color: #D4AF37;
    border-radius: 50%;
    width: 40px;
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-right: 15px;
    transition: background-color 0.3s ease;
}

.toggle-footer .icon:hover {
    background-color: black;
}

.toggle-footer .media-body {
    font-size: 0.9rem;
}

.toggle-footer a {
    color: #3498db;
    text-decoration: none;
    transition: color 0.3s ease;
}

.toggle-footer a:hover {
    color: #1abc9c;
}

/* Responsive Design */
@media (max-width: 767px) {
    .footer .col {
        margin-bottom: 30px;
    }
}
    </style>