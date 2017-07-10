<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/发图/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/发图/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
<script type="text/javascript">
//下面用于图片上传预览功能
function setImagePreview(avalue) {
var docObj=document.getElementById("u21_input");
 
var imgObjPreview=document.getElementById("u30_img");
if(docObj.files &&docObj.files[0])
{
//火狐下，直接设img属性
imgObjPreview.style.display = 'block'; 
//imgObjPreview.src = docObj.files[0].getAsDataURL();
 
//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
}
else
{
//IE下，使用滤镜
docObj.select();
var imgSrc = document.selection.createRange().text;
var localImagId = document.getElementById("u30");
//必须设置初始大小
//图片异常的捕捉，防止用户修改后缀来伪造图片
try{
localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
}
catch(e)
{
alert("您上传的图片格式不正确，请重新选择!");
return false;
}
imgObjPreview.style.display = 'none';
document.selection.empty();
}
return true;
}
 
</script>
<title>发表图片</title>
</head>
<body>
<form action="uploadAction.action" method="post" enctype="multipart/form-data">
	<div id="base" class="">

      <!-- Unnamed (Shape) -->
      <div id="u0" class="ax_shape">
        <img id="u0_img" class="img " src="images/发图/u0.png"/>
        <!-- Unnamed () -->
        <div id="u1" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- 描述底栏 (Shape) -->
      <div id="u14" class="ax_shape" data-label="描述底栏">
        <img id="u14_img" class="img " src="images/发图/描述底栏_u14.png"/>
        <!-- Unnamed () -->
        <div id="u15" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u16" class="ax_shape">
        <img id="u16_img" class="img " src="images/发图/u16.png"/>
        <!-- Unnamed () -->
        <div id="u17" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- 描述 (Text Area) -->
      <div id="u18" class="ax_text_area" data-label="描述">
        <textarea id="u18_input" name="pMore"></textarea>
      </div>

      <!-- 上传 (Shape) -->
      <div id="u19" class="ax_shape" data-label="上传">
        <input id="u19_img" class="img " type="submit" value="上传" style="background:url(images/发图/上传_u19.png); border:0; padding:0; color: #fff; font-size:24px;"></input>
      </div>

      <!-- sc (Text Field) -->
      <div id="u21" class="ax_text_field" data-label="sc">
        <input id="u21_input" type="file" value="" name="file" onchange="javascript:setImagePreview();"/>
      </div>

      <!-- 符号 (Shape) -->
      <a href="tpb?method=select">
      <div id="u24" class="ax_shape" data-label="符号">
        <img id="u24_img" class="img " src="images/发图/符号_u24.png"/>
        <!-- Unnamed () -->
        <div id="u25" class="text">
          <p><span>返回</span></p>
        </div>
      </div>
      </a>

      <!-- 高清 (Radio Button) -->
      <div id="u26" class="ax_radio_button" data-label="高清">
        <label for="u26_input">
          <!-- Unnamed () -->
          <div id="u27" class="text">
            <p><span>高清</span></p>
          </div>
        </label>
        <input id="u26_input" type="radio" value="gq" name="pSc"/>
      </div>

      <!-- 原图 (Radio Button) -->
      <div id="u28" class="ax_radio_button" data-label="原图">
        <label for="u28_input">
          <!-- Unnamed () -->
          <div id="u29" class="text">
            <p><span>原图</span></p>
          </div>
        </label>
        <input id="u28_input" type="radio" value="yt" name="pSc"/>
      </div>

      <!-- 图片 (Image) -->
      <div id="u30" class="ax_image" data-label="图片">
        <img id="u30_img" class="img " src="images/发图/图片_u30.png"/>
        <!-- Unnamed () -->
        <div id="u31" class="text">
          <p><span></span></p>
        </div>
      </div>
    </div>
</form>
</body>
</html>