<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="/taglibs.jsp"%>
<%pageContext.setAttribute("currentHeader", "employee");%>
<%pageContext.setAttribute("currentMenu", "employee");%>
<!doctype html>
<html>

  <head>
    <%@include file="/common/meta.jsp"%>
    <title>编辑</title>
    <%@include file="/common/s3.jsp"%>
    <script type="text/javascript">
$(function() {
    $("#employee-infoForm").validate({
        submitHandler: function(form) {
			bootbox.animate(false);
			var box = bootbox.dialog('<div class="progress progress-striped active" style="margin:0px;"><div class="bar" style="width: 100%;"></div></div>');
            form.submit();
        },
        errorClass: 'validate-error'
    });
})
    </script>
  </head>

  <body>
    <%@include file="/header/employee-info.jsp"%>

    <div class="row-fluid">
	  <%@include file="/menu/employee-info.jsp"%>

	<!-- start of main -->
      <section id="m-main" class="col-md-10" style="padding-top:65px;">

      <div class="panel panel-default">
        <div class="panel-heading">
		  <i class="glyphicon glyphicon-list"></i>
		  编辑
		</div>

		<div class="panel-body">


<form id="employee-infoForm" method="post" action="employee-info-save.do" class="form-horizontal">
  <c:if test="${model != null}">
  <input id="employee-info_id" type="hidden" name="id" value="${model.id}">
  </c:if>
  <div class="form-group">
    <label class="control-label col-md-1" for="employee-info_name"><spring:message code="employee-info.employee-info.input.name" text="名称"/></label>
	<div class="col-sm-5">
	  <input id="employee-info_name" type="text" name="name" value="${model.name}" size="40" class="form-control required" minlength="2" maxlength="10">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-1" for="employeeInfo-department">部门</label>
	<div class="col-sm-5">
	  <input id="employeeInfo-department" type="text" name="department" value="${model.department}" size="40" class="form-control required" minlength="2" maxlength="10">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-1" for="employeeInfo-company">公司</label>
	<div class="col-sm-5">
	  <input id="employeeInfo-company" type="text" name="company" value="${model.company}" size="40" class="text">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-1" for="employeeInfo-position">职位</label>
	<div class="col-sm-5">
	  <input id="employeeInfo-position" type="text" name="position" value="${model.position}" size="40" class="text">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-5">
      <button type="submit" class="btn a-submit"><spring:message code='core.input.save' text='保存'/></button>
	  &nbsp;
      <button type="button" class="btn a-cancel" onclick="history.back();"><spring:message code='core.input.back' text='返回'/></button>
    </div>
  </div>
</form>

		</div>
      </article>

    </section>
	<!-- end of main -->
	</div>

  </body>

</html>

