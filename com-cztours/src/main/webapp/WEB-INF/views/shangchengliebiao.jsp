<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商城列表</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="resources/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="resources/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="resources/css/animate.css" rel="stylesheet">
    <link href="resources/css/style.css?v=4.1.0" rel="stylesheet">
    <script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="resources/js/admin/Comm.js"></script>
</head>
<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                    
                        
                        <h5>商城列表</h5>
                        
                        
                    
                        <div class="ibox-tools">
                        </div>
                    </div>
                    <div class="ibox-content">
                        <table class="table table-striped table-bordered table-hover dataTables-example">
                            <thead>
                                <tr>
                                	<th>商品ID</th>
                                	<th>商品名称</th>
                                	<th>商品价格</th>
                                    <th>商品详情(图片)</th>
                                    <th>运费方式</th>
                                    <th>创建时间</th>
                                    <th>操作</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                            	<c:set var="pager" value="${requestScope.pagination }"></c:set>
								<c:if test="${pager.totalElements gt 0 }" var="flag">
									<c:forEach var="comm" items="${pager.pageList }">
										<tr>
											<td>${comm.cId }</td>
											<td>${comm.cName }</td>
											<td>${comm.cPrice }</td>
											<td>
												<img src="fileUpload/${comm.cDetails }" width="80px" height="80px">
											</td>
											<td>
												<c:if test="${comm.cFreight eq 1 }">包邮</c:if>
												<c:if test="${comm.cFreight eq 2 }">货到付款</c:if>
												<c:if test="${comm.cFreight eq 3 }">其他方式</c:if>
											</td>
											<td>
												<fmt:formatDate value="${comm.cCreateTime }" pattern="yyyy-MM-dd"/>
											</td>
											<td style="text-align: center;">
												<input type="hidden" value="${comm.cId }">
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
                            </tbody>
                            <tfoot>
		                        	<tr>
			                           <td colspan="7" align="center">
									   		<%@ include file="pagination.jsp" %>
			                           </td>
			                    	</tr>    	
		                        </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>