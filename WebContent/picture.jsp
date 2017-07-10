<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*,model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link href="resources/css/jquery-ui-themes.css" type="text/css"
	rel="stylesheet" />
<link href="resources/css/axure_rp_page.css" type="text/css"
	rel="stylesheet" />
<link href="data/styles.css" type="text/css" rel="stylesheet" />
<link href="files/详细页面/styles.css" type="text/css" rel="stylesheet" />
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
<script src="files/详细页面/data.js"></script>
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
<title>图片详细</title>
</head>
<body style="width: 100%;">
	<%
		Tpb tp = (Tpb) request.getAttribute("obj");
		if (tp == null)
			out.println("<meta http-equiv=\"refresh\" content=\"0; url=tpb?method=select\" />");
		else {
	%>
	<div id="base" class="">
		<div style="width: 100%; margin: 15px 0 25px 12%; float: left;">

			<div style="width: 100%; margin: 15px 0 15px 0;">
				<!-- 图片 (Image) -->
				<div id="u8" class="ax_image" data-label="图片">
					<img id="u8_img" class="img " src="<%=tp.getpAdd()%>"
						style="display: block;" />
					<!-- Unnamed () -->
					<div id="u9" class="text">
						<p>
							<span></span>
						</p>
					</div>
				</div>

				<!-- 详细描述底栏 (Shape) -->
				<div id="u10" class="ax_shape" data-label="详细描述底栏"
					style="background-image: url(images/详细页面/详细描述底栏_u10.png);">

					<!-- 详细描述 (Shape) -->
					<div id="u12" class="ax_paragraph" data-label="详细描述">
						<img id="u12_img" class="img "
							src="resources/images/transparent.gif" />
						<!-- Unnamed () -->
						<div id="u13" class="text">
							<p>
								<span><%=tp.getpMore()%></span>
							</p>
						</div>
					</div>

					<!-- 描述事件 (Shape) -->
					<div id="u14" class="ax_paragraph" data-label="描述事件">
						<img id="u14_img" class="img "
							src="resources/images/transparent.gif" />
						<!-- Unnamed () -->
						<div id="u15" class="text">
							<p>
								<span>发布时间</span><span>&nbsp;&nbsp; <%=tp.getFbTime()%></span>
							</p>
						</div>
					</div>

				</div>

				<!-- 个人信息底栏 (Shape) -->
				<div id="u26" class="ax_shape" data-label="个人信息底栏"
					style="background-image: url(images/详细页面/个人信息底栏_u26.png);">
					<div style="width: 120px; float: left;">
						<!-- 我的头像 (Image) -->
						<div id="u28" class="ax_image" data-label="我的头像">
							<img id="u28_img" class="img " src="images/详细页面/我的头像_u28.png" />
							<!-- Unnamed () -->
							<div id="u29" class="text">
								<p>
									<span></span>
								</p>
							</div>
						</div>

						<!-- 我的用户名 (Shape) -->
						<div id="u30" class="ax_h1" data-label="我的用户名">
							<img id="u30_img" class="img "
								src="resources/images/transparent.gif" />
							<!-- Unnamed () -->
							<div id="u31" class="text">
								<p>
									<span><%=tp.getFbZh()%></span>
								</p>
							</div>
						</div>
					</div>
					<!-- 点赞 (Shape) -->
					<a href="Servlet?method=sc&pid=<%=tp.getPid()%>">
						<div id="u32" class="ax_shape" data-label="点赞"
							style="background-image: url(images/详细页面/点赞_u32.png);">
							<!-- Unnamed () -->
							<div id="u33" class="text">
								<p>
									<span>点赞</span>
								</p>
							</div>
						</div>
					</a>

					<!-- 关注 (Shape) -->
					<a
						href="Servlet?method=gz&pid=<%=tp.getPid()%>&gzzh=<%=tp.getFbZh()%>">
						<div id="u34" class="ax_shape" data-label="关注"
							style="background-image: url(images/详细页面/点赞_u32.png);">
							<!-- Unnamed () -->
							<div id="u35" class="text">
								<p>
									<span>关注</span>
								</p>
							</div>
						</div>
					</a>

					<!-- 约拍 (Shape) -->
					<a href="tpb?method=select">
						<div id="u36" class="ax_shape" data-label="约拍"
							style="background-image: url(images/详细页面/点赞_u32.png);">
							<!-- Unnamed () -->
							<div id="u37" class="text">
								<p>
									<span>返回</span>
								</p>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<%
			List objlist = (List) request.getAttribute("objlist");
				if (objlist != null) {
					for (int i = 0; i < objlist.size(); i++) {
						Plb plb = (Plb) objlist.get(i);
		%>
		<div style="width: 980px; margin: 0 0 10px 12%; float: left;">
			<!-- 评论底栏 (Shape) -->
			<div id="u16" class="ax_shape" data-label="评论底栏"
				style="background-image: url(images/详细页面/评论底栏_u16.png);">
				<div style="width: 80px; float: left;">
					<!-- 评论头像 (Image) -->
					<div id="u18" class="ax_image" data-label="评论头像">
						<img id="u18_img" class="img " src="images/详细页面/评论头像_u18.png" />
						<!-- Unnamed () -->
						<div id="u19" class="text">
							<p>
								<span></span>
							</p>
						</div>
					</div>

					<!-- 评论用户名 (Shape) -->
					<div id="u22" class="ax_paragraph" data-label="评论用户名">
						<!-- Unnamed () -->
						<div id="u23" class="text">
							<p>
								<span><%=plb.getPlZh()%></span>
							</p>
						</div>
					</div>
				</div>
				<div style="width: 820px; float: left; margin: 15px 0 10px 5%;">
					<!-- 评论 (Shape) -->
					<div id="u20" class="ax_paragraph" data-label="评论">
						<!-- Unnamed () -->
						<div id="u21" class="text">
							<p>
								<span><%=plb.getPlMore()%></span>
							</p>
						</div>
					</div>

					<!-- 评论时间 (Shape) -->
					<div id="u24" class="ax_paragraph" data-label="评论时间">
						<!-- Unnamed () -->
						<div id="u25" class="text">
							<p>
								<span><%=plb.getPlTime().getMonth() + 1 + "月" + plb.getPlTime().getDate() + "日"%></span>
							</p>
						</div>
					</div>
				</div>

			</div>
		</div>
		<%
			}
		%>
		<%
			}
		%>

		<!-- Unnamed (Shape) -->
		<div id="u0" class="ax_shape">
			<img id="u0_img" class="img " src="images/详细页面/u0.png" />
			<!-- Unnamed () -->
			<div id="u1" class="text">
				<p>
					<span></span>
				</p>
			</div>
		</div>

		<!-- 发评论栏组 (Dynamic Panel) -->
		<form action="plb?method=add&pid=<%=tp.getPid()%>" method="post">
			<div id="u38" class="ax_dynamic_panel" data-label="发评论栏组">
				<div id="u38_state0" class="panel_state" data-label="动态面板">
					<div id="u38_state0_content" class="panel_state_content">

						<!-- 发评论框底栏 (Shape) -->
						<div id="u39" class="ax_shape" data-label="发评论框底栏">
							<img id="u39_img" class="img " src="images/详细页面/发评论框底栏_u39.png" />
							<!-- Unnamed () -->
							<div id="u40" class="text">
								<p>
									<span></span>
								</p>
							</div>
						</div>

						<!-- 发评论框我的头像 (Image) -->
						<div id="u41" class="ax_image" data-label="发评论框我的头像">
							<img id="u41_img" class="img " src="images/详细页面/发评论框我的头像_u41.png" />
							<!-- Unnamed () -->
							<div id="u42" class="text">
								<p>
									<span></span>
								</p>
							</div>
						</div>

						<!-- 我的输入框 (Text Field) -->
						<div id="u43" class="ax_text_field" data-label="我的输入框">
							<input id="u43_input" type="text" name="more"></input>
						</div>

						<!-- 表情 (Image) -->
						<div id="u44" class="ax_image" data-label="表情">
							<img id="u44_img" class="img " src="images/详细页面/表情_u44.png" />
							<!-- Unnamed () -->
							<div id="u45" class="text">
								<p>
									<span></span>
								</p>
							</div>
						</div>

						<!-- Unnamed (Shape) -->
						<div id="u46" class="ax_shape">
							<input id="u46_img" class="img " type="submit" value="发送"
								style="background: url(images/详细页面/u46.png); border: 0; padding: 0; color: #fff; font-size: 18px;"></input>
						</div>
					</div>
				</div>
			</div>
		</form>

	</div>
	<%
		}
	%>

</body>
</html>