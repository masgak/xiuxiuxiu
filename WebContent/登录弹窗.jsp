<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	
<!-- 登录弹窗 -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<div class="signin-form profile">
					<h3 class="agileinfo_sign">登录</h3>
					<div class="login-form">
						<form class="loginForm" action="StudentServlet?type=login"
							method="post">
							<input id="phonenumber" name="phonenumber" placeholder="手机号"
								type="text" required="required"> <input id="password"
								type="password" name="password" placeholder="密码"
								required="required">
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