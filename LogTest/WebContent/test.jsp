<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<title>测试Log</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/js/jquery-1.10.2.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/signin.css">
</head>
<body>
<div class="container">
        <form class="form-signin">
            <h2 class="form-signin-heading">系统登录</h2>
            <label for="inputEmail" class="sr-only">用户名</label>
            <input type="text" id="staff_id" name=""staff_id"" class="form-control" placeholder="用户名" required autofocus>
            <label for="inputPassword" class="sr-only">密码</label>
            <input type="password" id="passwd" name="passwd" class="form-control" placeholder="密码" onkeydown='KeyDown()' required>
            
            <button class="btn btn-lg btn-primary btn-block" type="button" onclick="checklogin()">登录</button>
        </form>
     </div> <!-- /container -->

<footer role="contentinfo">
    <center><p><span>@2017 daiql</span></p></center>
</footer>
</body>
</html>
<script>
function KeyDown(){
  if (event.keyCode == 13){
    event.returnValue=false;
    event.cancel = true;
    checklogin();
  }
}

function checklogin() {
	var staff_id = $("#staff_id").val();
	var passwd = $("#passwd").val();
	var now_url = window.location.href;
	var url = "/LogTest/TestServlet";
	if ( now_url.indexOf("qdhdl") >= 0 ){
		url = "/weixin/LogTest/TestServlet";
	}
	if ( staff_id.length==0 || passwd.length==0){
		alert("用户名或密码不能为空");
	}else{
		$.ajax({   
	        type: "post",
	        url: url,   
	        dataType: "json",   
	        data: {
	        	"staff_id":staff_id,
	        	"passwd":passwd
	        },
	        async: true,
	        //异步请求（true）,默认是异步，同步是false
	        error: function()
            {
        		alert("错误");
        	},   
	        success: function(data)
	        {   
	            //alert(data.flag);
	            /*
	        	if (data.flag == false){
	            	alert("用户名密码错误");
	            }else{
	            	window.location.href="/dianshang/index.jsp";
	            }
	            */
	        }   
	    });
	}
}
</script>