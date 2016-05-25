
<html>
<head>
	<script src = "js/jquery-1.8.2.min.js"></script>
    <script language="JavaScript" defer="defer" src="js/jquery.qtip.min.js" type="text/javascript"></script>
    <script type = "text/javascript">
function login(){
	$.ajax({
		type:'POST',
		url:'http://api.byway.net.cn/v1/login/',
		data:JSON.stringify({"username":"13301039@bjtu.edu.cn","password":"1213"}),
		success:function(data){
			document.getElementById("yesy").innerHTML = data;
		}
		complete:function(data){
			document.getElementById("yesy").innerHTML = JSON.stringify(data);
		}
	})
}
</head>
<body>
	<p id = "yesy">
	</p>
</body>


<html>
    <head>
    	<meta charset="UTF-8">
        <script src = "js/jquery-1.8.2.min.js"></script>
        <script language="JavaScript" defer="defer" src="js/jquery.qtip.min.js" type="text/javascript"></script>
        <script type = "text/javascript">
        $(document).ready(function(){
            $('#form1').bind('submit',function(){
                ajaxSubmit(this,function(data){
                    alert(data);
                });
                alert("jjjjj");
            });
        });
           function ajaxSubmit(frm,fn){
            //var dataPara = getFormJson(frm);
            var dataPara = {
                "username":"133301039@bjtu.edu.cn",
                "password":"123"
            };
            $.ajax({
                url:frm.action,
                type:frm.method,
                data:JSON.stringify(dataPara),
                success:function(data){document.getElementById("").innerHTML = data;}
                complete:function(data){
					document.getElementById("div").innerHTML = JSON.stringify(data);
		}
            });
           }

           function getFormJson(frm){
                var o = {
                        "username":"",
                        "password":""
                    };
                var name=document.getElementById("user_name").value;
                var password=document.getElementById("user_password").value;
                 o["username"] =name;
                    o['password'] = password;
                 return o;
            }
        </script>
        </head>
    <body>
    	<form id = "form1" action = "http://api.byway.net.cn/v1/login/" method = "post"> 
                    <p><input class="ipt" id="user_name" type="text" style='width: 200px' placeholder="用户名" value = ""/></p>
                    <p><input class="ipt" id="user_password" type="password" style='width: 200px' placeholder="密码" value = ""/></p>                  
                    <input id='submit' type="submit" value="登  陆"/>
                  
                </form> 
        <div>
        	<p></p>
        </div>
    </body>
   </html>