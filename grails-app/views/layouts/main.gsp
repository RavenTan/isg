<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <title>IS Gaming</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">

	    <!-- Le styles -->
	    <link rel="stylesheet" media="screen" href="${resource(dir: 'css', file: 'bootstrap.css')}">
	    <link rel="stylesheet" media="screen" href="${resource(dir: 'css', file: 'custom.css')}">
	    <!--<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">-->

	    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
		<script src="../assets/js/html5shiv.js"></script>
		<![endif]-->

		<!-- Fav and touch icons -->
		<link rel="shortcut icon" href="${resource(dir: 'images/ico', file: 'favicon.png')}">
	    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${resource(dir: 'images/ico', file: 'apple-touch-icon-144-precomposed.png')}">
	    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${resource(dir: 'images/ico', file: 'apple-touch-icon-114-precomposed.png')}">
	    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${resource(dir: 'images/ico', file: 'apple-touch-icon-72-precomposed.png')}">
	    <link rel="apple-touch-icon-precomposed" href="${resource(dir: 'images/ico', file: 'apple-touch-icon-57-precomposed.png')}">

	    <script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
	    <script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script><!--solve cal stuff-->
	    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>	
	    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/themes/base/jquery-ui.css" type="text/css">
	    
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-transition.js')}"></script>
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-alert.js')}"></script>
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-modal.js')}"></script>
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-dropdown.js')}"></script>
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-scrollspy.js')}"></script>
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-tab.js')}"></script>    
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-tooltip.js')}"></script>
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-popover.js')}"></script>
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-button.js')}"></script>
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-collapse.js')}"></script>
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-carousel.js')}"></script>
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-typeahead.js')}"></script>
	    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap-affix.js')}"></script>
	    <!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

		<g:layoutHead/>

	</head>

	<body style="background: url('${request.home.background}') no-repeat center center fixed; ">
	    <div id="wrap">
	        <div class="container">

	            <div class="row-fluid">
	                <div class="span1">
	                    <!--empty-->
	                </div>
	                <div class="span10">
	                    <div class="masthead">
	                        <!--<h3 class="muted">Project name</h3>-->
	                        <div class="row-fluid">
                                <div class="span4" style="margin-top:50px; height:200px; text-align:center;">
                                    <a href="${request.home.topSponsor1Url}"><img style="height:200px;" src="${request.home.topSponsor1}"></a>
                                </div>
                                <div class="span4" style="text-align:center;">
                                	<a href="${createLink(uri: '/')}"><img style="height:300px;" src="${request.home.logo}"/></a>
	                            </div>
                                <div class="span4" style="margin-top:50px; height:200px; text-align:center;">
                                    <a href="${request.home.topSponsor2Url}"><img style="width:200px; margin-top:60px;" src="${request.home.topSponsor2}"></a>
                                </div>
	                        </div>

	                        <div class="navbar navbar-inverse">
	                            <div class="navbar-inner">
	                                <div class="container">
	                                    <ul class="nav">
	                                        <li class="${controllerName == null ? 'active' : ''}"><a href="${createLink(uri: '/')}">Home</a></li>
	                                        <li class="${controllerName == 'news' ? 'active' : ''}"><a href="${createLink(controller:'news', action:'index')}">News</a></li>
	                                        <li class="${controllerName == 'feature' ? 'active' : ''}"><a href="${createLink(controller:'feature', action:'index')}">Features</a></li>
	                                        <li class="${controllerName == 'player' ? 'active' : ''}"><a href="${createLink(controller:'player', action:'index')}">Players</a></li>
	                                        <li class="${controllerName == 'media' ? 'active' : ''}"><a href="${createLink(controller:'media', action:'index')}">Media</a></li>
	                                        <li class="${controllerName == 'event' ? 'active' : ''}"><a href="${createLink(controller:'event', action:'index')}">Events</a></li>
	                                        <li><a class="shoplink pointer">Shop</a></li>
	                                        <li>
	                                            <img id="facebooklink" src="${resource(dir: 'images/ico', file: 'icon_facebook.png')}"/>
	                                            <img id="twitterlink" src="${resource(dir: 'images/ico', file: 'icon_twitter.png')}"/>
	                                            <img id="youtubelink" src="${resource(dir: 'images/ico', file: 'icon_youtube.png')}"/>
	                                            <!--<img id="steamlink" src="${resource(dir: 'images/ico', file: 'icon_stream.png')}"/>-->
	                                        </li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </div><!-- /.navbar -->
	                    </div><!--masthead-->
	                </div><!--span10-->
	            </div><!--row-fluid-->

	            <div class="row-fluid">
	                <!--adversisement-->
	                <div class="span1">
	                    <a href="${request.home.advertisementSideUrl}"><img style="width:100%" src="${request.home.advertisementSide}"></a>
	                </div>
	                <div class="span10">

	                    <g:layoutBody/>

	                </div><!--span10-->
	            </div><!--row-fluid-->
	        </div> <!-- /container -->

	        <div id="space"></div>
	        <div id="push"></div>

	    </div><!--wrap-->

	    <div id="footer">
	      <div class="container">
	        <p class="muted credit">
	            <a href="${createLink(controller:'footer', action:'about')}">About Us</a> | 
	            <a href="${createLink(controller:'footer', action:'management')}">Management & Staff</a> | 
	            <a href="${createLink(controller:'footer', action:'contact')}">Contact Us</a> | 
	            <!--<a href="#">Users</a> | -->
	            <a href="${createLink(controller:'footer', action:'privacy')}">Privacy</a> | 
	            <a href="${createLink(controller:'footer', action:'terms')}">Terms of Agreement</a>
	        <p class="muted">
	            COPYRIGHT © IS-GAMING 2013 ALL RIGHTS RESERVED
	        </p>
	      </div>
	    </div>
	    <script>	
			$(document).on("click", "#facebooklink", function () {
				new_tab("http://www.facebook.com/isgamingnet")
			});

			$(document).on("click", "#twitterlink", function () {
				new_tab("http://twitter.com/insidious_G")
			});

			$(document).on("click", ".shoplink", function () {
				new_tab("http://www.insidiousgaming.com.sg/shop/")
			});

			function new_tab(url)
			{
				var win=window.open(url, '_blank');
				win.focus();
			}
	    </script>
	</body>
</html>

