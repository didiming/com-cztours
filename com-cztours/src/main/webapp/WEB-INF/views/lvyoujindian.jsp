<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>景区管理</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="resources/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="resources/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="resources/css/animate.css" rel="stylesheet">
    <link href="resources/css/style.css?v=4.1.0" rel="stylesheet">
    <script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="resources/js/admin/Scenic.js"></script>
</head>
<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                    
                        
                        <h5>景区管理</h5>
                        
                        
                    
                        <div class="ibox-tools">
                        </div>
                    </div>
                    <div class="ibox-content">
                        <table class="table table-striped table-bordered table-hover dataTables-example">
                            <thead>
                                <tr>
                                	<th>ID</th>
                                    <th>景区名称</th>
                                    <th>景区详情</th>
                                    <th>图片</th>
                                    <th>图片描述</th>
                                    <th>添加时间</th>
                                    <th style="text-align: center;">操作</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:set var="pager" value="${requestScope.pagination }"></c:set>
								<c:if test="${pager.totalElements gt 0 }" var="flag">
									<c:forEach var="scenic" items="${pager.pageList }">
										<tr>
											<td>${scenic.sId }</td>
											<td>${scenic.sName }</td>
											<td>${fn:substring(scenic.sContent, 0, 20)}......</td>
											<td><%-- ${scenic.sPhoto } --%>
												<img src="fileUpload/${scenic.sPhoto }" width="80px" height="80px">
											</td>
											<td>${scenic.sDescribe }</td>
											<td>
												<fmt:formatDate value="${scenic.sCreateTime }" pattern="yyyy-MM-dd"/>
											</td>
											<td style="text-align: center;">
												<input type="hidden" value="${scenic.sId }">
												<!-- <a href="tianjialvyou" class="btn btn-white">添加</a> -->
		                        				<input type="button" class="btn btn-default" value="编辑" />
                            					<input type="button" class="btn btn-default" value="删除" />
		                        			</td>
										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${not flag }">
                            		<tr class="gradeX">
                            			<td colspan="7" align="center">暂时没有可用的数据</td>
                            		</tr>
                            	</c:if>
                            	<tfoot>
		                        	<tr>
			                           <td colspan="7" align="center">
									   		<%@ include file="pagination.jsp" %>
			                           </td>
			                    	</tr>    	
		                        </tfoot>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>