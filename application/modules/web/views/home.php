<?php get_section('layout/sliders/home-slider'); ?>

<!-- About Section Start -->
<div class="about-us-area">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-5">
        <div class="overview-img text-center img-hover_effect">
          <a href="#">
            <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/about-us/1.jpg" alt="Kenne's About Us Image">
          </a>
        </div>
      </div>
      <div class="col-lg-6 col-md-7 d-flex align-items-center">
        <div class="overview-content">
          <h2>Welcome To <span>Turaja</span> Store!</h2>
          <p class="short_desc">Tuaraja, the Giver of Life! A synonym of Goddess Bhavani, avatar of Goddess Parvati/ Durga, Turaja is the source of creative energy, the divine Mother, who is the supreme provider.

We, at Turaja, delve deep into the philosophy of The Goddess. Our creations are made for the sustainability conscious, aesthetic driven consumer. Our designs suit the global palette while being rooted firmly into Indian craftsmanship.</p>
          <div class="kenne-about-us_btn-area">
            <a class="about-us_btn" href="#">Read More</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Abount section Ending -->

<!-- Begin Banner Area Two -->
<div class="banner-area banner-area-2 saree-wear">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">
          <h3 class="text-center">SHOP BY <span>CATEGORY</span></h3>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3">
        <div class="banner-item img-hover_effect">
          <div class="banner-img">
            <a href="javascrip:void(0)">
              <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/banner/1-4.jpg" alt="Banner">
            </a>
          </div>
          <div class="product-catb">
            <h3 class="heading">
              <a href="#">SAREES</a>
            </h3>
          </div>
        </div>

      </div>
      <div class="col-md-3">
        <div class="banner-item img-hover_effect">
          <div class="banner-img">
            <a href="javascrip:void(0)">
              <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/product/small-size/suit1-3.jpg" alt="Banner">
            </a>
          </div>
          <div class="product-catb">
            <h3 class="heading">
              <a href="#">DUPATTA</a>
            </h3>
          </div>
        </div>

      </div>
      <div class="col-md-3">
        <div class="banner-item img-hover_effect">
          <div class="banner-img">
            <a href="javascrip:void(0)">
              <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/product/small-size/suit-2.jpg" alt="Banner">
            </a>
          </div>
          <div class="product-catb">
            <h3 class="heading">
              <a href="blog-details.html">SUITS</a>
            </h3>
          </div>
        </div>

      </div>

      <div class="col-md-3">
        <div class="banner-item img-hover_effect">
          <div class="banner-img">
            <a href="javascrip:void(0)">
              <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/banner/1-5.jpg" alt="Banner">
            </a>
          </div>
          <div class="product-catb">
            <h3 class="heading">
              <a href="blog-details.html">FABRIC</a>
            </h3>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
<!-- Banner Area Two End Here -->


<!-- Begin Banner Area MEN'S -->
<div class="banner-area banner-area-2 saree-wear">
  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <div class="banner-item img-hover_effect">
          <div class="banner-img">
            <a href="javascrip:void(0)">
              <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/banner/1-4.jpg" alt="Banner">
            </a>
          </div>
          <div class="product-catb">
            <h3 class="heading">
              <a href="#">Men's</a>
            </h3>
          </div>
        </div>

      </div>
      <div class="col-md-4">
        <div class="banner-item img-hover_effect">
          <div class="banner-img">
            <a href="javascrip:void(0)">
              <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/banner/1-5.jpg" alt="Banner">
            </a>
          </div>
          <div class="product-catb">
            <h3 class="heading">
              <a href="#">Ready to Wear</a>
            </h3>
          </div>
        </div>

      </div>
      <div class="col-md-4">
        <div class="banner-item img-hover_effect">
          <div class="banner-img">
            <a href="javascrip:void(0)">
              <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/banner/1-5.jpg" alt="Banner">
            </a>
          </div>
          <div class="product-catb">
            <h3 class="heading">
              <a href="blog-details.html">Accessories</a>
            </h3>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
<!-- Banner Area Two MEN'S -->




<!-- Begin Product Area -->
<div class="product-area ARRIVALS">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title">
          <h3>NEW ARRIVALS</h3>
          <div class="product-arrow"></div>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="kenne-element-carousel product-slider slider-nav" data-slick-options='{
                     "autoplay": true,
                    "slidesToShow": 4,
                    "slidesToScroll": 1,
                    "autoplaySpeed": 2000,
                    "infinite": true,
                    "arrows": true,
                    "dots": false,
                    "spaceBetween": 30,
                    "appendArrows": ".product-arrow"
                    }' data-slick-responsive='[
                    {"breakpoint":992, "settings": {
                    "slidesToShow": 3
                    }},
                    {"breakpoint":768, "settings": {
                    "slidesToShow": 2
                    }},
                    {"breakpoint":575, "settings": {
                    "slidesToShow": 1
                    }}
                ]'>

            <?php foreach ($product as $value): ?>
              <div class="product-item">
                <div class="single-product">
                  <div class="product-img">
                    <a href="single-product.html">
                      <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/sareeimg.jpg" alt="Kenne's Product Image">
                      <img class="secondary-img" src="<?php echo base_url(ASSETS) ?>/images/product/saree2.jpg" alt="Kenne's Product Image">
                    </a>

                    <div class="add-actions">
                      <ul>
                        <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                        </li>
                        <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                        </li>
                        <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="product-content">
                    <div class="product-desc_info">
                      <h3 class="product-name"><a href="single-product.html"><?php echo substr($value['name'], 0, 18); ?></a></h3>
                      <div class="price-box">
                        <span class="new-price">Rs.<?php echo number_format(($value['price'] - $value['discount']), 0) ?></span>
                        <span class="old-price">Rs.<?php echo number_format($value['price'], 0) ?></span>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            <?php endforeach; ?>

        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <a href="#" class="us_btn">View All</a>
      </div>
    </div>
  </div>
</div>
<!-- Product Area End Here -->

<div class="product-area p-b-30 saree-2 ">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title">
          <h3>SAREES</h3>
          <div class="product-arrow-fabrics"></div>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="kenne-element-carousel product-slider slider-nav" data-slick-options='{
                    "slidesToShow": 4,
                    "slidesToScroll": 1,
                    "infinite": false,
                    "arrows": true,
                    "dots": false,
                    "spaceBetween": 30,
                    "appendArrows": ".product-arrow-fabrics"
                    }' data-slick-responsive='[
                    {"breakpoint":992, "settings": {
                    "slidesToShow": 3
                    }},
                    {"breakpoint":768, "settings": {
                    "slidesToShow": 2
                    }},
                    {"breakpoint":575, "settings": {
                    "slidesToShow": 1
                    }}
                ]'>
          <?php foreach ($carousel_saree as $key => $value): ?>
            <div class="product-item">
              <div class="single-product">
                <div class="product-img">
                  <a href="single-product.html">
                    <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/sareeimg.jpg" alt="Kenne's Product Image">
                    <img class="secondary-img" src="<?php echo base_url(ASSETS) ?>/images/product/saree2.jpg" alt="Kenne's Product Image">
                  </a>

                  <div class="add-actions">
                    <ul>
                      <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                      </li>
                      <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                      </li>
                      <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="product-content">
                  <div class="product-desc_info">
                    <h3 class="product-name"><a href="single-product.html"><?php echo substr($value['name'], 0, 18); ?></a></h3>
                    <div class="price-box">
                      <span class="new-price">Rs.<?php echo number_format(($value['price'] - $value['discount']), 0) ?></span>
                      <span class="old-price">Rs.<?php echo number_format($value['price'], 0) ?></span>
                    </div>

                  </div>
                </div>
              </div>
            </div>
          <?php endforeach; ?>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <a href="#" class="us_btn">View All</a>
      </div>
    </div>
  </div>
</div>

<!-- Ready to wear-->

<div class="product-area p-t-10">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title">
          <h3>READY TO WEAR</h3>
          <div class="product-arrow-lehengastwo"></div>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="kenne-element-carousel product-slider slider-nav" data-slick-options='{
                    "slidesToShow": 4,
                    "slidesToScroll": 1,
                    "infinite": false,
                    "arrows": true,
                    "dots": false,
                    "spaceBetween": 30,
                    "appendArrows": ".product-arrow-lehengastwo"
                    }' data-slick-responsive='[
                    {"breakpoint":992, "settings": {
                    "slidesToShow": 3
                    }},
                    {"breakpoint":768, "settings": {
                    "slidesToShow": 2
                    }},
                    {"breakpoint":575, "settings": {
                    "slidesToShow": 1
                    }}
                ]'>

          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Quibusdam ratione</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.46.91</span>
                    <span class="old-price">Rs.50.99</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Nulla laboriosam</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.80.00</span>
                    <span class="old-price">Rs.85,00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Adipisci voluptas</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.75.91</span>
                    <span class="old-price">Rs.80.99</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Possimus beatae</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.65.00</span>
                    <span class="old-price">Rs.70.00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Voluptates laudantium</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.95.00</span>
                    <span class="old-price">Rs.100.00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Eligendi voluptate</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.60.00</span>
                    <span class="old-price">Rs.65.00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Excepturi perspiciatis</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.50.00</span>
                    <span class="old-price">Rs.60.00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Esse eveniet</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.70.00</span>
                    <span class="old-price">Rs.75.00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <a href="#" class="us_btn">View All</a>
      </div>
    </div>
  </div>
</div>
<!--Ready to wear -->

<!-- Febric -->
<div class="product-area">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title">
          <h3>FABRIC</h3>
          <div class="product-arrow-lehengasone"></div>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="kenne-element-carousel product-slider slider-nav" data-slick-options='{
                    "slidesToShow": 4,
                    "slidesToScroll": 1,
                    "infinite": false,
                    "arrows": true,
                    "dots": false,
                    "spaceBetween": 30,
                    "appendArrows": ".product-arrow-lehengasone"
                    }' data-slick-responsive='[
                    {"breakpoint":992, "settings": {
                    "slidesToShow": 3
                    }},
                    {"breakpoint":768, "settings": {
                    "slidesToShow": 2
                    }},
                    {"breakpoint":575, "settings": {
                    "slidesToShow": 1
                    }}
                ]'>

          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>
                <span class="sticker-2">Hot</span>
                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Quibusdam ratione</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.46.91</span>
                    <span class="old-price">Rs.50.99</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Nulla laboriosam</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.80.00</span>
                    <span class="old-price">Rs.85,00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Adipisci voluptas</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.75.91</span>
                    <span class="old-price">Rs.80.99</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Possimus beatae</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.65.00</span>
                    <span class="old-price">Rs.70.00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Voluptates laudantium</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.95.00</span>
                    <span class="old-price">Rs.100.00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Eligendi voluptate</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.60.00</span>
                    <span class="old-price">Rs.65.00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Excepturi perspiciatis</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.50.00</span>
                    <span class="old-price">Rs.60.00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="product-item">
            <div class="single-product">
              <div class="product-img">
                <a href="single-product.html">
                  <img class="primary-img" src="<?php echo base_url(ASSETS) ?>/images/product/1-2.jpg" alt="Kenne's Product Image">

                </a>

                <div class="add-actions">
                  <ul>
                    <li class="quick-view-btn" data-toggle="modal" data-target="#exampleModalCenter"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="right" title="Quick View"><i class="ion-ios-search"></i></a>
                    </li>
                    <li><a href="wishlist.html" data-toggle="tooltip" data-placement="right" title="Add To Wishlist"><i class="ion-ios-heart-outline"></i></a>
                    </li>
                    <li><a href="#miniCart" data-toggle="tooltip" data-placement="right" title="Add To cart"><i class="ion-bag"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="product-content">
                <div class="product-desc_info">
                  <h3 class="product-name"><a href="single-product.html">Esse eveniet</a></h3>
                  <div class="price-box">
                    <span class="new-price">Rs.70.00</span>
                    <span class="old-price">Rs.75.00</span>
                  </div>

                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <a href="#" class="us_btn">View All</a>
      </div>
    </div>
  </div>
</div>
<!--Febric-->

<!--crop block-->
<div class="banner-area-3 artistry">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">
          <h3 class="text-center">OUR <span>ARTISTRY</span></h3>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-3 col-6 custom-xxs-col">
        <div class="banner-item img-hover_effect">
          <div class="banner-img">
            <a href="javascrip:void(0)">
              <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/banner/2-1.jpg" alt="Banner">
            </a>
          </div>
          <div class="product-catb">
            <h3 class="heading">
              <a href="#">Weaving</a>
            </h3>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-6 custom-xxs-col">
        <div class="banner-item img-hover_effect">
          <div class="banner-img">
            <a href="javascrip:void(0)">
              <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/banner/2-2.jpg" alt="Banner">
            </a>
          </div>
          <div class="product-catb">
            <h3 class="heading">
              <a href="#">Embroidery</a>
            </h3>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-6 custom-xxs-col">
        <div class="banner-item img-hover_effect">
          <div class="banner-img">
            <a href="javascrip:void(0)">
              <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/banner/2-2.jpg" alt="Banner">
            </a>
          </div>
          <div class="product-catb">
            <h3 class="heading">
              <a href="#">Printing </a>
            </h3>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-6 custom-xxs-col">
        <div class="banner-item img-hover_effect">
          <div class="banner-img">
            <a href="javascrip:void(0)">
              <img class="img-full" src="<?php echo base_url(ASSETS) ?>/images/banner/2-3.jpg" alt="Banner">
            </a>
          </div>
          <div class="product-catb">
            <h3 class="heading">
              <a href="#">Surface Ornamentation</a>
            </h3>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--crop block-->
