<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link href="resources/css/jquery-ui-themes.css" type="text/css"
	rel="stylesheet" />
<link href="resources/css/axure_rp_page.css" type="text/css"
	rel="stylesheet" />
<link href="data/styles.css" type="text/css" rel="stylesheet" />
<link href="files/开始页面/styles.css" type="text/css" rel="stylesheet" />
<script src="resources/scripts/jquery-1.7.1.min.js"></script>
<script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
<script src="resources/scripts/axure/axQuery.js"></script>
<script src="resources/scripts/axure/globals.js"></script>
<script src="resources/scripts/axutils.js"></script>
<script src="resources/scripts/axure/annotation.js"></script>
<script src="resources/scripts/axure/axQuery.std.js"></script>
<script src="resources/scripts/axure/doc.js"></script>
<script src="data/document.js"></script>
<script src="resources/scripts/messagecenter.js"></script>
<script src="resources/scripts/axure/events.js"></script>
<script src="resources/scripts/axure/action.js"></script>
<script src="resources/scripts/axure/expr.js"></script>
<script src="resources/scripts/axure/geometry.js"></script>
<script src="resources/scripts/axure/flyout.js"></script>
<script src="resources/scripts/axure/ie.js"></script>
<script src="resources/scripts/axure/model.js"></script>
<script src="resources/scripts/axure/repeater.js"></script>
<script src="resources/scripts/axure/sto.js"></script>
<script src="resources/scripts/axure/utils.temp.js"></script>
<script src="resources/scripts/axure/variables.js"></script>
<script src="resources/scripts/axure/drag.js"></script>
<script src="resources/scripts/axure/move.js"></script>
<script src="resources/scripts/axure/visibility.js"></script>
<script src="resources/scripts/axure/style.js"></script>
<script src="resources/scripts/axure/adaptive.js"></script>
<script src="resources/scripts/axure/tree.js"></script>
<script src="resources/scripts/axure/init.temp.js"></script>
<script src="files/开始页面/data.js"></script>
<script src="resources/scripts/axure/legacy.js"></script>
<script src="resources/scripts/axure/viewer.js"></script>
<script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
<title>欢迎来到简影</title>
</head>
<body>
	<div id="base" class="">

		<!-- Logo品牌图片 (Image) -->
		<div id="u0" class="ax_image" data-label="Logo品牌图片">
			<img id="u0_img" class="img " src="images/开始页面/logo品牌图片_u0.png" />
			<!-- Unnamed () -->
			<div id="u1" class="text">
				<p>
					<span></span>
				</p>
			</div>
		</div>

		<!-- ？帮助按钮 (Shape) -->
		<div id="u2" class="ax_shape" data-label="？帮助按钮">
			<img id="u2_img" class="img " src="images/开始页面/？帮助按钮_u2.png" />
			<!-- Unnamed () -->
			<div id="u3" class="text">
				<p>
					<span>？</span>
				</p>
			</div>
		</div>

		<!-- 登录底栏 (Image) -->
		<div id="u4" class="ax_image" data-label="登录底栏">
			<img id="u4_img" class="img " src="images/开始页面/登录底栏_u4.png" />
			<!-- Unnamed () -->
			<div id="u5" class="text">
				<p>
					<span></span>
				</p>
			</div>
		</div>
		<form action="yhb?method=logincheck" method="post">
			<!-- 账号输入框 (Text Field) -->
			<div id="u6" class="ax_text_field" data-label="账号输入框" title="账户">
				<input id="u6_input" type="text" name="zh" placeholder="账户"></input>
			</div>

			<!-- 密码输入框 (Text Field) -->
			<div id="u7" class="ax_text_field" data-label="密码输入框" title="密码">
				<input id="u7_input" type="password" name="pwd" placeholder="密码"></input>
			</div>

			<!-- GO按钮 (Shape) -->
			<div id="u8" class="ax_shape" data-label="GO按钮">
				<input id="u8_img" class="img " type="submit" value="GO"
					style="background: url(images/开始页面/go按钮_u8.png); border: 0; padding: 0; color: #fff; font-size: 24px;"></input>
			</div>
		</form>
		<!-- 游客按钮 (Shape) -->
		<div id="u10" class="ax_shape" data-label="游客按钮">
			<img id="u10_img" class="img " src="images/开始页面/游客按钮_u10.png" />
			<!-- Unnamed () -->
			<div id="u11" class="text">
				<p>
					<span>游客</span>
				</p>
			</div>
		</div>

		<%
   String errmsg=(String)session.getAttribute("errormsg");
   if(errmsg!=null){
     session.removeAttribute("errormsg");
     %>
		<%out.println(errmsg); %>
		<%
     }
	 %>

		<!-- 报错页面 (Dynamic Panel) -->
		<div id="u12" class="ax_dynamic_panel" data-label="报错页面">
			<div id="u12_state0" class="panel_state" data-label="State1">
				<div id="u12_state0_content" class="panel_state_content">

					<!-- 报错页面底栏 (Image) -->
					<div id="u13" class="ax_image" data-label="报错页面底栏">
						<img id="u13_img" class="img " src="images/开始页面/报错页面底栏_u13.png" />
						<!-- Unnamed () -->
						<div id="u14" class="text">
							<p>
								<span></span>
							</p>
						</div>
					</div>

					<!-- 账号已存在，密码错误！
如果你是新用户，请尝试更换用户名
如果你已经拥有，请输入正确的密码或重置密码！ (Shape) -->
					<div id="u15" class="ax_paragraph"
						data-label="账号已存在，密码错误！<br>如果你是新用户，请尝试更换用户名<br>如果你已经拥有，请输入正确的密码或重置密码！">
						<img id="u15_img" class="img "
							src="resources/images/transparent.gif" />
						<!-- Unnamed () -->
						<div id="u16" class="text">
							<p>
								<span style="color: #0099FF;">账号</span><span
									style="color: #FFFFFF;">已存在</span><span style="color: #FFFFFF;">，</span><span
									style="color: #3399FF;">密码</span><span style="color: #FFFFFF;">错误！</span>
							</p>
							<p>
								<span style="color: #FFFFFF;">如果你是新用户，请尝试更换</span><span
									style="color: #3399FF;">用户名</span>
							</p>
							<p>
								<span style="color: #FFFFFF;">如果你已经拥有，请输入正确的密码</span><span
									style="color: #FFFFFF;">或重置密码！</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 报错页面 (Dynamic Panel) -->
		<div id="u12" class="ax_dynamic_panel" data-label="报错页面">
			<div id="u12_state0" class="panel_state" data-label="State1">
				<div id="u12_state0_content" class="panel_state_content">

					<!-- 报错页面底栏 (Image) -->
					<div id="u13" class="ax_image" data-label="报错页面底栏">
						<img id="u13_img" class="img " src="images/开始页面/报错页面底栏_u13.png" />
						<!-- Unnamed () -->
						<div id="u14" class="text">
							<p>
								<span></span>
							</p>
						</div>
					</div>

					<!-- 账号已存在，密码错误！
如果你是新用户，请尝试更换用户名
如果你已经拥有，请输入正确的密码或重置密码！ (Shape) -->
					<div id="u15" class="ax_paragraph"
						data-label="账号已存在，密码错误！<br>如果你是新用户，请尝试更换用户名<br>如果你已经拥有，请输入正确的密码或重置密码！">
						<img id="u15_img" class="img "
							src="resources/images/transparent.gif" />
						<!-- Unnamed () -->
						<div id="u16" class="text">
							<p>
								<span style="color: #0099FF;">账号</span><span
									style="color: #FFFFFF;">已存在</span><span style="color: #FFFFFF;">，</span><span
									style="color: #3399FF;">密码</span><span style="color: #FFFFFF;">错误！</span>
							</p>
							<p>
								<span style="color: #FFFFFF;">如果你是新用户，请尝试更换</span><span
									style="color: #3399FF;">用户名</span>
							</p>
							<p>
								<span style="color: #FFFFFF;">如果你已经拥有，请输入正确的密码</span><span
									style="color: #FFFFFF;">或重置密码！</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 帮助页面 (Dynamic Panel) -->
		<div id="u17" class="ax_dynamic_panel" data-label="帮助页面">
			<div id="u17_state0" class="panel_state" data-label="State1">
				<div id="u17_state0_content" class="panel_state_content">

					<!-- 帮助页面底栏 (Image) -->
					<div id="u18" class="ax_image" data-label="帮助页面底栏">
						<img id="u18_img" class="img " src="images/开始页面/帮助页面底栏_u18.png" />
						<!-- Unnamed () -->
						<div id="u19" class="text">
							<p>
								<span></span>
							</p>
						</div>
					</div>

					<!-- 如果你还没没有账号： (Shape) -->
					<div id="u20" class="ax_paragraph" data-label="如果你还没没有账号：">
						<img id="u20_img" class="img "
							src="resources/images/transparent.gif" />
						<!-- Unnamed () -->
						<div id="u21" class="text">
							<p>
								<span>如果</span><span>您</span><span>还没有账号</span><span></span><span>：</span>
							</p>
						</div>
					</div>

					<!-- 如果您已经拥有账号： (Shape) -->
					<div id="u22" class="ax_paragraph" data-label="如果您已经拥有账号：">
						<img id="u22_img" class="img "
							src="resources/images/transparent.gif" />
						<!-- Unnamed () -->
						<div id="u23" class="text">
							<p>
								<span>如果</span><span>您</span><span>已经拥有账号</span><span></span><span>：</span>
							</p>
						</div>
					</div>

					<!-- 请在账户输入框内输入您心仪的账号与密码，点击GO按钮进行注册，如果您心仪的账号已被注册，请尝试更换账号，或者使用游客模式体验。 (Shape) -->
					<div id="u24" class="ax_paragraph"
						data-label="请在账户输入框内输入您心仪的账号与密码，点击GO按钮进行注册，如果您心仪的账号已被注册，请尝试更换账号，或者使用游客模式体验。">
						<img id="u24_img" class="img "
							src="resources/images/transparent.gif" />
						<!-- Unnamed () -->
						<div id="u25" class="text">
							<p>
								<span style="color: #FFFFFF;">请在账户输入框内输入您心仪的账号与密码，点击</span><span
									style="color: #3399FF;">GO</span><span style="color: #FFFFFF;">按钮进行注册，如果您心仪的账号已被</span><span
									style="color: #FFFFFF;">注册，请尝试更换账号</span><span
									style="color: #FFFFFF;">，</span><span style="color: #FFFFFF;">或者使用</span><span
									style="color: #3399FF;">游客</span><span style="color: #FFFFFF;">模式体验。</span>
							</p>
						</div>
					</div>

					<!-- 请在账户输入框内输入您注册的账号与密码，点击GO按钮登陆，如果登陆失败，请尝试其他密码或重置密码。 (Shape) -->
					<div id="u26" class="ax_paragraph"
						data-label="请在账户输入框内输入您注册的账号与密码，点击GO按钮登陆，如果登陆失败，请尝试其他密码或重置密码。">
						<img id="u26_img" class="img "
							src="resources/images/transparent.gif" />
						<!-- Unnamed () -->
						<div id="u27" class="text">
							<p>
								<span style="color: #FFFFFF;">请在账户输入框内输入您</span><span
									style="color: #FFFFFF;">注册</span><span style="color: #FFFFFF;">的账号与密码，点击GO按钮</span><span
									style="color: #FFFFFF;">登陆</span><span style="color: #FFFFFF;">，</span><span
									style="color: #FFFFFF;">如果登陆失败，请尝试其他密码或</span><span
									style="color: #0099FF;">重置密码</span><span
									style="color: #FFFFFF;">。</span>
							</p>
						</div>
					</div>

					<!-- 点击页面，返回登录页面 (Shape) -->
					<div id="u28" class="ax_paragraph" data-label="点击页面，返回登录页面">
						<img id="u28_img" class="img "
							src="resources/images/transparent.gif" />
						<!-- Unnamed () -->
						<div id="u29" class="text">
							<p>
								<span>——点击</span><span>页面，</span><span></span><span>返回登录页面——</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
</body>
</html>