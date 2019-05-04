<%@page import="xiuxiuxiu.pojo.RepairActivity"%>
<%@page import="xiuxiuxiu.pojo.User" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="java.io.*,java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>修咻咻维修平台</title>
	<!-- custom-theme -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/slicebox.css" rel="stylesheet" type="text/css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	    rel='stylesheet' type='text/css'>
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
				<h1><a class="navbar-brand" href="index.html"><i class="fa fa-crosshairs" aria-hidden="true"></i> 修咻咻维修平台</a></h1>

			</div>
			<ul class="agile_forms">
				<li><a class="active" href="#" data-toggle="modal" data-target="#myModal2" id="login" >登录</a> </li>
				<li><a href="#" data-toggle="modal" data-target="#myModal3" id="register" > 注册</a> </li>
				<li><a href="#" data-toggle="modal" data-target="#myModal6" id="exit" >退出登录</a></li>
			</ul>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<nav>
					<ul class="nav navbar-nav">
						<li><a href="首页.jsp" class="hvr-underline-from-center">首页</a></li>
						<li><a href="预约.jsp" class="hvr-underline-from-center">预约</a></li>
						<li><a href="ArticleServlet?type=list" class="hvr-underline-from-center">文章&通知</a></li>
						<li class="dropdown">
            			<a id="my_messsage" href="#" class="dropdown-toggle hvr-underline-from-center" data-toggle="dropdown">我的信息<b class="fa fa-caret-down"></b></a>
            			<ul id="my_message" class="dropdown-menu agile_short_dropdown">
						<%User user=(User)session.getAttribute("name"); %>
						<%String name="null",tel="null",address="null";%>
						<%if (session.getAttribute("name")!=null){%>
						<%name=user.getName();tel=user.getPhoneNumber();address=user.getAddress();}%>
             			<li><a href="icons.html">姓名:<%= name%></a></li>
              			<li><a href="icons.html">手机号:<%= tel%></a></li>
              			<li><a href="icons.html">地址:<%= address%></a></li>
              			<li><a class="active" data-toggle="modal" data-target="#changeinfo-data" href="#"  id="update" >修改个人信息</a></li>
		                <li><a class="active" href="预约管理.jsp"  id="appointment" >预约管理</a></li>
           				</ul>
         				</li>
					</ul>
				</nav>

			</div>
		</nav>

		<div class="clearfix"> </div>
	</div>
	<!-- Modal1 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
	<div class="modal-dialog">
	<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>													
				<div class="signin-form profile">
				<h3 class="agileinfo_sign">登录</h3>	
						<div class="login-form">
							<form class="loginForm" action="StudentServlet?type=login" method="post">
								<input id="phonenumber" name="phonenumber" placeholder="手机号" type="text" required="required">								
								<input id="password" type="password" name="password" placeholder="密码" required="required">
										<div class="tp">
												<input type="submit" value="登录">
										</div>
							</form>
						</div>
																			
				</div>
			</div>
		</div>
	</div>
	</div>
													<!-- //Modal1 -->	
													<!-- Modal2 -->
													<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
														<div class="modal-dialog">
														<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close" data-dismiss="modal">&times;</button>
																	
																	<div class="signin-form profile">
																	<h3 class="agileinfo_sign">注册</h3>	
																			<div class="register-form">
																				<form class="registerForm" action="StudentServlet?type=register" method="post">
																				   <input id="name"type="text" name="name" placeholder="姓名" required="required">
																					<input id="phonenumber"type="text" name="phonenumber" placeholder="手机号码" required="required">
																					<input id="address"type="text" name="address" placeholder="地址(例如：1#101)" required="required">
																					<input id="password"type="password" name="password" placeholder="密码" required="required">
				                                                                    <input type="password" name="password" id="password2" placeholder="确认密码" required="required">

																					<input type="submit" value="注册">
																				</form>
																			</div>
																			
																		</div>
																</div>
															</div>
														</div>
													</div>
													<div class="modal fade" id="myModal6" tabindex="-1" role="dialog">
														<div class="modal-dialog">
														<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close" data-dismiss="modal">&times;</button>
																	
																	<div class="signin-form profile">
																	<h3 class="agileinfo_sign">是否退出登录？</h3>	
																			<div class="login-form">
																				<form action="StudentServlet?type=exit" method="post">
																					<input type="submit" value="确定">
																				</form>
																			</div>
																			
																		</div>
																</div>
															</div>
														</div>
													</div>
	<div class="modal" id="changeinfo-data" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form role="form" action="..." method="post"
					class="registration-form">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">个人信息修改</h4>
					</div>
					<div class="modal-body">
						<!-- Top content -->
						<div class="top-content">
							<div class="row">
								<div class="col-sm-8 col-sm-offset-2 text">
									<div class="description">
										<h3>13123191995</h3>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 col-sm-offset-3 form-box">
									<div class="table-responsive">
										<table class="table">
											<tr>
												<td>姓名</td>
												<td><input type="text" name="name"
													placeholder="${user.getName()}" class="form-control">
												</td>
											</tr>
											<tr>
												<td>学号</td>
												<td><input type="text" name="name"
													placeholder="${user.getStudentID()}" class="form-control"></td>
											</tr>
											<tr>
												<td>邮箱</td>
												<td><input type="text" name="name"
													placeholder="${user.getEmail()}" class="form-control">
												</td>
											</tr>
											<tr>
												<td>地址</td>
												<td><input type="text" name="name"
													placeholder="${user.getAddress()}" class="form-control">
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-success">确认修改</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- //Modal2 -->

	<div class="banner">


		<div class="wrapper">

			<ul id="sb-slider" class="sb-slider">
				<li>
					<a href="#"><img src="images/banner1.jpg" alt="image1"/></a>
					<div class="sb-description">
						<h3>上门维修，在线预约</h3>
					</div>
				</li>
				<li>
					<a href="#"><img src="images/banner4.jpg" alt="image1"/></a>
					<div class="sb-description">
						<h3>服务同学，建设校园</h3>
					</div>
				</li>

			</ul>

			<div id="shadow" class="shadow"></div>

			<div id="nav-arrows" class="nav-arrows">
				<a href="#">Next</a>
				<a href="#">Previous</a>
			</div>

			<div id="nav-dots" class="nav-dots">
				<span class="nav-dot-current"></span>
				<span></span>
				<span></span>
				<span></span>

			</div>
		</div>
		<!-- /wrapper -->
	</div>
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="mid_agile_bannner_top_info">
				<h2>维修活动展示</h2>
				<div class="heading-underline">
					<div class="h-u1"></div>
					<div class="h-u2"></div>
					<div class="h-u3"></div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!--详细的维修活动 -->
			<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<td><strong>序号</strong></td>
						<td><strong>活动时间</strong></td>
						<td><strong>举办地点</strong></td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${repairActivityList}" var="repairActivity"
						varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${repairActivity.time}</td>
							<td>${repairActivity.place}</td>
							<td>
								<form class="ApplyActivity"
									action="<!-- 这边记得改 ...-->ApplyServlet?type=ApplyActivity&id=${student.id}&password=${student.password}"
									method="post">
									<button type="submit" class="">预约此活动</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div>
			<a href="HomePageServlet"><button type="submit" class="">刷新</button></a>
				<a href="#"><button type="submit" class="">更多</button></a>
			</div>
			<br>
		</div>
			<div class="col-md-6 agileits_banner_bottom_left">
				<h3><span>修咻咻</span>维修平台介绍</h3>
				<p class="w3l_para">这是为福大计算机协会维修活动的公告和接受维修预约的一个网站</p>
				<div class="w3l_social_icons">
					<div class="w3l_social_icon_grid w3ls_social_icon_grid">
						<div class="w3l_social_icon_gridl w3_dribbble">
							<a href="#">
								<i class="fa fa-dribbble" aria-hidden="true"></i>
							</a>
						</div>
						<div class="w3l_social_icon_gridr">
							<p>服务人次超过</p><p class="counter">332</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="w3l_social_icon_grid">
						<div class="w3l_social_icon_gridl w3_instagram">
							<a href="#">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</a>
						</div>
						<div class="w3l_social_icon_gridr">
							<p>维修设备数多于</p><p class="counter">342</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<div class="col-md-6 agileits_banner_bottom_right">
				<div class="w3ls_banner_bottom_right">
					<img src="images/2.jpg" alt=" " class="img-responsive" />
					<div class="w3ls_banner_bottom_right_pos">
						<img src="images/1.jpg" alt=" " class="img-responsive" />
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //banner-bottom -->
	<!-- //banner-bottom-icons -->
	<!-- Modal1 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>Treasurer</h4>
					<img src="images/banner2.jpg" alt="blog-image" />
					<span>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem , eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.accusantium doloremque laudantium, totam rem aperiamconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- //News -->
	<!-- events-top -->
	<!-- //events-top -->


	<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Treasurer
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-6 w3_modal_body_left">
							<img src="images/2.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-6 w3_modal_body_right">
							<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
								consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.
								<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i></p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- //bootstrap-pop-up -->
	<!-- footer -->
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

	<script type="text/javascript" src="js/jquery.slicebox.js"></script>
	<script type="text/javascript">
		$(function () {

			var Page = (function () {

				var $navArrows = $('#nav-arrows').hide(),
					$navDots = $('#nav-dots').hide(),
					$nav = $navDots.children('span'),
					$shadow = $('#shadow').hide(),
					slicebox = $('#sb-slider').slicebox({
						onReady: function () {

							$navArrows.show();
							$navDots.show();
							$shadow.show();

						},
						onBeforeChange: function (pos) {

							$nav.removeClass('nav-dot-current');
							$nav.eq(pos).addClass('nav-dot-current');

						}
					}),

					init = function () {

						initEvents();

					},
					initEvents = function () {

						// add navigation events
						$navArrows.children(':first').on('click', function () {

							slicebox.next();
							return false;

						});

						$navArrows.children(':last').on('click', function () {

							slicebox.previous();
							return false;

						});

						$nav.each(function (i) {

							$(this).on('click', function (event) {

								var $dot = $(this);

								if (!slicebox.isActive()) {

									$nav.removeClass('nav-dot-current');
									$dot.addClass('nav-dot-current');

								}

								slicebox.jump(i + 1);
								return false;

							});

						});

					};

				return {
					init: init
				};

			})();

			Page.init();

		});
	</script>
	<!-- Stats -->
	<script src="js/waypoints.min.js"></script>
	<script src="js/counterup.min.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$('.counter').counterUp({
				delay: 10,
				time: 2000
			});
		});
	</script>
	
<!-- 由session判断是否登录成功 -->
<%if (session.getAttribute("name")==null){%>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$("#exit").toggle( 
				  function () {
				    $(this).hide();
				  }
				);
				$("#my_messsage").toggle( 
						  function () {
						    $(this).hide();
						  }
						);
	});
</script>
  <%}else {%>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$("#login").toggle( 
				  function () {
				    $(this).hide();
				  }
				);
		$("#register").toggle( 
				  function () {
				    $(this).hide();
				  }
				);
	});
</script>
  <%}%>
  
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