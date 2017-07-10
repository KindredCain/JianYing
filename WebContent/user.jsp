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
<link href="files/个人页面/styles.css" type="text/css" rel="stylesheet" />
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
<script src="files/个人页面/data.js"></script>
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
<title>个人页面</title>
</head>
<body>
	<%
		Yhb user = (Yhb) request.getAttribute("obj");
		if (user == null)
			out.println("<meta http-equiv=\"refresh\" content=\"0; url=login.jsp\" />");
		else {
	%>
	<form action="yhb?method=up" method="post">
		<div id="base" class="">

			<!-- Unnamed (Image) -->
			<div id="u0" class="ax_image">
				<img id="u0_img" class="img " src="images/个人页面/u0.png" />
				<!-- Unnamed () -->
				<div id="u1" class="text">
					<p>
						<span></span>
					</p>
				</div>
			</div>

			<!-- 上底栏 (Image) -->
			<div id="u2" class="ax_image" data-label="上底栏">
				<img id="u2_img" class="img " src="images/个人页面/上底栏_u2.png" />
				<!-- Unnamed () -->
				<div id="u3" class="text">
					<p>
						<span></span>
					</p>
				</div>
			</div>

			<!-- 我的头像 (Image) -->
			<div id="u4" class="ax_image" data-label="我的头像">
				<img id="u4_img" class="img " src="images/个人页面/我的头像_u4.jpg" />
				<!-- Unnamed () -->
				<div id="u5" class="text">
					<p>
						<span></span>
					</p>
				</div>
			</div>

			<!-- 用户名输入框 (Text Field) -->
			<div id="u6" class="ax_text_field" data-label="用户名输入框">
				<input id="u6_input" type="text" name="zh" value='<%=user.getZh()%>'
					readonly />
			</div>

			<!-- 擅长风格： (Shape) -->
			<div id="u7" class="ax_paragraph" data-label="擅长风格：">
				<img id="u7_img" class="img " src="resources/images/transparent.gif" />
				<!-- Unnamed () -->
				<div id="u8" class="text">
					<p>
						<span>擅长风格</span><span>:</span>
					</p>
				</div>
			</div>

			<!-- 擅长风格 (Text Area) -->
			<div id="u9" class="ax_text_area" data-label="擅长风格">
				<input id="u9_input" type="text" name="fg" value='<%=user.getFg()%>' />
			</div>

			<!-- 个人简介 (Text Area) -->
			<div id="u10" class="ax_text_area" data-label="个人简介">
				<input id="u10_input" type="text" name="more"
					value='<%=user.getMore()%>' />
			</div>

			<!-- 照片 (Image) -->
			<div id="u11" class="ax_image" data-label="照片">
				<img id="u11_img" class="img " src="images/个人页面/照片_u11.png" />
				<!-- Unnamed () -->
				<div id="u12" class="text">
					<p>
						<span></span>
					</p>
				</div>
			</div>

			<!-- 功能栏底栏 (Shape) -->
			<div id="u13" class="ax_shape" data-label="功能栏底栏">
				<img id="u13_img" class="img " src="images/个人页面/功能栏底栏_u13.png" />
				<!-- Unnamed () -->
				<div id="u14" class="text">
					<p>
						<span></span>
					</p>
				</div>
			</div>

			<!-- 我的头像_动态 (Image) -->
			<div id="u15" class="ax_image" data-label="我的头像_动态">
				<img id="u15_img" class="img " src="images/个人页面/我的头像_动态_u15.png" />
				<!-- Unnamed () -->
				<div id="u16" class="text">
					<p>
						<span></span>
					</p>
				</div>
			</div>

			<!-- Unnamed (Shape) -->
			<div id="u17" class="ax_paragraph">
				<img id="u17_img" class="img "
					src="resources/images/transparent.gif" />
				<!-- Unnamed () -->
				<div id="u18" class="text">
					<p>
						<span>用户名</span>
					</p>
				</div>
			</div>

			<!-- 点赞 (Shape) -->
			<div id="u19" class="ax_shape" data-label="点赞">
				<img id="u19_img" class="img " src="images/个人页面/点赞_u19.png" />
				<!-- Unnamed () -->
				<div id="u20" class="text">
					<p>
						<span>点赞</span>
					</p>
				</div>
			</div>

			<!-- 关注 (Shape) -->
			<div id="u21" class="ax_shape" data-label="关注">
				<img id="u21_img" class="img " src="images/个人页面/点赞_u19.png" />
				<!-- Unnamed () -->
				<div id="u22" class="text">
					<p>
						<span>关注</span>
					</p>
				</div>
			</div>

			<!-- 约拍 (Shape) -->
			<div id="u23" class="ax_shape" data-label="约拍">
				<img id="u23_img" class="img " src="images/个人页面/点赞_u19.png" />
				<!-- Unnamed () -->
				<div id="u24" class="text">
					<p>
						<span>约拍</span>
					</p>
				</div>
			</div>

			<!-- 更多 (Image) -->
			<div id="u25" class="ax_image" data-label="更多">
				<img id="u25_img" class="img " src="images/个人页面/更多_u25.png" />
				<!-- Unnamed () -->
				<div id="u26" class="text">
					<p>
						<span></span>
					</p>
				</div>
			</div>

			<!-- 收藏 (Shape) -->
			<div id="u27" class="ax_shape" data-label="收藏">
				<img id="u27_img" class="img " src="images/个人页面/收藏_u27.png" />
				<!-- Unnamed () -->
				<div id="u28" class="text">
					<p>
						<span>收藏</span>
					</p>
				</div>
			</div>

			<!-- 分享 (Shape) -->
			<div id="u29" class="ax_shape" data-label="分享">
				<img id="u29_img" class="img " src="images/个人页面/收藏_u27.png" />
				<!-- Unnamed () -->
				<div id="u30" class="text">
					<p>
						<span>分享</span>
					</p>
				</div>
			</div>

			<!-- 最新动态 (Shape) -->
			<div id="u31" class="ax_paragraph" data-label="最新动态">
				<img id="u31_img" class="img "
					src="resources/images/transparent.gif" />
				<!-- Unnamed () -->
				<div id="u32" class="text">
					<p>
						<span>最新动态</span>
					</p>
				</div>
			</div>

			<!-- 详 (Shape) -->
			<div id="u33" class="ax_shape" data-label="详">
				<img id="u33_img" class="img " src="images/个人页面/详_u33.png" />
				<!-- Unnamed () -->
				<div id="u34" class="text">
					<p>
						<span>详</span>
					</p>
				</div>
			</div>

			<!-- 真 (Shape) -->
			<div id="u35" class="ax_shape" data-label="真">
				<img id="u35_img" class="img " src="images/个人页面/真_u35.png" />
				<!-- Unnamed () -->
				<div id="u36" class="text">
					<p>
						<span>真</span>
					</p>
				</div>
			</div>

			<%
				if (user.getSf().equals("sys")) {
			%>
			<!-- 约 (Shape) -->
			<div id="u37" class="ax_shape" data-label="约">
				<img id="u37_img" class="img " src="images/个人页面/约_u37.png" />
				<!-- Unnamed () -->
				<div id="u38" class="text">
					<p>
						<span>约</span>
					</p>
				</div>
			</div>
			<%
				}
			%>

			<!-- 个人信息信息组 (Dynamic Panel) -->
			<div id="u39" class="ax_dynamic_panel" data-label="个人信息信息组">
				<div id="u39_state0" class="panel_state" data-label="State1">
					<div id="u39_state0_content" class="panel_state_content">

						<!-- Unnamed (Shape) -->
						<div id="u40" class="ax_shape">
							<img id="u40_img" class="img " src="images/个人页面/u40.png" />
							<!-- Unnamed () -->
							<div id="u41" class="text">
								<p>
									<span></span>
								</p>
							</div>
						</div>

						<!-- Unnamed (Shape) -->
						<div id="u42" class="ax_paragraph">
							<img id="u42_img" class="img "
								src="resources/images/transparent.gif" />
							<!-- Unnamed () -->
							<div id="u43" class="text">
								<p>
									<span>姓名</span><span>：</span>
								</p>
							</div>
						</div>

						<!-- Unnamed (Shape) -->
						<div id="u44" class="ax_paragraph">
							<img id="u44_img" class="img "
								src="resources/images/transparent.gif" />
							<!-- Unnamed () -->
							<div id="u45" class="text">
								<p>
									<span>手机号</span><span>：</span>
								</p>
							</div>
						</div>

						<!-- Unnamed (Shape) -->
						<div id="u46" class="ax_paragraph">
							<img id="u46_img" class="img "
								src="resources/images/transparent.gif" />
							<!-- Unnamed () -->
							<div id="u47" class="text">
								<p>
									<span>邮箱地址</span><span>：</span>
								</p>
							</div>
						</div>

						<!-- Unnamed (Text Field) -->
						<div id="u48" class="ax_text_field">
							<input id="u48_input" type="text" name="nc"
								value='<%=user.getNc()%>' />
						</div>

						<!-- Unnamed (Text Field) -->
						<div id="u49" class="ax_text_field">
							<input id="u49_input" type="text" name="qq"
								value='<%=user.getQq()%>' />
						</div>

						<!-- Unnamed (Text Field) -->
						<div id="u50" class="ax_text_field">
							<input id="u50_input" type="text" name="dz"
								value='<%=user.getDz()%>' />
						</div>

						<!-- Unnamed (Shape) -->
						<div id="u51" class="ax_paragraph">
							<img id="u51_img" class="img "
								src="resources/images/transparent.gif" />
							<!-- Unnamed () -->
							<div id="u52" class="text">
								<p>
									<span>约拍</span><span>：</span>
								</p>
							</div>
						</div>

						<!-- Unnamed (Radio Button) -->
						<div id="u53" class="ax_radio_button">
							<label for="u53_input"> <!-- Unnamed () -->
								<div id="u54" class="text">
									<p>
										<span>开启</span>
									</p>
								</div>
							</label>
							<%
								if (user.getSf().equals("sys")) {
							%>
							<input id="u53_input" type="radio" value="sys" name="sf" checked />
							<%
								} else {
							%>
							<input id="u53_input" type="radio" value="sys" name="sf" />
							<%
								}
							%>
						</div>

						<!-- Unnamed (Radio Button) -->
						<div id="u55" class="ax_radio_button">
							<label for="u55_input"> <!-- Unnamed () -->
								<div id="u56" class="text">
									<p>
										<span>关闭</span>
									</p>
								</div>
							</label>
							<%
								if (user.getSf().equals("sys")) {
							%>
							<input id="u55_input" type="radio" value="xqz" name="sf" />
							<%
								} else {
							%>
							<input id="u55_input" type="radio" value="xqz" name="sf" checked />
							<%
								}
							%>
						</div>

						<!-- Unnamed (Shape) -->
						<div id="u57" class="ax_shape">
							<img id="u57_img" class="img " src="images/个人页面/u57.png" />
							<!-- Unnamed () -->
							<div id="u58" class="text">
								<p>
									<span></span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Unnamed (Shape) -->
			<a href="tpb?method=select">
				<div id="u59" class="ax_shape">
					<img id="u59_img" class="img " src="images/个人页面/u59.png" />
					<!-- Unnamed () -->
					<div id="u60" class="text">
						<p>
							<span>返回</span>
						</p>
					</div>
				</div>
			</a>

			<!-- 保存 (Shape) -->
			<div id="u61" class="ax_shape" data-label="保存">
				<input id="u61_img" class="img " type="submit" value="保存"
					style="background: url(images/个人页面/保存_u61.png); border: 0; padding: 0; color: #fff; font-size: 24px;"></input>
			</div>
		</div>
	</form>
	<%
		}
	%>
</body>
</html>