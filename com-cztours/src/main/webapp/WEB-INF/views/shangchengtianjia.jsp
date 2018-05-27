<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品添加</title>
	<link href="resources/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="resources/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="resources/css/animate.css" rel="stylesheet">
    <link href="resources/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg" style="overflow: hidden;">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>
                        	<c:if test="${requestScope.msg eq 1 }" var="flag">添加</c:if><c:if test="${not flag }">编辑</c:if>商城</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" action="<c:if test="${requestScope.msg eq 1 }" var="flag">shangchengtianjia</c:if><c:if test="${not flag }">bianjishangcheng</c:if>" method="post" enctype="multipart/form-data">
                        	<input type="hidden" name="cId" value="${requestScope.comms.cId }" />
                        	<div class="form-group">
                        		<label class="col-sm-3 control-label"></label>
                        		<div class="col-sm-8" style="color: red;font-size: 15px">
                                    
                                </div>
                        	</div>
                        	
                           <div class="row">
							  <div class="col-xs-6">
							  	<div class="form-group">
									<label class="col-sm-3 control-label"><span style="color:red;">*</span>商品名称：</label>
									<div class="col-sm-8" >
										<input type="text"  class="form-control" value="${requestScope.comms.cName }" placeholder=" 请输人商品名称"  name="cName" required>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label"><span style="color:red;">*</span>商品价格：</label>
									<div class="col-sm-8" >
										<input type="text"  class="form-control" placeholder=" 请输人商品价格" value="${requestScope.comms.cPrice }"  name="cPrice" required>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label"><span style="color:red;">*</span>运送方式：</label>
									<div class="col-sm-8" >
										<select class="form-control" style="height: 35px;" name="cFreight">
										  	<option value="1" <c:if test="${requestScope.comms.cFreight eq 1 }"> selected="selected"</c:if>>包邮</option>
										  	<option value="2" <c:if test="${requestScope.comms.cFreight eq 2 }"> selected="selected"</c:if>>货到付款</option>
										  	<option value="3" <c:if test="${requestScope.comms.cFreight eq 3 }"> selected="selected"</c:if>>其他方式</option>
										</select>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label"><span style="color:red;">*</span>图片详情：</label>
									<div class="col-sm-8" >
										<c:if test="${requestScope.msg eq 1 }" var="flag"><a href="javascript:;" class="tc acc_scicon">选择图片</a></c:if>
	                    					<c:if test="${not flag }"><a href="javascript:;" class="tc acc_scicon">${requestScope.comms.cDetails }</a></c:if>
										<input type="file" name="file" placeholder="请添加景区图片" class="form-control" style="height: 40px;" />
									</div>
								</div>
						   </div>
						   
						    <div class="row">
							  <div class="col-xs-12" style="text-align: center;">
							  	<!-- <button id="submit" class="btn btn-sm btn-info" type="submit">确认保存</button> -->
							  	<input type="submit" value="确认保存" class="btn btn-sm btn-info" />
							  </div>
							</div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
