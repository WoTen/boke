<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.css" rel="stylesheet">
  <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<title>注册~</title>
</head>
<body>
<div class="" style="width:100%" >
<nav class="navbar navbar-default" style="background:#555555">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Fucking Demo</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="color:#fff">boke</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

      <ul class="nav navbar-nav navbar-right">
        <li ><a href="./index.jsp" style="color:#fff">主页<span class="sr-only">Now choose</span></a></li>
        <li ><a href="./login.jsp" style="color:#fff">登陆</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
<div >

<div style="width:50%;margin-left:5%;margin-top:100px">
<img src="./miao.png" class="img-rounded" alt="喵！" id="img">
</div>

<div class="" style="">

<div>

<form class="form-horizontal" style="margin-top:-400px;margin-left:55%" method="post" action="./Add_user.jsp" name="regist">
 <h1 style="margin-left:20%;margin-top:-100px">注册~~~~~</h1>
 <br/>
 <br/>
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">名字</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" id="name" name="txtname" placeholder="要有个不是很随便的名字">
    </div>
  </div>
  <div class="form-group">
    <label for="firstkey" class="col-sm-2 control-label">密码</label>
    <div class="col-sm-7">
      <input type="password" class="form-control" id="psw" name="txtpassword"  placeholder="你的智商肯定会想出很复杂的密码的！">
    </div>
  </div>
    <div class="form-group">
    <label for="secondkey" class="col-sm-2 control-label">密码</label>
    <div class="col-sm-7">
      <input type="password" class="form-control" id="repsw" name="retxtpassword" placeholder="你的智商肯定会想出很复杂的密码的！">
    </div>
  </div>
  
      
  
    <div class="form-group">
    <label for="email" class="col-sm-2 control-label">邮箱</label>
    <div class="col-sm-7">
      <input type="email" class="form-control" id="mail" name="txtemail" placeholder="俺们的信息要送到哪个信箱呢">
    </div>
  </div>
   
  
<br/>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input class="btn btn-primary" type="submit" value="注册~" />
    </div>
  </div>
</form>
</div>
</div>
</div>

<script>
/**
 *注册页面的各种判断
 *@author:scnace
 */
$("#name").blur(function(){
      if(!$("#name").val()){
    		$("#name").css("border-color","#EF6464");
    		$("#name").attr("placeholder","新喵也要好好填写名字喵");
      }
      else{
    	  $("#name").css("border-color","#23EC27");
      }      
});
$("#psw").blur(function(){
if(!$("#psw").val()){
		$("#psw").css("border-color","#EF6464");
		$("#psw").attr("placeholder","不要乱写密码喵~");
}
else{
		$("#psw").css("border-color","#23EC27");
}
});
$("#repsw").blur(function(){
	if($("#psw").val()!=$("#repsw").val()){
		$("#repsw").css("border-color","#EF6464");
		$("#repsw").attr("placeholder","虽然喵瞎了,但是泥的密码和上次填的不一样！");
	}
	else if(!$("#repsw").val()){
		$("#repsw").css("border-color","#EF6464");
		$("#repsw").attr("placeholder","这里就是上面再输一遍啦喵!");		
	}
	else{
		$("#repsw").css("border-color","#23EC27");
	}
	});

$("#mail").blur(function(){
	if(!$("#mail").val()){
			$("#mail").css("border-color","#EF6464");
			$("#mail").attr("placeholder","乱写的话俺们可送不到喵~");
	}
	else{
			$("#mail").css("border-color","#23EC27");
	}
	});
$("#name").focus(function(){
    $("img").attr("src","./miao.png");	
    if($("#name").val()){
  		$("#name").css("border-color","#23EC27");
		$("#name").attr("placeholder","这次要好好写哦~");
    }
});
$("#psw").focus(function(){
      $("img").attr("src","./psw_miao.png");
});
$("#repsw").focus(function(){
    $("img").attr("src","./psw_miao.png");
});
$("#phone").focus(function(){
    $("img").attr("src","./b_m.png");
});
$("#mail").focus(function(){
    $("img").attr("src","./d_m.png");
});
/*             judgement  END            */

</script>


</body>




</html>