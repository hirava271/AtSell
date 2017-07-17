<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<form class="form-horizontal" role="form" method="post" action="<%=request.getContextPath()%>/DColourServlet?flag=insert">
<div>
<div style="clear:left">
<div style="float:left;width:100px">
<label class="col-sm-2 control-label">Colour:</label>
</div>
<div style="float:left">
<input type="text" class="form-control" name="colour"><br><br>
</div>
</div>
<div style="clear:left">
<div style="float:left;width:100px">
<label class="col-sm-2 control-label">Colour Description:</label>
</div>
<div style="float:left">
<textarea class="form-control" rows="3" name="colour_description"></textarea>
</div>
<div style="clear:left">
<button type="submit" class="btn btn-default">Submit</button>
</div>
</div>
</div>
</form>

</body>
</html>