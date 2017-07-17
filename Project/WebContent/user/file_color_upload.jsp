<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
currentg1 = 2; // This is input files added by default.
maxg1 = 5;
ming1 = 1;

function g1_app_child(){
    if(currentg1<maxg1)
    {
        var div = document.createElement("div");
        var div1 = document.createElement("div");
        var div2 = document.createElement("div");
        var label=document.createElement("label");
        var label1=document.createElement("label");
        div.id = 'divfiles'+currentg1;
        div1.id = 'div'+currentg1;
        label.style.float="left";
        label1.style.float="left";
        label.style.width = "120px";
        label1.style.width = "120px";
        
        div.innerHTML = '<input type="file" name="files['+currentg1+']" id="file'+currentg1+'" value="" />';
        div1.innerHTML ='<input type="color" name="color['+currentg1+']" id="color'+currentg1+'" value="" />';
        div2.innerHTML ="";
        
        label.innerHTML="Choose Color:";
        label1.innerHTML="Choose Photo:";
        document.getElementById('outer_div').appendChild(label);
        document.getElementById('outer_div').appendChild(div1);
        
        document.getElementById('outer_div').appendChild(div2);
        
        document.getElementById('outer_div').appendChild(label1);
        document.getElementById('outer_div').appendChild(div);
       
        
        currentg1++;
        return false;
    }
    else
    {
        alert('Maximum '+maxg1+' Files are Allowed.');
        return false;
    }
}

function g1_delchild()
{
    if(currentg1>ming1)
    {
        cnt = currentg1-1;
        element = document.getElementById('divfiles'+cnt);
        element.parentNode.removeChild(element);
        currentg1--;
        return false;
    }
    else
    {
        alert('Minimum '+ming1+' Files are Allowed.');
        return false;
    }
}
</script>

</head>
<body>
<form action="<%=request.getContextPath() %>/UploadServlet" method="post" enctype="multipart/form-data">
				<h2>Multiple File Uploading  Form</h2>
				<hr>
				
				<br><br>
				
				<div id="outer_div">
				<div id="divfiles0"><label>Choose Color:&nbsp; &nbsp; &nbsp; &nbsp;</label><input type="color" name="color[0]" id="color0"></div>
    			<div id="divfiles0"><label>Choose Photo:&nbsp; &nbsp; &nbsp; &nbsp;</label><input type="file" name="files[0]" id="file0" value="" /></div>
   					
				</div>
				<br><br>
				
				<a href="javascript:void();" onclick="g1_app_child()">Add field(s)</a><br>
				<a href="javascript:void();" onclick="g1_delchild()">Remove field(s)</a><br>
				<center>
				<input type="submit" value="Upload File" />
				</center>
	</form>
</body>
</html>