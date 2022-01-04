//
//  Index.swift
//  
//
//  Created by Tyler Thompson on 1/3/22.
//

import Publish
import Plot

struct IndexHTML {
    let index: Index
    let context: PublishingContext<Resume>
    init(index: Index, context: PublishingContext<Resume>) {
        self.index = index
        self.context = context
    }

    var html: HTML {
        HTML(
            .lang(context.site.language),
            .class("crt crt-side-box-on crt-nav-on crt-nav-type2 crt-main-nav-on crt-sidebar-on crt-layers-1"),
            .head(
                .encoding(.utf8),
                .siteName(context.site.name),
                .url(context.site.url(for: index)),
                .title("Tyler Thompson's Resume"),
                .description(context.site.description),
                .twitterCardType(index.imagePath == nil ? .summary : .summaryLargeImage),
                .forEach(["css/style.css", "css/plugins.css"], { .stylesheet($0) }),
                .viewport(.accordingToDevice),
                .unwrap(context.site.favicon, { .favicon($0) }),
                .link(.rel(.appleTouchIcon), .href("apple-touch-icon.png")),
                .link(.rel(.shortcutIcon), .href("favicon.ico")),
                .link(.href("https://fonts.googleapis.com/css?family=Pacifico"), .rel(.stylesheet)),
                .link(.href("https://fonts.googleapis.com/css?family=Quicksand:400,700"), .rel(.stylesheet)),
                .link(.href("fonts/icomoon/style.css"), .rel(.stylesheet)),
                .script(.src("js/vendor/modernizr-3.3.1.min.js")),
                .script(.src("https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js")),
                .script(#"window.jQuery || document.write('<script src="assets/js/vendor/jquery-1.12.4.min.js"><\/script>')"#),
                .script(.src("https://maps.googleapis.com/maps/api/js")),
                .script(.src("js/plugins.min.js")),
                .script(.src("js/theme.min.js")),
                .script("""
                    $('a[href*=\\#]').on('click', function(event){
                        event.preventDefault();
                        $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
                    });

                    // Smooth scrolling when the document is loaded and ready
                    $(document).ready(function(){
                      $('html,body').animate({scrollTop:$(location.hash).offset().‌​top}, 500);
                    });
                """)
            ),
            .body {
                Header {
                    Div {
                        Div {
                            Div {
                                Div {
                                    Div {
                                        Navigation {
                                            List {
                                                ListItem {
                                                    Link("Home", url: "#")
                                                }
                                                ListItem {
                                                    Link("Portfolio", url: "#portfolio")
                                                }
                                                ListItem {
                                                    Link("Contact", url: "#contact")
                                                }
                                            }.class("clear-list")
                                        }.id("crt-main-nav")
                                    }.class("crt-nav-container crt-container hidden-sm hidden-xs")
                                }.id("crt-head-col2").class("crt-head-col text-right")
                                Div {
                                    Button {
                                        Span { }.class("crt-icon crt-icon-side-bar-icon")
                                    }.id("crt-sidebar-btn").class("btn btn-icon btn-shade")
                                }.id("crt-head-col3").class("crt-head-col text-right")
                            }.class("crt-head-row")
                        }.class("crt-container-sm")
                    }.class("crt-head-inner crt-container")
                }.id("crt-header")
                Navigation {
                    List {
                        ListItem {
                            Link(url: "#about") {
                                Image(url: "images/uploads/avatar/avatar-58x58-default.png", description: "Avatar picture")
                                    .class("avatar avatar-42")
                            }.attribute(named: "data-tooltip", value: "About")
                        }
                        ListItem {
                            Link(url: "#experience") {
                                Span { }.class("crt-icon crt-icon-experience")
                            }.attribute(named: "data-tooltip", value: "Experience")
                        }
                        ListItem {
                            Link(url: "#portfolio") {
                                Span { }.class("crt-icon crt-icon-portfolio")
                            }.attribute(named: "data-tooltip", value: "Portfolio")
                        }
                        ListItem {
                            Link(url: "#testimonials") {
                                Span { }.class("crt-icon crt-icon-references")
                            }.attribute(named: "data-tooltip", value: "References")
                        }
                        ListItem {
                            Link(url: "#contact") {
                                Span { }.class("crt-icon crt-icon-contact")
                            }.attribute(named: "data-tooltip", value: "Contact")
                        }
                    }.class("clear-list")
                }.id("crt-nav-sm").class("crt-nav hidden-lg hidden-md")
                Wrapper {
                    Div {
                        Div {
                            Div {
                                Div {
                                    Div {
                                        Div {
                                            Image("images/uploads/avatar/avatar-58x58-default.png")
                                                .class("avatar avatar-58")
                                                .attribute(named: "width", value: "195")
                                                .attribute(named: "height", value: "195")
                                        }.class("crt-card-avatar")
                                        Div {
                                            H2(context.site.content.profileName)
                                            Paragraph(context.site.content.profileTitle).class("text-muted")
                                            List {
                                                ListItem {
                                                    Link(url: "https://www.linkedin.com/in/tyler-k-thompson/") {
                                                        Span().class("crt-icon crt-icon-linkedin")
                                                    }.linkTarget(.blank)
                                                }
                                                ListItem {
                                                    Link(url: "https://www.github.com/tyler-keith-thompson") {
                                                        Span().class("crt-icon crt-icon-github")
                                                    }.linkTarget(.blank)
                                                }
                                            }.class("crt-social clear-list")
                                        }.class("crt-card-info")
                                    }.class("crt-card bg-primary text-center")
                                }.class("crt-side-box-item")
                                /*
                                 <div class="crt-side-box-item">
                                     <div class="crt-side-box-btn">
                                         <a class="btn btn-default btn-lg btn-block btn-thin btn-upper" href="#">Download Resume</a>
                                     </div>
                                 </div>
                                 */
                            }.id("crt-side-box")
                        }.id("crt-side-box-wrap").class("crt-sticky")
                        Div {
                            Div {
                                Div {
                                    Div {
                                        Navigation {
                                            List {
                                                ListItem {
                                                    Link(url: "#about") {
                                                        Image("images/uploads/avatar/avatar-58x58-default.png")
                                                            .class("avatar avatar-58")
                                                            .attribute(named: "width", value: "58")
                                                            .attribute(named: "height", value: "58")
                                                    }.attribute(named: "data-tooltip", value: "About")
                                                }
                                                ListItem {
                                                    Link(url: "#experience") {
                                                        Span().class("crt-icon crt-icon-experience")
                                                    }.attribute(named: "data-tooltip", value: "Experience")
                                                }
                                                ListItem {
                                                    Link(url: "#portfolio") {
                                                        Span().class("crt-icon crt-icon-portfolio")
                                                    }.attribute(named: "data-tooltip", value: "Portfolio")
                                                }
                                                ListItem {
                                                    Link(url: "#testimonials") {
                                                        Span().class("crt-icon crt-icon-references")
                                                    }.attribute(named: "data-tooltip", value: "References")
                                                }
                                                ListItem {
                                                    Link(url: "#contact") {
                                                        Span().class("crt-icon crt-icon-contact")
                                                    }.attribute(named: "data-tooltip", value: "Contact")
                                                }
                                            }.class("clear-list")
                                        }.id("crt-nav").class("crt-nav")
                                    }.class("crt-nav-scroll")
                                    Div {
                                        Span().class("crt-icon crt-icon-dots-three-horizontal")

                                        Button {
                                            Span().class("crt-icon crt-icon-chevron-thin-down")
                                        }.id("crt-nav-arrow").class("clear-btn")
                                    }.id("crt-nav-tools").class("hidden")
                                }.class("crt-nav-cont")
                                Div().class("crt-nav-btm")
                            }.id("crt-nav-inner")
                        }.id("crt-nav-wrap").class("hidden-sm hidden-xs")

                        Div {
                            Div {
                                Div {
                                    Div {
                                        aboutMe
                                        personalInformation
                                    }.class("crt-paper-cont paper-padd clear-mrg")
                                }.class("crt-paper clearfix")
                            }.class("crt-paper-layers")
                        }.class("crt-container-sm")
                    }.id("crt-container").class("crt-container")
                }
                SiteFooter()
            }
        )
        /*
         <body class="">
         <div class="crt-wrapper">

         <div id="crt-container" class="crt-container">

         <div class="crt-container-sm">
         <div class="crt-paper-layers">
         <div class="crt-paper clearfix">
         <div class="crt-paper-cont paper-padd clear-mrg">

         <section class="section brd-btm padd-box">
             <div class="row">
                 <div class="col-sm-6 clear-mrg">
                     <h2 class="title-thin text-muted">personal information</h2>

                     <dl class="dl-horizontal clear-mrg">
                         <dt class="text-upper">Full Name</dt>
                         <dd>Ola Carl Lowe</dd>

                         <dt class="text-upper">D.o.b.</dt>
                         <dd>05 Sep 1986</dd>

                         <dt class="text-upper">address</dt>
                         <dd>24058, Belgium, Brussels,
                             Liutte 27, BE
                         </dd>

                         <dt class="text-upper">e-mail</dt>
                         <dd><a href="mailto:robertsmith@company.com">robertsmith@company.com</a></dd>

                         <dt class="text-upper">phone</dt>
                         <dd>+1 256 254 84 56</dd>

                         <dt class="text-upper">freelance</dt>
                         <dd>Available</dd>
                     </dl>
                 </div>
                 <!-- .col-sm-6 -->

                 <div class="col-sm-6 clear-mrg">
                     <h2 class="title-thin text-muted">languages</h2>

                     <div class="progress-bullets crt-animate" role="progressbar" aria-valuenow="10" aria-valuemin="0"
                          aria-valuemax="10">
                         <strong class="progress-title">English</strong>
                                 <span class="progress-bar">
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                 </span>
                         <span class="progress-text text-muted">native</span>
                     </div>

                     <div class="progress-bullets crt-animate" role="progressbar" aria-valuenow="8" aria-valuemin="0"
                          aria-valuemax="10">
                         <strong class="progress-title">Spanish</strong>
                                 <span class="progress-bar">
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet"></span>
                                     <span class="bullet"></span>
                                 </span>
                         <span class="progress-text text-muted">intermediate</span>
                     </div>

                     <div class="progress-bullets crt-animate" role="progressbar" aria-valuenow="7" aria-valuemin="0"
                          aria-valuemax="10">
                         <strong class="progress-title">Italian</strong>
                                 <span class="progress-bar">
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet fill"></span>
                                     <span class="bullet"></span>
                                     <span class="bullet"></span>
                                     <span class="bullet"></span>
                                 </span>
                         <span class="progress-text text-muted">begginer</span>
                     </div>
                 </div>
                 <!-- .col-sm-6 -->
             </div>
             <!-- .row -->
         </section>
         <!-- .section -->

         <section class="section brd-btm padd-box">
             <div class="row">
                 <div class="col-sm-6 clear-mrg">
                     <h2 class="title-thin text-muted">professional skills</h2>

                     <div class="row">
                         <div class="col-xs-4 text-center">
                             <div class="progress-chart crt-animate" role="progressbar" aria-valuenow="90" aria-valuemin="0"
                                  aria-valuemax="100">
                                 <div class="progress-bar" data-text="90%" data-value="0.9"></div>
                                 <strong class="progress-title">UX Design</strong>
                             </div>
                         </div>
                         <!-- .col-xs-4 -->

                         <div class="col-xs-4 text-center">
                             <div class="progress-chart crt-animate" role="progressbar" aria-valuenow="88" aria-valuemin="0"
                                  aria-valuemax="100">
                                 <div class="progress-bar" data-text="81%" data-value="0.81"></div>
                                 <strong class="progress-title">PHP & MySql</strong>
                             </div>
                         </div>
                         <!-- .col-xs-4 -->

                         <div class="col-xs-4 text-center">
                             <div class="progress-chart crt-animate" role="progressbar" aria-valuenow="66" aria-valuemin="0"
                                  aria-valuemax="100">
                                 <div class="progress-bar" data-text="66%" data-value="0.66"></div>
                                 <strong class="progress-title">UI Design</strong>
                             </div>
                         </div>
                         <!-- .col-xs-4 -->
                     </div>
                     <!-- .row -->
                 </div>
                 <!-- .col-sm-6 -->

                 <div class="col-sm-6 clear-mrg">
                     <h2 class="title-thin text-muted">professional skills</h2>

                     <div class="progress-line crt-animate" role="progressbar" aria-valuenow="90" aria-valuemin="0"
                          aria-valuemax="100">
                         <strong class="progress-title">Php & MySQL</strong>

                         <div class="progress-bar" data-text="90%" data-value="0.9"></div>
                     </div>

                     <div class="progress-line crt-animate" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                          aria-valuemax="100">
                         <strong class="progress-title">Javascript</strong>

                         <div class="progress-bar" data-text="80%" data-value="0.8"></div>
                     </div>

                     <div class="progress-line crt-animate" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                          aria-valuemax="100">
                         <strong class="progress-title">UX Design</strong>

                         <div class="progress-bar" data-text="80%" data-value="0.8"></div>
                     </div>

                     <div class="progress-line crt-animate" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                          aria-valuemax="100">
                         <strong class="progress-title">UI Design</strong>

                         <div class="progress-bar" data-text="70%" data-value="0.7"></div>
                     </div>
                 </div>
                 <!-- .col-sm-6 -->
             </div>
             <!-- .row -->
         </section>
         <!-- .section -->

         <section class="section brd-btm padd-box">
             <div class="row">
                 <div class="col-sm-6 clear-mrg">
                     <h2 class="title-thin text-muted">professional skills</h2>

                     <div class="progress-line crt-animate" role="progressbar" aria-valuenow="90" aria-valuemin="0"
                          aria-valuemax="100">
                         <strong class="progress-title">Php & MySQL</strong>

                         <div class="progress-bar" data-text="90%" data-value="0.9"></div>
                     </div>

                     <div class="progress-line crt-animate" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                          aria-valuemax="100">
                         <strong class="progress-title">Javascript</strong>

                         <div class="progress-bar" data-text="80%" data-value="0.8"></div>
                     </div>

                     <div class="progress-line crt-animate" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                          aria-valuemax="100">
                         <strong class="progress-title">UX Design</strong>

                         <div class="progress-bar" data-text="80%" data-value="0.8"></div>
                     </div>
                 </div>
                 <!-- .col-sm-6 -->

                 <div class="col-sm-6 clear-mrg">
                     <h2 class="title-thin text-muted">personal characteristics</h2>

                     <ul class="styled-list clear-mrg">
                         <li>Lake Marcelview</li>
                         <li>New Tara</li>
                         <li>Abbeyshire</li>
                         <li>Kassulkechester</li>
                     </ul>
                 </div>
                 <!-- .col-sm-6 -->
             </div>
             <!-- .row -->
         </section>
         <!-- .section -->

         <section class="section brd-btm padd-box">
             <div class="row">
                 <div class="col-sm-12 clear-mrg">
                     <h2 class="title-thin text-muted">interests</h2>

                     <ul class="icon-list icon-list-col3 clearfix">
                         <li><span class="crt-icon crt-icon-music"></span> North Adella</li>
                         <li><span class="crt-icon crt-icon-blog"></span> North Adella</li>
                         <li><span class="crt-icon crt-icon-blog"></span> North Adella</li>
                         <li><span class="crt-icon crt-icon-blog"></span> North Adella</li>
                         <li><span class="crt-icon crt-icon-blog"></span> North Adella</li>
                         <li><span class="crt-icon crt-icon-music"></span> North Adella</li>
                         <li><span class="crt-icon crt-icon-blog"></span> North Adella</li>
                         <li><span class="crt-icon crt-icon-blog"></span> North Adella</li>
                     </ul>
                 </div>
             </div>
         </section>
         <!-- .section -->

         <section class="section padd-box">
             <h2 class="title-thin text-muted">Awards and Achievements</h2>

             <div class="row">
                 <div class="col-sm-6 clear-mrg">
                     <div class="award-box">
                         <figure class="award-img">
                             <img src="assets/images/uploads/awards/award-01.png" alt="">
                         </figure>

                         <h3 class="award-title">Lake Marcelview</h3>

                         <div class="award-text text-muted clear-mrg">
                             <p>Your brand is the core of your marketing, the central theme around your products and
                                 services.
                                 Your brand is not your Logo or your Company Name</p>
                         </div>
                     </div>
                 </div>
                 <!-- .col-sm-6 -->

                 <div class="col-sm-6 clear-mrg">
                     <div class="award-box">
                         <figure class="award-img">
                             <img src="assets/images/uploads/awards/award-02.png" alt="">
                         </figure>

                         <h3 class="award-title">Lake Marcel Awards</h3>

                         <div class="award-text text-muted clear-mrg">
                             <p>Your brand is the core of your marketing, the central theme around your products and
                                 services.</p>
                         </div>
                     </div>
                 </div>
                 <!-- .col-sm-6 -->
             </div>
             <!-- .row -->
         </section>
         <!-- .section -->

         </div>
         <!-- .crt-paper-cont -->
         </div>
         <!-- .crt-paper -->
         </div>
         <!-- .crt-paper-layers -->

         </div>
         <!-- .crt-container-sm -->
         </div>
         <!-- .crt-container -->

         <div id="crt-sidebar">
             <button id="crt-sidebar-close" class="btn btn-icon btn-light btn-shade">
                 <span class="crt-icon crt-icon-close"></span>
             </button>

             <div id="crt-sidebar-inner">
                 <nav id="crt-main-nav-sm" class="visible-xs text-center">

                     <ul class="clear-list">
                         <li><a href="index.html">home</a></li>
                         <li><a href="portfolio.html">portfolio</a>
                         <li class="has-sub-menu"><a href="#">pages</a>
                             <ul class="sub-menu">
                                 <li><a href="typography.html">typography</a></li>
                                 <li><a href="components.html">components</a></li>
                                 <li><a href="search.html">search</a></li>
                                 <li><a href="404.html">404</a></li>
                             </ul>
                         </li>
                         <li class="has-sub-menu"><a href="category.html">blog</a>
                             <ul class="sub-menu">
                                 <li><a href="single.html">single</a></li>
                                 <li><a href="single-image.html">single image</a></li>
                                 <li><a href="single-slider.html">single slider</a></li>
                                 <li><a href="single-youtube.html">single youtube</a></li>
                                 <li><a href="single-vimeo.html">single vimeo</a></li>
                                 <li><a href="single-dailymotion.html">single dailymotion</a></li>
                                 <li><a href="single-soundcloud.html">single soundcloud</a></li>
                                 <li><a href="single-video.html">single video</a></li>
                                 <li><a href="single-audio.html">single audio</a></li>
                             </ul>
                         </li>
                         <li><a href="contact.html">contact</a></li>
                     </ul>
                 </nav>


                 <div class="crt-card bg-primary text-center">
                     <div class="crt-card-avatar">
                         <img class="avatar avatar-195" src="assets/images/uploads/avatar/avatar-195x195.png"
                              srcset="assets/images/uploads/avatar/avatar-390x390-2x.png 2x" width="195" height="195" alt="">
                     </div>
                     <div class="crt-card-info">
                         <h2 class="text-upper">Ola Lowe</h2>

                         <p class="text-muted">Data scientist | Analyzer</p>
                         <ul class="crt-social clear-list">
                             <li><a><span class="crt-icon crt-icon-facebook"></span></a></li>
                             <li><a><span class="crt-icon crt-icon-twitter"></span></a></li>
                             <li><a><span class="crt-icon crt-icon-google-plus"></span></a></li>
                             <li><a><span class="crt-icon crt-icon-instagram"></span></a></li>
                             <li><a><span class="crt-icon crt-icon-pinterest"></span></a></li>
                         </ul>
                     </div>
                 </div>
                 <aside class="widget-area">
                     <section class="widget widget_search">
                         <form role="search" method="get" class="search-form" action="#">
                             <label>
                                 <span class="screen-reader-text">Search for:</span>
                                 <input type="search" class="search-field" placeholder="Search" value="" name="s">
                             </label>
                             <button type="submit" class="search-submit">
                                 <span class="screen-reader-text">Search</span>
                                 <span class="crt-icon crt-icon-search"></span>
                             </button>
                         </form>
                     </section>

                     <section class="widget widget_posts_entries">
                         <h2 class="widget-title">popular posts</h2>
                         <ul>
                             <li>
                                 <a class="post-image" href="#">
                                     <img src="assets/images/uploads/blog/img-70x70-01.png" alt="">
                                 </a>

                                 <div class="post-content">
                                     <h3>
                                         <a href="#">contextual advertising</a>
                                     </h3>
                                 </div>
                                 <div class="post-category-comment">
                                     <a href="#" class="post-category">Work</a>
                                     <a href="#" class="post-comments">256 comments</a>
                                 </div>
                             </li>

                             <li>
                                 <a class="post-image" href="#">
                                     <img src="assets/images/uploads/blog/img-70x70-02.jpg" alt="">
                                 </a>

                                 <div class="post-content">
                                     <h3>
                                         <a href="#">grilling tips for the dog days of summer</a>
                                     </h3>
                                 </div>
                                 <div class="post-category-comment">
                                     <a href="#" class="post-category">Work</a>
                                     <a href="#" class="post-comments">256 comments</a>
                                 </div>
                             </li>

                             <li>
                                 <a class="post-image" href="#">
                                     <img src="assets/images/uploads/blog/img-70x70-03.png" alt="">
                                 </a>

                                 <div class="post-content">
                                     <h3><a href="#"></a>branding do you know who are</h3>
                                 </div>
                                 <div class="post-category-comment">
                                     <a href="#" class="post-category">Work</a>
                                     <a href="#" class="post-comments">256 comments</a>
                                 </div>
                             </li>
                         </ul>
                     </section>

                     <section id="tag_cloud-2" class="widget widget_tag_cloud">
                         <h2 class="widget-title">Tags</h2>

                         <div class="tagcloud">
                             <a href="#" class="tag-link-5 tag-link-position-1" title="1 topic"
                                style="font-size: 1em;">Audios</a>
                             <a href="#" class="tag-link-7 tag-link-position-2" title="1 topic"
                                style="font-size: 1em;">Freelance</a></div>
                     </section>

                     <section id="recent-posts-3" class="widget widget_recent_entries">
                         <h4 class="widget-title">Recent Posts</h4>
                         <ul>
                             <li>
                                 <a href="#">Global Travel And Vacations Luxury Travel On A Tight Budget</a>

                                 <div class="post-category-comment">
                                     <a href="#" class="post-category">Photography</a>
                                     <a href="#" class="post-comments">256 comments</a>
                                 </div>
                             </li>
                             <li>
                                 <a href="#">cooking for one</a>

                                 <div class="post-category-comment">
                                     <a href="#" class="post-category">Work</a>
                                     <a href="#" class="post-comments">256 comments</a>
                                 </div>
                             </li>
                             <li>
                                 <a href="#">An Ugly Myspace Profile Will Sure Ruin Your Reputation</a>

                                 <div class="post-category-comment">
                                     <a href="#" class="post-category">Photography</a>
                                     <a href="#" class="post-comments">256 comments</a>
                                 </div>
                             </li>
                         </ul>
                     </section>

                     <section class="widget widget_categories">
                         <h4 class="widget-title">post categories</h4>
                         <ul>
                             <li class="cat-item"><a href="#">Audios</a>5</li>
                             <li class="cat-item"><a href="#">Daili Inspiration</a>2</li>
                             <li class="cat-item"><a href="#">Freelance</a>27</li>
                             <li class="cat-item"><a href="#">Links</a>5</li>
                             <li class="cat-item"><a href="#">Mobile</a>2</li>
                             <li class="cat-item"><a href="#">Phography</a>27</li>
                         </ul>
                     </section>
                 </aside>

             </div>
             <!-- #crt-sidebar-inner -->
         </div>
         <!-- #crt-sidebar -->
         <footer id="crt-footer" class="crt-container-lg">
             <div class="crt-container">
                 <div class="crt-container-sm clear-mrg text-center">
                     <p>Ola Resume @ All Rights Reserved 2016</p>
                 </div>
             </div>
             <!-- .crt-container -->
         </footer>
         <!-- #crt-footer -->

         <svg id="crt-bg-shape-1" class="hidden-sm hidden-xs" height="519" width="758">
             <polygon class="pol" points="0,455,693,352,173,0,92,0,0,71"/>
         </svg>

         <svg id="crt-bg-shape-2" class="hidden-sm hidden-xs" height="536" width="633">
             <polygon points="0,0,633,0,633,536"/>
         </svg>
         </div>
         <!-- .crt-wrapper -->

         </body>
         </html>
         */
    }

    var aboutMe: Component {
        Div { // should be a section
            Element(name: "a") { }.attribute(named: "name", value: "about")
            Div {
                Div {
                    H2("About Me").class("title-lg text-upper")
                    List(context.site.content.aboutMe.components(separatedBy: "\n\n")) {
                        Paragraph($0)
                    }.style("list-style-type: none;padding: 0;margin: 0;")
                }.class("col-sm-12")
            }.class("row")
        }.class("section brd-btm padd-box")
    }

    var personalInformation: Component {
        Div { // should be a section
            Div {
                Div {
                    H2("personal information").class("title-thin text-muted")
                    Element(name: "dl") {
                        Element(name: "dt") { Text("Full Name") }.class("text-upper")
                        Element(name: "dd") { Text(context.site.content.profileName) }

                        Element(name: "dt") { Text("RESIDENCE") }.class("text-upper")
                        Element(name: "dd") { Text(context.site.content.residence) }

                        Element(name: "dt") { Text("Years in the industry") }.class("text-upper")
                        Element(name: "dd") { Text("\(context.site.content.yearsInIndustry)") }

                        Element(name: "dt") { Text("Primary Skill") }.class("text-upper")
                        Element(name: "dd") { Text(context.site.content.primarySkill) }
                    }.class("dl-horizontal clear-mrg")
                }.class("col-sm-6 clear-mrg")

                Div {
                    H2("primary languages/tech stacks").class("title-thin text-muted")
                    ProficiencySlider(name: "Swift", currentLevel: 10).html
                    ProficiencySlider(name: "iOS SDK", currentLevel: 8).html
                    ProficiencySlider(name: "Server Side Swift", currentLevel: 7).html
                    ProficiencySlider(name: "macOS/watchOS/tvOS SDK", currentLevel: 6).html
                    ProficiencySlider(name: "C#/.NET", currentLevel: 7).html
                    ProficiencySlider(name: "Scripting Languages (Ruby, Bash, etc...)", currentLevel: 5).html
                }.class("col-sm-6 clear-mrg")
            }.class("row")
        }.class("section brd-btm padd-box")
    }

    private struct ProficiencySlider {
        let name: String
        let currentLevel: UInt8

        var proficiencyLevel: String {
            switch currentLevel {
                case 0...4: return "beginner"
                case 5...6: return "intermediate"
                case 7...8: return "advanced"
                default: return "highly proficient"
            }
        }

        var html: Component {
            Div {
                Element(name: "Strong") {
                    Text(name)
                }.class("progress-title")
                Span {
                    ComponentGroup(members: (0...currentLevel).map { _ in Span().class("bullet fill") })
                    ComponentGroup(members: (0..<10-currentLevel).map { _ in Span().class("bullet") })
                }.class("progress-bar")
                Span(proficiencyLevel).class("progress-text text-muted")
            }
            .class("progress-bullets crt-animate")
            .attribute(named: "role", value: "progressbar")
            .attribute(named: "aria-valuenow", value: "\(currentLevel)")
            .attribute(named: "aria-valuemin", value: "0")
            .attribute(named: "aria-valuemax", value: "10")
        }
    }
}
