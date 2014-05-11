<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/style/style.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery-1.5.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/script/splitpage.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/script/changeColor.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/script/tel.js"></script>
	<style type="text/css">
		#overlay-tel{position:absolute;top:0;left:0;width:100%;height:100%;background:#000;opacity:0.5;filter:alpha(opacity=50);display:none;} 
		#win-tel{position:absolute;top:50%;left:50%;width:500px;height:240px;background:#EAECEA;border:4px solid #F7F7F7;margin:-102px 0 0 -202px;display:none;}
		h2{font-size:12px;height:18px;text-align:right;background:#3F89EC;border-bottom:3px solid #F7F7F7;padding:2px;cursor:move;margin-top:2px;} 
		h2 span{border:0px solid #f90;padding:0 2px;} 
	</style>
</head>
<body style="background:#E0EEFB;">
<div id="jiangbu-data">
<table class="data_list" cellpadding="0" cellspacing="0" width="100%">
   	<thead>
    <tr class="tabtr">
        <td width="10%">号码编号</td>
        <td width="15%">呼叫号码</td>
        <td width="15%">状态</td>
        <td width="15%">呼叫日期时间</td>
        <td width="15%">通话时长</td>
        <td width="10%">
        	<p>
        		<input type="button" value="添加" onclick="popEditTel('add')" class="button43"/>
        	</p>
        </td>
    </tr>
    </thead>
    <tbody id="splitpage">
    <s:iterator value="#session.vts.list" var="ls" status="sc">
    <tr style="display:none">
        <td><s:property value="#ls.c0"/></td>
        <td><s:property value="#ls.c1"/></td>
        <td><s:property value="#ls.c2"/></td>
        <td><s:property value="#ls.c3"/></td>
        <td><s:property value="#ls.c4"/></td>
        <td>
        	
        </td>
    </tr>
    </s:iterator>
	</tbody>
</table>
</div>
<div class="split-page">
	<input type="hidden" id="pageRows" value="23"/>
	<div id="changePage"></div>
</div>

<!-- update name -->
<div id="overlay-tel"></div>
<div id="win-tel" style="line-height: 30px">
<h2 style="line-height:20px; text-align:left"><span id="tel-title"><font color="#fff">修改任务信息</font></span></h2>
<form name="telForm" action="" method="post">
<div class="edit-list">
	<table width="450px" cellpadding="0" cellspacing="0">
		<tr height="20px">
			<td width="30%" align="right">任务名称:&nbsp;&nbsp;</td>
			<td width="35%" align="left"><input id="t3" name="tasktxt" class="inpasstxt" type="text" maxlength="20"/></td>
		</tr>
		<tr height="20px">
			<td width="30%" align="right">任务内容:&nbsp;&nbsp;</td>
			<td width="35%" align="left"><input id="t4" name="tasktxt" class="inpasstxt" type="text" maxlength="20"/></td>
		</tr>
	</table>
</div>
<div style="margin-top:5px; margin-left:150px;">
	<input type="button" value="确定" class="button4" onclick="subTelBt()"/>&nbsp;&nbsp;&nbsp;&nbsp;
	<input id="close" type="button" value="取消" class="button4"/>
</div>
</form>
</div> 
<!-- update name end -->

</body>
</html>