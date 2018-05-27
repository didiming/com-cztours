<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title> 旅游添加</title>
	    <meta name="keywords" content="">
	    <meta name="description" content="">
	    <link href="resources/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
	    <link href="resources/css/font-awesome.css?v=4.4.0" rel="stylesheet">
	
	    <link href="resources/css/jasny-bootstrap.min.css" rel="stylesheet">
	
	    <link href="resources/css/style.css?v=4.1.0" rel="stylesheet">
	
	</head>
	<body class="gray-bg">
	    <div class="wrapper wrapper-content animated fadeInRight">
	        <div class="row">
	            <div class="col-sm-12">
	                <div class="ibox float-e-margins">
	                	
	                    <div class="ibox-title">
	                        <h5>
	                        	<c:if test="${requestScope.msg eq 1 }" var="flag">添加</c:if>
	                    		<c:if test="${not flag }">修改</c:if>旅游景点</h5>
	                    </div>
	                    
	                    <div class="ibox-content">
	                        <form class="form-horizontal" action="<c:if test="${requestScope.msg eq 1 }" var="flag">tianjialvyou</c:if><c:if test="${not flag }">bianjilvyou</c:if>" method="post" enctype="multipart/form-data">
	                        	<div class="form-group">
	                        		<label class="col-sm-3 control-label"></label>
	                        		<div class="col-sm-8" style="color: red;font-size: 15px">
	                                    
	                                </div>
	                        	</div>
	                        		<input type="hidden" name="sId" value="${requestScope.scenic.sId }"/>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											<span style="color:red;" >*</span>景区名称：
										</label>
										<div class="col-sm-8" >
											<input type="text" name="sName" value="${requestScope.scenic.sName }" placeholder=" 请输入景区名称" maxlength="50" class="form-control">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label">
											<span style="color:red;" >*</span>景区详情：
										</label>
										<div class="col-sm-8" >
											<%-- <input type="text" name="sContent" value="${requestScope.scenic.sContent }" placeholder=" 请输入景区详情" maxlength="11" id="xm" class="form-control"> --%>
											<textarea name="sContent" class="form-control">${requestScope.scenic.sContent }</textarea>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label">
											<span style="color:red;" >*</span>景区图片：
										</label>
										<div class="col-sm-8" >
											<c:if test="${requestScope.msg eq 1 }" var="flag"><a href="javascript:;" class="tc acc_scicon">选择图片</a></c:if>
	                    					<c:if test="${not flag }"><a href="javascript:;" class="tc acc_scicon">${requestScope.scenic.sPhoto }</a></c:if>
											<input type="file" name="file" placeholder="请添加景区图片" class="form-control" style="height: 40px;" />
										</div>
									</div>	
									
									<div class="form-group">
										<label class="col-sm-3 control-label">
											<span style="color:red;" >*</span>图片描述：
										</label>
										<div class="col-sm-8" >
											<input type="text" name="sDescribe" value="${requestScope.scenic.sDescribe }" placeholder=" 请输入图片的描述 " maxlength="20" class="form-control">
										</div>
									</div>
	                                
									
	                           	 <div class="form-group">
	                                <div class="col-sm-offset-3 col-sm-8">
	                                	<input type="submit" class="btn btn-sm btn-info" value="确认保存" >
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
