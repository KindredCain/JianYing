<%@ page language="java" pageEncoding="utf-8" %>
<%@ page import="model.*"%>
<!DOCTYPE HTML PUBLIC "-//w3c//dtd html 4.0 transitional//en">
<html>
<head><title>用户管理</title></head>
<body bgcolor="#FFFFFF">
<%
    Yhb user=(Yhb) request.getAttribute("Yh");
    if(user==null) return;     
    
%>

<form action="yhb" method="post">  
  <input type="hidden" name="method" value='<%="adduserresult"%>'>
  登录名： <input type="text" name="zh" value='<%=user.getZh()%>' >
  <p>密 码：<input type="password" name="pwd" value='<%=user.getPwd()%>'></p>
  <p>昵 称：<input type="text" name="nc" value='<%=""%>'></p>
  <p>Q Q：<input type="text" name="qq" value='<%=""%>'></p>
  <p>地 址：<input type="text" name="dz" value='<%=""%>'></p>
  <p>个人介绍：<input type="text" name="more" value='<%=""%>'></p>
  <input type="submit" name="Submit" value="提交">
</form>
</body>
</html>