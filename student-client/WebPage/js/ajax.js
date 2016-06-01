/*
AJAX封装函数
url：系统要读取文件的地址
fnSucc：一个函数，文件取过来，加载完会调用
*/

function ajax(url,o,type, fnSucc, fnFaild)
{
  //1.创建Ajax对象
  var oAjax=null;

  if(window.XMLHttpRequest)
  {
    oAjax=new XMLHttpRequest();
  }
  else
  {
    oAjax=new ActiveXObject("Microsoft.XMLHTTP");
  }

  //2.连接服务器
  oAjax.open(type, url, true);

  //3.发送请求
  oAjax.send(o);

  //4.接收服务器的返回
  oAjax.onreadystatechange=function ()
  {
    if(oAjax.readyState==4) //完成
    {
      if(oAjax.status==201)  //成功
      {
        fnSucc(oAjax.responseText);
      }
      else
      {
        if(fnFaild)
          fnFaild(oAjax.status);
      }
    }
  };
}

