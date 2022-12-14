<%-- 
    Document   : home
    Created on : Jan 10, 2020, 12:52:57 AM
    Author     : siji4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="homecss.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <head>
	
<!-- Google Tag Manager -->
<script async="" src="//www.google-analytics.com/analytics.js"></script><script async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-5C34RXR"></script><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5C34RXR');</script>
<!-- End Google Tag Manager -->
	
	

<meta name="google-site-verification" content="Pm6r7k-1VF1_0Y45NrvuCHyiUEjG3LphNHsALP_apEw"> 
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="initial-scale=1, maximum-scale=1">
 

 <link media="all" rel="stylesheet" href="http://gflenv.com/wp-content/themes/gfl/css/bootstrap.min.css" type="text/css">
 <link media="all" rel="stylesheet" href="http://gflenv.com/wp-content/themes/gfl/font-awesome/css/font-awesome.min.css" type="text/css">
 <link media="all" rel="stylesheet" href="http://gflenv.com/wp-content/themes/gfl/css/main.css" type="text/css">
 <!--[if lt IE 9]>
  <script src="http://gflenv.com/wp-content/themes/gfl/js/vendor/html5shiv.min.js"></script>
 <![endif]-->
 
  <!--[if IE 9]>
  <link media="all" rel="stylesheet" href="http://gflenv.com/wp-content/themes/gfl/css/ie9.css" type="text/css" />
 <![endif]-->
 <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic,300,300italic" rel="stylesheet" type="text/css">
 
 <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
<link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">
<link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">
<link rel="manifest" href="/manifest.json">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#96c93d">
<meta name="theme-color" content="#ffffff">
 
 <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-16772652-1', 'auto');
  ga('send', 'pageview');

</script>

 <link rel="alternate" hreflang="en-us" href="http://gflenv.com">
<link rel="alternate" hreflang="fr-fr" href="http://gflenv.com/fr/">

<!-- This site is optimized with the Yoast SEO plugin v10.1.2 - https://yoast.com/wordpress/plugins/seo/ -->
<title>GFL Environmental Inc. | Waste Management &amp; Infrastructure Services</title>
<meta name="description" content="Waste Management | Recycling | Soil Remediation, Excavation, Demolition, Shoring &amp; Foundations Services | HAZMAT Emergency Response | GFL Environmental Inc.">
<link rel="canonical" href="http://gflenv.com/">
<link rel="publisher" href="https://plus.google.com/u/0/b/109838986821228958501/109838986821228958501">
<meta property="og:locale" content="en_US">
<meta property="og:type" content="website">
<meta property="og:title" content="GFL Environmental Inc. | Green Today. Green For Life.">
<meta property="og:description" content="GFL is the only major diversified environmental services company in North America offering services in solid waste management, liquid waste management and soil remediation.">
<meta property="og:url" content="http://gflenv.com/">
<meta property="og:site_name" content="GFL Environmental Inc. ">
<meta property="og:image" content="http://gflenv.com/wp-content/uploads/2016/07/GFL-FB-Thumb.jpg">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:description" content="GFL is the only major diversified environmental services company in North America offering services in solid waste management, liquid waste management and soil remediation.">
<meta name="twitter:title" content="GFL Environmental Inc. | Green Today. Green For Life.">
<meta name="twitter:image" content="http://gflenv.com/wp-content/uploads/2016/07/GFL-Twitter-Thumb.jpg">
<script type="application/ld+json">{"@context":"https://schema.org","@type":"WebSite","@id":"http://gflenv.com/#website","url":"http://gflenv.com/","name":"GFL Environmental Inc. ","potentialAction":{"@type":"SearchAction","target":"http://gflenv.com/?s={search_term_string}","query-input":"required name=search_term_string"}}</script>
<script type="application/ld+json">{"@context":"https://schema.org","@type":"Organization","url":"http://gflenv.com/","sameAs":["https://www.linkedin.com/company/gfl-environmental-inc-","https://plus.google.com/u/0/b/109838986821228958501/109838986821228958501","https://www.youtube.com/channel/UC4j8cdyyHcZEXgSFX-jbD5g/videos"],"@id":"http://gflenv.com/#organization","name":"GFL Environmental Inc.","logo":"http://gflenv.com/wp-content/uploads/2017/03/GFL_Logo_Stacked.jpg"}</script>
<meta name="google-site-verification" content="Pm6r7k-1VF1_0Y45NrvuCHyiUEjG3LphNHsALP_apEw">
<!-- / Yoast SEO plugin. -->

<link rel="dns-prefetch" href="//www.google.com">
<link rel="dns-prefetch" href="//ajax.googleapis.com">
<link rel="dns-prefetch" href="//s.w.org">
<!-- This site uses the Google Analytics by MonsterInsights plugin v7.10.3 - Using Analytics tracking - https://www.monsterinsights.com/ -->
<script type="text/javascript" data-cfasync="false">
	var mi_version         = '7.10.3';
	var mi_track_user      = true;
	var mi_no_track_reason = '';
	
	var disableStr = 'ga-disable-UA-101400970-1';

	/* Function to detect opted out users */
	function __gaTrackerIsOptedOut() {
		return document.cookie.indexOf(disableStr + '=true') > -1;
	}

	/* Disable tracking if the opt-out cookie exists. */
	if ( __gaTrackerIsOptedOut() ) {
		window[disableStr] = true;
	}

	/* Opt-out function */
	function __gaTrackerOptout() {
	  document.cookie = disableStr + '=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/';
	  window[disableStr] = true;
	}
	
	if ( mi_track_user ) {
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','__gaTracker');

		__gaTracker('create', 'UA-101400970-1', 'auto');
		__gaTracker('set', 'forceSSL', true);
		__gaTracker('require', 'displayfeatures');
		__gaTracker('send','pageview');
	} else {
		console.log( "" );
		(function() {
			/* https://developers.google.com/analytics/devguides/collection/analyticsjs/ */
			var noopfn = function() {
				return null;
			};
			var noopnullfn = function() {
				return null;
			};
			var Tracker = function() {
				return null;
			};
			var p = Tracker.prototype;
			p.get = noopfn;
			p.set = noopfn;
			p.send = noopfn;
			var __gaTracker = function() {
				var len = arguments.length;
				if ( len === 0 ) {
					return;
				}
				var f = arguments[len-1];
				if ( typeof f !== 'object' || f === null || typeof f.hitCallback !== 'function' ) {
					console.log( 'Not running function __gaTracker(' + arguments[0] + " ....) because you are not being tracked. " + mi_no_track_reason );
					return;
				}
				try {
					f.hitCallback();
				} catch (ex) {

				}
			};
			__gaTracker.create = function() {
				return new Tracker();
			};
			__gaTracker.getByName = noopnullfn;
			__gaTracker.getAll = function() {
				return [];
			};
			__gaTracker.remove = noopfn;
			window['__gaTracker'] = __gaTracker;
					})();
		}
</script>
<!-- / Google Analytics by MonsterInsights -->
<link rel="stylesheet" id="contact-form-7-css" href="http://gflenv.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.1.1" type="text/css" media="all">
<link rel="stylesheet" id="cf7cf-style-css" href="http://gflenv.com/wp-content/plugins/cf7-conditional-fields/style.css?ver=1.4.1" type="text/css" media="all">
<link rel="stylesheet" id="jquery-ui-theme-css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.min.css?ver=1.11.4" type="text/css" media="all">
<link rel="stylesheet" id="jquery-ui-timepicker-css" href="http://gflenv.com/wp-content/plugins/contact-form-7-datepicker/js/jquery-ui-timepicker/jquery-ui-timepicker-addon.min.css?ver=4.9.13" type="text/css" media="all">
<link rel="stylesheet" id="wpml-legacy-horizontal-list-0-css" href="//gflenv.com/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-list-horizontal/style.css?ver=1" type="text/css" media="all">
<style id="wpml-legacy-horizontal-list-0-inline-css" type="text/css">
.wpml-ls-statics-shortcode_actions{background-color:#ffffff;}.wpml-ls-statics-shortcode_actions, .wpml-ls-statics-shortcode_actions .wpml-ls-sub-menu, .wpml-ls-statics-shortcode_actions a {border-color:#cdcdcd;}.wpml-ls-statics-shortcode_actions a {color:#444444;background-color:#ffffff;}.wpml-ls-statics-shortcode_actions a:hover,.wpml-ls-statics-shortcode_actions a:focus {color:#000000;background-color:#eeeeee;}.wpml-ls-statics-shortcode_actions .wpml-ls-current-language>a {color:#444444;background-color:#ffffff;}.wpml-ls-statics-shortcode_actions .wpml-ls-current-language:hover>a, .wpml-ls-statics-shortcode_actions .wpml-ls-current-language>a:focus {color:#000000;background-color:#eeeeee;}
</style>
<link rel="stylesheet" id="wp-pagenavi-css" href="http://gflenv.com/wp-content/plugins/wp-pagenavi/pagenavi-css.css?ver=2.70" type="text/css" media="all">
<script type="text/javascript" src="http://gflenv.com/wp-includes/js/jquery/jquery.js?ver=1.12.4"></script>
<script type="text/javascript" src="http://gflenv.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1"></script>
<script type="text/javascript">
/* <![CDATA[ */
var monsterinsights_frontend = {"js_events_tracking":"true","download_extensions":"doc,pdf,ppt,zip,xls,docx,pptx,xlsx","inbound_paths":"[]","home_url":"http:\/\/gflenv.com","hash_tracking":"false"};
/* ]]> */
</script>
<script type="text/javascript" src="http://gflenv.com/wp-content/plugins/google-analytics-for-wordpress/assets/js/frontend.min.js?ver=7.10.3"></script>
<link rel="https://api.w.org/" href="http://gflenv.com/wp-json/">
<link rel="alternate" type="application/json+oembed" href="http://gflenv.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fgflenv.com%2F">
<link rel="alternate" type="text/xml+oembed" href="http://gflenv.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fgflenv.com%2F&amp;format=xml">
<meta name="generator" content="WPML ver:4.1.3 stt:1,4;">
<script type="text/javascript">
(function(url){
	if(/(?:Chrome\/26\.0\.1410\.63 Safari\/537\.31|WordfenceTestMonBot)/.test(navigator.userAgent)){ return; }
	var addEvent = function(evt, handler) {
		if (window.addEventListener) {
			document.addEventListener(evt, handler, false);
		} else if (window.attachEvent) {
			document.attachEvent('on' + evt, handler);
		}
	};
	var removeEvent = function(evt, handler) {
		if (window.removeEventListener) {
			document.removeEventListener(evt, handler, false);
		} else if (window.detachEvent) {
			document.detachEvent('on' + evt, handler);
		}
	};
	var evts = 'contextmenu dblclick drag dragend dragenter dragleave dragover dragstart drop keydown keypress keyup mousedown mousemove mouseout mouseover mouseup mousewheel scroll'.split(' ');
	var logHuman = function() {
		if (window.wfLogHumanRan) { return; }
		window.wfLogHumanRan = true;
		var wfscr = document.createElement('script');
		wfscr.type = 'text/javascript';
		wfscr.async = true;
		wfscr.src = url + '&r=' + Math.random();
		(document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(wfscr);
		for (var i = 0; i < evts.length; i++) {
			removeEvent(evts[i], logHuman);
		}
	};
	for (var i = 0; i < evts.length; i++) {
		addEvent(evts[i], logHuman);
	}
})('//gflenv.com/?wordfence_lh=1&hid=6FB2A5A094FF96700B12189384610307');
</script><link rel="icon" href="http://gflenv.com/wp-content/uploads/2017/03/cropped-Favicon_GREEN-1-32x32.png" sizes="32x32">
<link rel="icon" href="http://gflenv.com/wp-content/uploads/2017/03/cropped-Favicon_GREEN-1-192x192.png" sizes="192x192">
<link rel="apple-touch-icon-precomposed" href="http://gflenv.com/wp-content/uploads/2017/03/cropped-Favicon_GREEN-1-180x180.png">
<meta name="msapplication-TileImage" content="http://gflenv.com/wp-content/uploads/2017/03/cropped-Favicon_GREEN-1-270x270.png">
		<style type="text/css" id="wp-custom-css">
			/*
You can add your own CSS here.

Click the help icon above to learn more.
*/

@media only screen 
and (max-device-width: 600px){
iframe {
    height: 200px;
}
}

.pg-title {
    padding: 0 15px;
    position: absolute;
    margin: 0;
    line-height: 1;
    bottom: 40px;
    left: 0;
    right: 0;
    color: #fff;
    font-size: 42px;
    font-weight: 800;
    text-align: center;
    text-shadow: 0 0 55px rgba(0,0,0,0.5);
}

.page-id-5146 .pg-header {
    height: 300px;
    position: relative;
    -webkit-background-size: cover;
    background-size: cover;
    background-repeat: no-repeat;
    background-position: top center;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}

p.postimageCaption {
    margin-top: -14px !important;
    font-size: 14px;
}
li.menu-item.menu-item-type-custom.menu-item-object-custom.menu-item-6709 {
    display: none;
}
.img-h-auto{
	height:auto;
}

.page-id-21860 .s-footer {
    display: none !important;
}

.page-id-21861 .s-footer {
    display: none !important;
}

.page-id-21860 .callout {
    display: none !important;
}

.page-id-21861 .callout {
    display: none !important;
}		</style>
	<script type="text/javascript" async="" src="//gflenv.com/?wordfence_lh=1&amp;hid=6FB2A5A094FF96700B12189384610307&amp;r=0.329174907914378"></script><script async="" src="https://static.hotjar.com/c/hotjar-1357291.js?sv=6"></script></head>
    </head>
    
    <body class="home page-template page-template-index page-template-index-php page page-id-14">
	
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5C34RXR"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
	
  <nav class="navbar navbar-default">
	  
	<div class="container">
		
	<div class="col-md-12 header-numbers hidden-lg hidden-md">
		<ul class="nav navbar-nav navbar-right">
			<li style="text-align: right;">
				<img height="15px" src="http://gflenv.com/wp-content/uploads/2017/01/canada-flag.png"> 
				<a href="tel:1-866-417-2797">1.866.417.2797</a>
			</li>
			<li style="text-align: right;">
				<img height="15px" src="http://gflenv.com/wp-content/uploads/2017/01/usa-flag.png">


				<a href="tel:1-844-464-3587">1.844.GO.GFLUSA (464.3587)</a>



			</li>
		</ul>
	</div>
    
      <div class="col-md-3 col-lg-2">
              

         <a class="navbar-brand" href="/" title="GFL Environmental Inc. ">



           <img class="img-responsive top-logo" src="http://gflenv.com/wp-content/uploads/2019/07/GFL_Env_LOGO_Horiz_RGB_Custom_290_x_128.png" alt="GFL Environmental Inc. ">
         </a>
             </div>
      <div class="col-md-9 col-lg-10">
        <!--Brand and toggle get grouped for better mobile display--> 
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=" #bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <!--Collect the nav links, forms, and other content for toggling--> 
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <div class="mobile-size-nav">
            <div class="col-md-6 navbar-right navbar-search">
                          </div>
            <div class="col-md-12">
              <ul class="nav navbar-nav navbar-right" id="first-nav"><li id="menu-item-133" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-133"><a href="http://gflenv.com/about-us/">About Us</a></li>
<li id="menu-item-134" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-134"><a href="http://gflenv.com/solid-waste-service/">Solid Waste</a></li>
<li id="menu-item-135" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-135"><a href="http://gflenv.com/liquid-and-special-waste/">Liquid &amp; Special Waste</a></li>
<li id="menu-item-136" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-136"><a href="http://gflenv.com/infrastructure/">Infrastructure</a></li>
<li id="menu-item-531" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-531"><a href="/gfl-locations/">GFL Locations</a></li>
<li id="menu-item-5203" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5203"><a href="http://gflenv.com/careers/">Careers</a></li>
<li id="menu-item-139" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-139"><a href="http://gflenv.com/investors/">Investors</a></li>
<li id="menu-item-429" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-429"><a href="http://gflenv.com/safety-compliance/">Safety &amp; Compliance</a></li>
<li id="menu-item-21757" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-21757"><a href="http://gflenv.com/fullcircleproject/">Full Circle Project</a></li>
</ul>            </div>
            <div class="col-md-12">
              <ul class="nav navbar-nav navbar-right" id="second-nav"><li id="menu-item-3707" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3707"><a href="/fr/">Fran??ais</a></li>
<li id="menu-item-130" class="live-chat-btn menu-item menu-item-type-custom menu-item-object-custom menu-item-130"><a href="#header-lv-chat">Live Chat</a></li>
<li id="menu-item-131" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-131"><a href="http://gflenv.com/contact-us/">Contact Us</a></li>
<li id="menu-item-132" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-132"><a target="_blank" href="https://eportal.gflenv.com/eportal/login.aspx">My Account</a></li>
<li id="menu-item-6709" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6709"><a href="tel:%201.866.417.2797">Phone: 1.866.417.2797</a></li>
<li id="menu-item-577" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-577"><a href="https://myhr.gflenv.com">MyHR</a></li>
</ul>            </div>
          </div>
          
          <div class="desktop-size-nav">
	          
            <div class="col-md-12 header-numbers">
	            <ul class="nav navbar-nav navbar-right">
		            <li>
			            <img height="15px" src="http://gflenv.com/wp-content/uploads/2017/01/canada-flag.png"> 
			            <a href="tel:1-866-417-2797">1.866.417.2797</a>
		            </li>
		            <li>
			            <img height="15px" src="http://gflenv.com/wp-content/uploads/2017/01/usa-flag.png">


				<a href="tel:1-844-464-3587">1.844.GO.GFLUSA (464.3587)</a>

		            </li>
	            </ul>
            </div>
            
            <div class="col-md-12">
              <ul class="nav navbar-nav navbar-right"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3707"><a href="/fr/">Fran??ais</a></li>
<li class="live-chat-btn menu-item menu-item-type-custom menu-item-object-custom menu-item-130"><a href="#header-lv-chat">Live Chat</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-131"><a href="http://gflenv.com/contact-us/">Contact Us</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-132"><a target="_blank" href="https://eportal.gflenv.com/eportal/login.aspx">My Account</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6709"><a href="tel:%201.866.417.2797">Phone: 1.866.417.2797</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-577"><a href="https://myhr.gflenv.com">MyHR</a></li>
</ul>            </div>
            <div class="col-md-6 col-xs-6 navbar-right navbar-search">
              <form role="search" method="get" id="searchform" class="searchform" action="http://gflenv.com/">
  <div class="input-group" id="top-search">

    		<input type="text" class="form-control" value="" name="s" id="s" placeholder="Search Website">
    
    <span class="input-group-btn">
      <button class="btn btn-default btn-search" type="submit" id="searchsubmit" value="Search"><i class="fa fa-search"></i></button>
    </span>
  </div>
</form>
            </div>
          </div>
        </div>
        <!--/.navbar-collapse-->
      </div>
      <div class="col-md-12 bottom-nav">
        <div class="bottom-nav__container">
          <ul class="nav navbar-nav navbar-right"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-133"><a href="http://gflenv.com/about-us/">About Us</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-134"><a href="http://gflenv.com/solid-waste-service/">Solid Waste</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-135"><a href="http://gflenv.com/liquid-and-special-waste/">Liquid &amp; Special Waste</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-136"><a href="http://gflenv.com/infrastructure/">Infrastructure</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-531"><a href="/gfl-locations/">GFL Locations</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5203"><a href="http://gflenv.com/careers/">Careers</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-139"><a href="http://gflenv.com/investors/">Investors</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-429"><a href="http://gflenv.com/safety-compliance/">Safety &amp; Compliance</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-21757"><a href="http://gflenv.com/fullcircleproject/">Full Circle Project</a></li>
</ul>        </div>
      </div>
    </div>
    <!--/.container-fluid--> 
  </nav>
 <!-- Header Carousel -->
  <header id="myCarousel" class="carousel slide">
    <!-- Indicators -->
        <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                <li data-target="#myCarousel" data-slide-to="3" class=""></li>
                <li data-target="#myCarousel" data-slide-to="4" class=""></li>
          </ol>
     
    <div class="register-box"> 
      <div class="container">
        <div class="panel panel-default panel-banner">
          <div class="panel-body">
            
                          <img src="http://gflenv.com/wp-content/uploads/2016/07/screen.png" class="img-responsive" alt="">
            
                        <h4>MY ACCOUNT</h4>
            
                        <p>Commercial Customer Ordering / Payment</p>
            
                        <a href="https://eportal.gflenv.com/eportal/login.aspx" target="_blank" class="btn btn-default btn-learn">

                          Register / Sign In            
            </a>
                      </div>

                  </div>
      </div>
    </div>
 
    <!-- Wrapper for slides -->
        <div class="carousel-inner carousel-home-slider">
                     <div class="item active">
         <div class="fill" style="background-image:url(http://gflenv.com/wp-content/uploads/2016/07/img_1-1920x598.jpg);"></div>
        </div>
                     <div class="item ">
         <div class="fill" style="background-image:url(http://gflenv.com/wp-content/uploads/2016/07/gfl-truck.jpg);"></div>
        </div>
                     <div class="item ">
         <div class="fill" style="background-image:url(http://gflenv.com/wp-content/uploads/2016/11/img_3-1-1920x598.jpg);"></div>
        </div>
                     <div class="item ">
         <div class="fill" style="background-image:url(http://gflenv.com/wp-content/uploads/2016/11/img_4-1920x642.jpg);"></div>
        </div>
                     <div class="item ">
         <div class="fill" style="background-image:url(http://gflenv.com/wp-content/uploads/2016/07/img_4-03-1920x642.jpg);"></div>
        </div>
          </div>
        <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="icon-next"></span>
    </a>
  </header>
 
  <!-- Green Carousel -->
  <aside class="green-baner">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          
                          <div class="col-md-9 text-center carousel">
                <div class="carousel-inner">
                                <div class="item active">
                  <h2 class="fill">Green Today. Green For Life.</h2>
                </div>
                                <div class="item ">
                  <h2 class="fill">Green Today. Green For Life.</h2>
                </div>
                                <div class="item ">
                  <h2 class="fill">Green Today. Green For Life.</h2>
                </div>
                                <div class="item ">
                  <h2 class="fill">Green Today. Green For Life.</h2>
                </div>
                                <div class="item ">
                  <h2 class="fill">Green Today. Green For Life.</h2>
                </div>
                               </div>
              </div>

              <div class="col-md-3 text-center carousel">
                <div class="carousel-inner">
                                  <div class="item active">
                    <a href="http://gflenv.com/about-us/" class="btn btn-default">
                                          Learn More                                        </a>
                  </div>
                                  <div class="item ">
                    <a href="http://gflenv.com/about-us/" class="btn btn-default">
                                          Learn More                                        </a>
                  </div>
                                  <div class="item ">
                    <a href="http://gflenv.com/about-us/" class="btn btn-default">
                                          Learn More                                        </a>
                  </div>
                                  <div class="item ">
                    <a href="http://gflenv.com/about-us/" class="btn btn-default">
                                          Learn More                                        </a>
                  </div>
                                  <div class="item ">
                    <a href="http://gflenv.com/about-us/" class="btn btn-default">
                                          Learn More                                        </a>
                  </div>
                                </div>
              </div>
                      
        </div>
      </div>
    </div>
  </aside>
  <!-- Service Section -->
  <section class="service">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          
          <div class="carousel-inner">
                                       <div class="item ">
               <div class="fill" style="background-image:url(http://gflenv.com/wp-content/uploads/2016/07/img_1-1920x598.jpg);"></div>
              </div>
                                       <div class="item ">
               <div class="fill" style="background-image:url(http://gflenv.com/wp-content/uploads/2016/07/gfl-truck.jpg);"></div>
              </div>
                                       <div class="item ">
               <div class="fill" style="background-image:url(http://gflenv.com/wp-content/uploads/2016/11/img_3-1-1920x598.jpg);"></div>
              </div>
                                       <div class="item ">
               <div class="fill" style="background-image:url(http://gflenv.com/wp-content/uploads/2016/11/img_4-1920x642.jpg);"></div>
              </div>
                                       <div class="item ">
               <div class="fill" style="background-image:url(http://gflenv.com/wp-content/uploads/2016/07/img_4-03-1920x642.jpg);"></div>
              </div>
                      </div>
          
                    <div class="row">
                        <div class="col-md-3">
              <div class="panel panel-default">
                <div class="panel-body">
                                    <a href="http://gflenv.com/solid-waste-service/">
                    <img src="" class="img-responsive" alt="">
                  </a>
                  <div class="panel-body__content">
                    <h4 class="headline-service text-uppercase">Solid waste <br> services</h4>
                    <div></div>
                  </div>
                  <a href="http://gflenv.com/solid-waste-service/" class="btn btn-default btn-learn">
                                          Learn More                                      </a>
                </div>
              </div>
            </div>
                        <div class="col-md-3">
              <div class="panel panel-default">
                <div class="panel-body">
                                    <a href="http://gflenv.com/liquid-and-special-waste/">
                    <img src="" class="img-responsive" alt="">
                  </a>
                  <div class="panel-body__content">
                    <h4 class="headline-service text-uppercase">Liquid Hazardous <br> &amp; Special Waste</h4>
                    <div></div>
                  </div>
                  <a href="http://gflenv.com/liquid-and-special-waste/" class="btn btn-default btn-learn">
                                          Learn More                                      </a>
                </div>
              </div>
            </div>
                        <div class="col-md-3">
              <div class="panel panel-default">
                <div class="panel-body">
                                    <a href="http://gflenv.com/infrastructure/">
                    <img src="" class="img-responsive" alt="">
                  </a>
                  <div class="panel-body__content">
                    <h4 class="headline-service text-uppercase">Infrastructure</h4>
                    <div></div>
                  </div>
                  <a href="http://gflenv.com/infrastructure/" class="btn btn-default btn-learn">
                                          Learn More                                      </a>
                </div>
              </div>
            </div>
                        <div class="col-md-3">
              <div class="panel panel-default">
                <div class="panel-body">
                                    <a href="http://gflenv.com/need-a-waste-bin-or-container/">
                    <img src="" class="img-responsive" alt="">
                  </a>
                  <div class="panel-body__content">
                    <h4 class="headline-service text-uppercase">Need a waste bin <br> or container?</h4>
                    <div></div>
                  </div>
                  <a href="http://gflenv.com/need-a-waste-bin-or-container/" class="btn btn-default btn-learn">
                                          Learn More                                      </a>
                </div>
              </div>
            </div>
                      </div>
                  </div>
      </div>
    </div>
  </section>

      <div class="green-bar">
      <div class="container">
        <div class="green-bar__wrap clearfix">
          <p>Used Oil Materials Service Request</p>

                              <a href="http://gflenv.com/used-oil-materials-service-request/" class="btn btn-default">Get a Quote</a>
                    
        </div>
      </div>
    </div>
  
  <!-- Find Location -->
          <aside class="callout" style="background-image: url(http://gflenv.com/wp-content/uploads/2016/07/canada-map.jpg);">
      <div class="text-vertical-center">
        <div class="container">
              <form action="/gfl-locations/">
                    <h2 class="location-header text-uppercase">Find your GFL location</h2>
                     
          <div class="locatin-description col-lg-11 col-sm-11 text-center">
                          <div><p style="text-align: center;">Through our strategically located network of&nbsp;facilities across Canada and 20 states in the US, GFL has capabilities that can be mobilized to service our customers wherever they are.&nbsp;Please enter your location information to find the facility closest to you.</p>
</div>
                       </div>
                  <div class="input-group col-lg-4 col-sm-6 text-center">


                    <input type="text" class="form-control" id="location" name="mp_location" placeholder="City">
 
         

            <span class="input-group-btn">
              <button class="btn btn-default btn-search" type="submit"><i class="fa fa-search"></i></button>
            </span>
        </div>
    </form>
            </div>
      </div>
    </aside>
    <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="col-md-1 col-sm-2 col-xs-3">
                        <img class="img-responsive bottom-logo" src="http://gflenv.com/wp-content/uploads/2016/10/footer-logo.png" alt="">
          </div>
          <div class="col-xs-9 footer__nav-mobile">
            <nav>
              <ul id="menu-footer-mobile-menu" class="menu"><li id="menu-item-414" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-414"><a href="http://gflenv.com/municipal-collection/">Municipal Collection</a></li>
<li id="menu-item-415" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-415"><a href="http://gflenv.com/need-a-waste-bin-or-container/">Waste Bins &amp; Containers</a></li>
<li id="menu-item-416" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-416"><a href="http://gflenv.com/newsmedia/">News, Media &amp; Events</a></li>
<li id="menu-item-417" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-417"><a href="http://gflenv.com/privacy-policy/">Privacy Policy</a></li>
<li id="menu-item-418" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-418"><a href="http://gflenv.com/terms-of-use/">GFL Terms and Conditions of Use</a></li>
</ul>            </nav>
          </div>
          <div class="col-md-7 col-sm-10 col-xs-10 footer-nav">
            <nav>
              <ul id="menu-footer-sitemap" class="menu"><li id="menu-item-2925" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2925"><a href="http://gflenv.com/newsmedia/">News, Media &amp; Events</a></li>
<li id="menu-item-2926" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2926"><a href="http://gflenv.com/municipal-collection/">Municipal Collection</a></li>
<li id="menu-item-2927" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2927"><a href="http://gflenv.com/need-a-waste-bin-or-container/">Waste Bin &amp; Container</a></li>
<li id="menu-item-2928" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2928"><a href="http://gflenv.com/contact-us/">Contact Us</a></li>
<li id="menu-item-2929" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2929"><a href="http://gflenv.com/privacy-policy/">Privacy Policy</a></li>
<li id="menu-item-2930" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2930"><a href="http://gflenv.com/terms-of-use/">Terms of Use</a></li>
</ul>            </nav>
          </div>
          <div class="col-md-4 col-sm-12 col-xs-12 footer-contact">
	          
            <div class="col-md-10 col-xs-10">
              <p class="footer-contact-txt">

                          Contact Us 24/7             

              </p>
              <p class="footer-phone">CANADA&nbsp;-&nbsp;<a href="tel:1-866-417-2797">1.866.417.2797</a><br>
USA&nbsp;-&nbsp;<a href="tel:1-844-464-3587">1.844.464.3587</a></p>
            </div>
            
            
            <div class="col-md-2 col-xs-2 footer-social">
              <p class="footer-contact-txt">

                            Follow             
              </p>
                              <ul class="social-list clearfix">
                                      <li>
                      <a target="_blank" href="https://www.linkedin.com/company/gflenvironmental/">
                        <img src="http://gflenv.com/wp-content/uploads/2016/07/linkedIn.png" alt="">
                      </a>
                    </li>
                                  </ul>
                          </div>
            
            
          </div>
          <div class="clearfix"></div>
          <hr>
          <div class="col-md-12 copy">
            <p>
                              For all inquiries or concerns regarding the City of Toronto municipal waste collection<br>please contact the 311 hotline by phone or web at <a href="http://www.toronto.ca/311" target="_blank">toronto.ca/311</a>.                           </p>
            <p>
                             ?? 2020               GFL Environmental Inc.<br>Green Today. Green For Life.???                           </p>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <!--sticky footer-->
    
    
  <script src="http://gflenv.com/wp-content/themes/gfl/js/vendor/jquery.placeholder.min.js"></script>
  <script src="http://gflenv.com/wp-content/themes/gfl/js/vendor/bootstrap.min.js"></script>
  <script src="http://gflenv.com/wp-content/themes/gfl/js/main.js"></script>
  <script src="http://gflenv.com/wp-content/themes/gfl/js/hotjar.js"></script>
  <link rel="stylesheet" id="map-filter-styles-css" href="http://gflenv.com/wp-content/themes/gfl/mapfilter/map-filter.css?ver=4.9.13" type="text/css" media="all">
<script type="text/javascript">
/* <![CDATA[ */
var wpcf7 = {"apiSettings":{"root":"http:\/\/gflenv.com\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"}};
/* ]]> */
</script>
<script type="text/javascript" src="http://gflenv.com/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=5.1.1"></script>
<script type="text/javascript" src="http://gflenv.com/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4"></script>
<script type="text/javascript" src="http://gflenv.com/wp-includes/js/jquery/ui/datepicker.min.js?ver=1.11.4"></script>
<script type="text/javascript">
jQuery(document).ready(function(jQuery){jQuery.datepicker.setDefaults({"closeText":"Close","currentText":"Today","monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesShort":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"nextText":"Next","prevText":"Previous","dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dayNamesMin":["S","M","T","W","T","F","S"],"dateFormat":"MM d, yy","firstDay":1,"isRTL":false});});
</script>
<script type="text/javascript" src="http://gflenv.com/wp-content/plugins/contact-form-7-datepicker/js/jquery-ui-timepicker/jquery-ui-timepicker-addon.min.js?ver=4.9.13"></script>
<script type="text/javascript" src="http://gflenv.com/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4"></script>
<script type="text/javascript" src="http://gflenv.com/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4"></script>
<script type="text/javascript" src="http://gflenv.com/wp-includes/js/jquery/ui/slider.min.js?ver=1.11.4"></script>
<script type="text/javascript" src="http://gflenv.com/wp-includes/js/jquery/ui/button.min.js?ver=1.11.4"></script>
<script type="text/javascript" src="http://gflenv.com/wp-content/plugins/contact-form-7-datepicker/js/jquery-ui-sliderAccess.js?ver=4.9.13"></script>
<script type="text/javascript" src="https://www.google.com/recaptcha/api.js?render=6LfIoJoUAAAAAMt8mi7O8rUrTJ76Kdrjnf5kOD7K&amp;ver=3.0"></script></body>
    
</html>
