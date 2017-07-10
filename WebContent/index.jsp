<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.*,model.*"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link href="resources/css/jquery-ui-themes.css" type="text/css"
	rel="stylesheet" />
<link href="resources/css/axure_rp_page.css" type="text/css"
	rel="stylesheet" />
<link href="data/styles.css" type="text/css" rel="stylesheet" />
<link href="files/主页面/styles.css" type="text/css" rel="stylesheet" />
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
<script src="files/主页面/data.js"></script>
<script src="resources/scripts/axure/legacy.js"></script>
<script src="resources/scripts/axure/viewer.js"></script>
<script type="text/javascript">
	$axure.utils.getTransparentGifPath = function() {
		return 'resources/images/transparent.gif';
	};
	$axure.utils.getOtherPath = function() {
		return 'resources/Other.html';
	};
	$axure.utils.getReloadPath = function() {
		return 'resources/reload.html';
	};
</script>
<title>欢迎来到简影</title>
</head>
<body style="width: 100%;">
	<%
		String zh = (String) session.getAttribute("Zh");
		List objlist = (List) request.getAttribute("objlist");
		if (zh == null)
			out.println("<meta http-equiv=\"refresh\" content=\"0; url=login.jsp\" />");
		else {
	%>
	<div style="width: 40%; margin: 15px 5% 10px 10%; float: left;">

		<%
			if (objlist != null) {
					for (int i = 0; i < objlist.size(); i += 2) {
						Tpb tpb = (Tpb) objlist.get(i);
		%>
		<a href="tpb?method=more&pid=<%=tpb.getPid()%>">
			<div style="width: 100%; margin: 15px 0 15px 0;">
				<!-- 图片 (Image) -->
				<div id="u0" class="ax_image" data-label="图片">
					<img id="u0_img" class="img " src='<%=tpb.getpAdd()%>'
						style="display: block;" />
					<!-- Unnamed () -->
					<div id="u1" class="text">
						<p>
							<span></span>
						</p>
					</div>
				</div>

				<!-- 功能栏 (Shape) -->
				<div id="u2" class="ax_shape" data-label="功能栏"
					style="background-image: url(images/主页面/功能栏_u2.png);">

					<!-- 发布人头像 (Image) -->
					<div id="u4" class="ax_image" data-label="发布人头像">
						<img id="u4_img" class="img " src="images/主页面/发布人头像_u4.png" />
						<!-- Unnamed () -->
						<div id="u5" class="text">
							<p>
								<span></span>
							</p>
						</div>
					</div>

					<!-- 用户名 (Shape) -->
					<div id="u6" class="ax_paragraph" data-label="用户名">
						<img id="u6_img" class="img "
							src="resources/images/transparent.gif" />
						<!-- Unnamed () -->
						<div id="u7" class="text">
							<p>
								<span><%=tpb.getFbZh()%></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</a>
		<%
			}
		%>
	</div>
	<div style="width: 40%; margin: 15px 0% 10px 0%; float: left;">
		<%
			for (int i = 1; i < objlist.size(); i += 2) {
						Tpb tpb = (Tpb) objlist.get(i);
		%>
		<a href="tpb?method=more&pid=<%=tpb.getPid()%>">
			<div style="width: 100%; margin: 15px 0 15px 0;">
				<!-- 图片 (Image) -->
				<div id="u0" class="ax_image" data-label="图片">
					<img id="u0_img" class="img " src='<%=tpb.getpAdd()%>'
						style="display: block;" />
					<!-- Unnamed () -->
					<div id="u1" class="text">
						<p>
							<span></span>
						</p>
					</div>
				</div>

				<!-- 功能栏 (Shape) -->
				<div id="u2" class="ax_shape" data-label="功能栏"
					style="background-image: url(images/主页面/功能栏_u2.png);">

					<!-- 发布人头像 (Image) -->
					<div id="u4" class="ax_image" data-label="发布人头像">
						<img id="u4_img" class="img " src="images/主页面/发布人头像_u4.png" />
						<!-- Unnamed () -->
						<div id="u5" class="text">
							<p>
								<span></span>
							</p>
						</div>
					</div>

					<!-- 用户名 (Shape) -->
					<div id="u6" class="ax_paragraph" data-label="用户名">
						<img id="u6_img" class="img "
							src="resources/images/transparent.gif" />
						<!-- Unnamed () -->
						<div id="u7" class="text">
							<p>
								<span><%=tpb.getFbZh()%></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</a>
		<%
			}
				}
		%>
	</div>
	<div id="base" class="">

		<!-- Logo功能组 (Dynamic Panel) -->
		<div id="u20" class="ax_dynamic_panel" data-label="Logo功能组">
			<div id="u20_state0" class="panel_state" data-label="动态面板1">
				<div id="u20_state0_content" class="panel_state_content">

					<!-- Logo功能组除Logo (Dynamic Panel) -->
					<div id="u21" class="ax_dynamic_panel" data-label="Logo功能组除Logo">
						<div id="u21_state0" class="panel_state" data-label="动态面板2">
							<div id="u21_state0_content" class="panel_state_content">

								<!-- 搜索栏底栏1 (Image) -->
								<div id="u22" class="ax_image" data-label="搜索栏底栏1">
									<img id="u22_img" class="img " src="images/主页面/搜索栏底栏1_u22.png" />
									<!-- Unnamed () -->
									<div id="u23" class="text">
										<p>
											<span></span>
										</p>
									</div>
								</div>

								<!-- 搜索栏底栏3 (Image) -->
								<div id="u24" class="ax_image" data-label="搜索栏底栏3">
									<img id="u24_img" class="img " src="images/主页面/搜索栏底栏3_u24.png" />
									<!-- Unnamed () -->
									<div id="u25" class="text">
										<p>
											<span></span>
										</p>
									</div>
								</div>

								<!-- 搜索栏底栏2 (Image) -->
								<div id="u26" class="ax_image" data-label="搜索栏底栏2">
									<img id="u26_img" class="img " src="images/主页面/搜索栏底栏2_u26.png" />
									<!-- Unnamed () -->
									<div id="u27" class="text">
										<p>
											<span></span>
										</p>
									</div>
								</div>

								<!-- 搜索按钮 (Image) -->
								<div id="u28" class="ax_image" data-label="搜索按钮">
									<img id="u28_img" class="img " src="images/主页面/搜索按钮_u28.png" />
									<!-- Unnamed () -->
									<div id="u29" class="text">
										<p>
											<span></span>
										</p>
									</div>
								</div>

								<!-- 搜索栏输入框 (Text Field) -->
								<div id="u30" class="ax_text_field" data-label="搜索栏输入框">
									<input id="u30_input" type="text" value="" />
								</div>

								<!-- 信息 (Shape) -->
								<div id="u31" class="ax_shape" data-label="信息">
									<img id="u31_img" class="img " src="images/主页面/信息_u31.png" />
									<!-- Unnamed () -->
									<div id="u32" class="text">
										<p>
											<span>消息</span>
										</p>
									</div>
								</div>

								<!-- 发图 (Image) -->
								<a href="up.jsp">
									<div id="u33" class="ax_image" data-label="发图">
										<img id="u33_img" class="img " src="images/主页面/发图_u33.png" />
										<!-- Unnamed () -->
										<div id="u34" class="text">
											<p>
												<span></span>
											</p>
										</div>
									</div>
								</a>

								<!-- 我的头像 (Image) -->
								<div id="u35" class="ax_image" data-label="我的头像">
									<img id="u35_img" class="img " src="images/主页面/我的头像_u35.png" />
									<!-- Unnamed () -->
									<div id="u36" class="text">
										<p>
											<span></span>
										</p>
									</div>
								</div>

								<!-- 用户 (Shape) -->
								<div id="u37" class="ax_shape" data-label="Leo.Hu">
									<img id="u37_img" class="img " src="images/主页面/leo_hu_u37.png" />
									<!-- Unnamed () -->
									<div id="u38" class="text">
										<p>
											<span> <%
 	out.print(zh);
 %>
											</span>
										</p>
									</div>
								</div>

								<!-- 登出 (Shape) -->
								<a href="yhb?method=out">
									<div id="u39" class="ax_shape" data-label="登出">
										<img id="u39_img" class="img " src="images/主页面/leo_hu_u37.png" />
										<!-- Unnamed () -->
										<div id="u40" class="text">
											<p>
												<span>登出</span>
											</p>
										</div>
									</div>
								</a>

								<!-- 个人中心 (Shape) -->
								<a href="yhb?method=select">
									<div id="u41" class="ax_shape" data-label="个人中心">
										<img id="u41_img" class="img " src="images/主页面/leo_hu_u37.png" />
										<!-- Unnamed () -->
										<div id="u42" class="text">
											<p>
												<span>个人中心</span>
											</p>
										</div>
									</div>
								</a>

								<!-- 发现图标 (Image) -->
								<a href="tpb?method=select">
									<div id="u43" class="ax_image" data-label="发现图标">
										<img id="u43_img" class="img " src="images/主页面/发现图标_u43.png" />
										<!-- Unnamed () -->
										<div id="u44" class="text">
											<p>
												<span></span>
											</p>
										</div>
									</div> <!-- 发现 (Shape) -->
									<div id="u45" class="ax_shape" data-label="发现">
										<img id="u45_img" class="img " src="images/主页面/leo_hu_u37.png" />
										<!-- Unnamed () -->
										<div id="u46" class="text">
											<p>
												<span>发现</span>
											</p>
										</div>
									</div>
								</a>

								<!-- 我的 (Shape) -->
								<div id="u47" class="ax_shape" data-label="我的">
									<img id="u47_img" class="img " src="images/主页面/leo_hu_u37.png" />
									<!-- Unnamed () -->
									<div id="u48" class="text">
										<p>
											<span>我的</span>
										</p>
									</div>
								</div>

								<!-- 我的图标 (Image) -->
								<div id="u49" class="ax_image" data-label="我的图标">
									<img id="u49_img" class="img " src="images/主页面/我的图标_u49.png" />
									<!-- Unnamed () -->
									<div id="u50" class="text">
										<p>
											<span></span>
										</p>
									</div>
								</div>

								<!-- 关注 (Shape) -->
								<a href="tpb?method=selectGZ">
									<div id="u51" class="ax_shape" data-label="关注">
										<img id="u51_img" class="img " src="images/主页面/leo_hu_u37.png" />
										<!-- Unnamed () -->
										<div id="u52" class="text">
											<p>
												<span>关注</span>
											</p>
										</div>
									</div>
								</a>

								<!-- 收藏 (Shape) -->
								<a href="tpb?method=selectSC">
									<div id="u53" class="ax_shape" data-label="收藏">
										<img id="u53_img" class="img " src="images/主页面/leo_hu_u37.png" />
										<!-- Unnamed () -->
										<div id="u54" class="text">
											<p>
												<span>收藏</span>
											</p>
										</div>
									</div>
								</a>

								<!-- 订单 (Shape) -->
								<div id="u55" class="ax_shape" data-label="订单">
									<img id="u55_img" class="img " src="images/主页面/leo_hu_u37.png" />
									<!-- Unnamed () -->
									<div id="u56" class="text">
										<p>
											<span>订单</span>
										</p>
									</div>
								</div>

								<!-- 更多 图标 (Image) -->
								<div id="u57" class="ax_image" data-label="更多 图标">
									<img id="u57_img" class="img " src="images/主页面/更多_图标_u57.png" />
									<!-- Unnamed () -->
									<div id="u58" class="text">
										<p>
											<span></span>
										</p>
									</div>
								</div>

								<!-- 更多风格 (Shape) -->
								<div id="u59" class="ax_shape" data-label="更多风格">
									<img id="u59_img" class="img " src="images/主页面/leo_hu_u37.png" />
									<!-- Unnamed () -->
									<div id="u60" class="text">
										<p>
											<span>更多风格</span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Logo (Shape) -->
					<div id="u61" class="ax_shape" data-label="Logo">
						<img id="u61_img" class="img " src="images/主页面/logo_u61.png" />
						<!-- Unnamed () -->
						<div id="u62" class="text">
							<p>
								<span>Logo</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
		}
	%>
</body>
</html>
