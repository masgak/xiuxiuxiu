<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="xiuxiuxiu.dao.*"%>
<%@page import="xiuxiuxiu.pojo.User"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
<title>文章详细信息</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/blog.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/single.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Raleway:100i,200,200i,300,400,500,500i,600,700,700i,800,800i" rel="stylesheet">
</head>
<body>
<!-- banner -->
   <div class="agileits_w3layouts_banner_nav">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				<h1><a class="navbar-brand" href="index.html"><i class="fa fa-crosshairs" aria-hidden="true"></i> Treasurer</a></h1>

				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				
			</nav>		
	  <div class="clearfix"> </div> 
    </div> 
<!-- Modal1 -->
					<!-- /agile_inner_banner_info -->													
							<div class="agile_inner_banner_info">
							   <h2>详细文章</h2>
							</div>
					<!-- //agile_inner_banner_info -->
			<!-- single -->
	<div class="services">
		<div class="container">
			<div class="col-md-8 single-left">
				<div class="single-left1">
					<img src="images/banner2.jpg" alt=" " class="img-responsive" />
					
					<ul>
						<li><h3>${article.title}</h3><span class="fa fa-user" aria-hidden="true"></span><a href="#">${article.authorName}</a></li>
						
					</ul>
					<p>${article.text}</p>
				</div>
				<div class="admin">
					<p>CPU的性能是引起死机的一个常见原因，如果CPU的温度过高就会导致死机或重启现象，可考虑更换一个好的散热风扇，解决CPU温度过高导致的情况。 </p>
					<a href="#"><i>电脑维修小提示</i></a>
				</div>
			</div>
			<div class="col-md-4 event-right wthree-event-right">
				<div class="event-right1 agileinfo-event-right1">
					<div class="search1 agileits-search1">
						<form action="#" method="post">
							<input type="search" name="Search" placeholder="搜索文章/通知" required="">
							<input type="submit" value="检索">
						</form>
					</div>
						<div class="posts w3l-posts">
						<h3>通知</h3>
						<div class="posts-grids w3-posts-grids">
							<div class="posts-grid w3-posts-grid">
								<div class="posts-grid-left w3-posts-grid-left">
									<a href="single.html"><img src="images/1.jpg" alt=" " class="img-responsive" /></a>
								</div>
								<div class="posts-grid-right w3-posts-grid-right">
									<h4><a href="single.html">维修场次变更通知</a></h4>
									<ul class="wthree_blog_events_list">
										<li><i class="fa fa-calendar" aria-hidden="true"></i>10/5/2017</li>
										<li><i class="fa fa-user" aria-hidden="true"></i><a href="single.html">管理员</a></li>
									</ul>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="posts-grid w3-posts-grid">
								<div class="posts-grid-left w3-posts-grid-left">
									<a href="single.html"><img src="images/6.jpg" alt=" " class="img-responsive" /></a>
								</div>
								<div class="posts-grid-right w3-posts-grid-right">
									<h4><a href="single.html">维修场地变更通知</a></h4>
									<ul class="wthree_blog_events_list">
										<li><i class="fa fa-calendar" aria-hidden="true"></i>12/5/2017</li>
										<li><i class="fa fa-user" aria-hidden="true"></i><a href="single.html">管理员</a></li>
									</ul>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="posts-grid w3-posts-grid">
								<div class="posts-grid-left w3-posts-grid-left">
									<a href="single.html"><img src="images/7.jpg" alt=" " class="img-responsive" /></a>
								</div>
								<div class="posts-grid-right w3-posts-grid-right">
									<h4><a href="single.html">零件库更新通知</a></h4>
									<ul class="wthree_blog_events_list">
										<li><i class="fa fa-calendar" aria-hidden="true"></i>13/5/2017</li>
										<li><i class="fa fa-user" aria-hidden="true"></i><a href="single.html">管理员</a></li>
									</ul>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="tags tags1 w3layouts-tags">
						<h3>关键词检索</h3>
						<ul>
							<li><a href="single.html">网络故障</a></li>
							<li><a href="single.html">无法开机</a></li>
							<li><a href="single.html">蓝屏</a></li>
							<li><a href="single.html">自动重启</a></li>
							<li><a href="single.html">病毒常识</a></li>
							<li><a href="single.html">系统变慢</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //single -->
<!-- //footer -->
<!-- menu -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
	<!-- password-script -->
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

<!-- //js -->
<script src="js/bars.js"></script>
<!-- pop-up-box -->    
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" property="" media="all" />
	<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<!--//pop-up-box -->
<div id="small-dialog" class="mfp-hide">
	<iframe src="https://player.vimeo.com/video/67001156"></iframe>
</div>
<script>
	$(document).ready(function() {
	$('.popup-with-zoom-anim').magnificPopup({
		type: 'inline',
		fixedContentPos: false,
		fixedBgPos: true,
		overflowY: 'auto',
		closeBtnInside: true,
		preloader: false,
		midClick: true,
		removalDelay: 300,
		mainClass: 'my-mfp-zoom-in'
	});
																	
	});
</script>

<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>