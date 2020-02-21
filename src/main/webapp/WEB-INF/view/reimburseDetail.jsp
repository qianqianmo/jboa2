<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="/jboa2/">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>北大青鸟办公自动化管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style>
	.img{width:40px;height:40px;cursor:pointer;}
	.weight{font-weight: bold;}
</style>
</head>
<body>
	<form id="myForm" name="myForm" method="post">
		<div class="action  divaction">
			<div class="t">查看报销单</div>
			<div class="pages">
				<!--增加报销单 区域 开始-->
				<table width="90%" border="0" cellspacing="0" cellpadding="0"
					class="addform-base">
					<caption>基本信息</caption>
					<tbody>
						<tr>
							<td>编&nbsp;&nbsp;号：${REIM.reimburseId }</td>
							<td>填&nbsp;写&nbsp;人：${REIM.createManName }</td>
							<td>部&nbsp;&nbsp;门：${REIM.departmentName }</td>
							<td>职&nbsp;&nbsp;位：${REIM.positionName }</td>
						</tr>
						<tr>
							<td>总金额：${REIM.totalCount }</td>
							<td>填报时间：<fmt:formatDate value="${REIM.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<td>状态：${REIM.statusName }</td>
							<td>待处理人：${REIM.nextDealManName }</td>
						</tr>
						<tr>
							<td colspan="4"><p>-------------------------------------------------------------------------------</p></td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
				<table width="90%" border="0" cellspacing="0" cellpadding="0"
					class="addform-base">
					<thead>
						<tr>
							<td>项目说明</td>
							<td>项目金额</td>
							<td>票据截图</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${DETAILS }" var="temp">
							<tr>
								<td>
									<span>${temp.desc }</span>
								</td>
								<td>
									<span>${temp.subTotal }</span>
								</td>
								<td><img class="img" src="images/${temp.pictureName }"></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<p>&nbsp;</p>
				<p>-------------------------------------------------------------------------------</p>

				<table style="margin-top: 15px;" width="90%" border="0" cellspacing="0" cellpadding="0"
					class="addform-base">
					<thead>
						<c:if test="${CHECK.size()>0 }">
							<tr>
								<td width="15%">审查人</td>
								<td width="40%">审查意见</td>
								<td width="30%">审查时间</td>
								<td width="15%">审查结果</td>
							</tr>
						</c:if>
					</thead>
					<tbody>
						<c:forEach items="${CHECK }" var="temp">
							<tr>
								<td>
									<span>${temp.checkManName }</span>
								</td>
								<td>
									<span>${temp.checkComment }</span>
								</td>
								<td>
									<span><fmt:formatDate value="${temp.checkTime }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
								</td>
								<td>
									<span class="weight">${temp.resultName }</span>
								</td>
							</tr>
						</c:forEach>

					</tbody>

				</table>
				<p>&nbsp;</p>

				<p>&nbsp;</p>
				<p>
					<input type="button" value="返回" onclick="window.history.go(-1)"
						class="submit_01">
				</p>
				<!--增加报销单 区域 结束-->
			</div>
		</div>
	</form>
</body>
</html>