var window_id = 1;
var canteen_id = 1;
var k;
var product = {
  "picture": "http://api.byway.net.cn/media/products/4.jpg",
  "description": "柔嫩的青菜",
  "price": 14,
  "score": 3,
  "sold_num": 5,
  "category_id": 1,
  "id": 4,
  "unit": "桶",
  "name": "蒜蓉生菜"
};

function getWindow_id()
{
    return window_id;
}
function setWindow_id(is)
{
    window_id = is;
}
function getCanteen_id()
{
    return canteen_id;
}
function setCanteen_id(is)
{
    canteen_id = is;
}
function getProduct(id)
{
    var url = "http://api.byway.net.cn/v1/products/"+id+"/";
    $.ajax({
        async:false,   
        type:"get",
        url:url,
        success:function(str){
            product = JSON.parse(str);
                },
        error:function(jsonResult){
            alert("error");
                }
        });
}


function initPaypage(win){
    cart_money = getCookie("cartmoney"+win);
    document.getElementById('cost_money').innerHTML = '¥ '+ cart_money;
}
/*
function getProduct()
{
    product = new JSONArray();
    
}*/
function initOrderform(win){        //获取窗口编号  
    var cart_money = getCookie("cartmoney"+win);
    var cart_count = getCookie("cartnum"+win);
    document.getElementById('order_money').innerHTML = '¥ '+ cart_money;
    document.getElementById('cost_money').innerHTML = '¥ '+ cart_money;
    
    for(var i=1;i<cart_count;i++){
        var c_name ="cart"+win+"com"+i;
       // getProduct(i);
        var c = getCookie(c_name);
        if(c!==""){
             var para = document.createElement("p");
             para.className = "menu_cai";
             para.innerHTML = "<span class=\"menu_name\">"+ product.name           //i是名字，需要改，cookie里不存
                     +"</span> <span class=\"menu_cot\">x "+ c +"</span> <span class=\"menu_cost\">"+ product.price*c  //15是价格，cookie里不存
                     +" 元</span>";
            document.getElementById("order_cart").appendChild(para); 
        }
    }
}


function checkCookie(win,nump){          //窗口号
    var cart_money = getCookie("cartmoney"+win);   //窗口购物车总金额
    var cart_count = getCookie("cartnum"+win);    //窗口中窗口种类个数
    if (cart_money == null || cart_money=="" || cart_money=="undefined" ||cart_money ==0 ||cart_money=='NaN'){
       //分别是窗口商品数 和 窗口购物车总金额
        setCookie("cartnum"+win,nump,365);
        setCookie("cartmoney"+win,0,365); 
        cart_money = 0;
        cart_count = nump;
    }else{
        document.getElementById('f_money').innerHTML = '¥ '+ cart_money;  
        document.getElementById('f_pay').style.display = 'block';  
        document.getElementById('clear_cart').style.display = 'block';
    }

    var proarr;
    $.ajax({
        url:'http://api.byway.net.cn/v1/windows/'+win+'/',
        async:false,
        success:function (str){
            proarr = JSON.parse(str.products_data);
        }
    });
    for(i in proarr)
    {
        for(j in proarr[i].products)
        {
            var c_name ="cart"+win+"com"+proarr[i].products[j].id;
            //getProduct(i);
            var c = getCookie(c_name);
            if(c!==""){
                var tr = document.createElement("tr");
                var tdN = document.createElement("td");
                var tdP = document.createElement("td");
                var tdC = document.createElement("td");
                var tdO = document.createElement("td");
                tdN.innerHTML = proarr[i].products[j].name;
                tdC.innerHTML = 
                    "<span class='am' onclick='RedItem2(\""+win+"\",\""+proarr[i].products[j].id+"\")'>-&nbsp</span>" + c + "<span class='am' onclick='AddItem2(\""+win+"\",\""+proarr[i].products[j].id+"\")'>&nbsp+</span>";
                tdP.innerHTML = proarr[i].products[j].price;
                tdO.innerHTML = "<span onclick='DelItem2(\""+win+"\",\""+proarr[i].products[j].id+"\")'>×</span>";
            
                tr.appendChild(tdN);
                tr.appendChild(tdP);
                tr.appendChild(tdC);
                tr.appendChild(tdO);
                document.getElementById("tablebody").appendChild(tr);          
            }
        }
    }

}



function addToCart(win,num){       //num是商品号，按顺序从1开始  win是窗口号()
    //getProduct(num);
    var value = getCookie("cart"+win+"com"+num);    //当前窗口购物车的cookie
    if (value==null || value=="" || value=="undefined" || value =='NaN'){
        setCookie("cart"+win+"com"+num,1,365);      //存的是该商品的个数
    }else{       
        value = parseInt(value) + 1;
        setCookie("cart"+win+"com"+num,value,365);       
    }
    
    var cart_money = getCookie("cartmoney"+win); 
    var money = parseInt(cart_money) + price;//15是商品价格 还未交互
    setCookie("cartmoney"+win,money,365);
    //window.parent.location.reload(true);
}

function addToCart2(win,num){       //num是商品号，按顺序从1开始  win是窗口号
   // win = 1;
    getProduct(num);
    //var product = JSON.parse(str);
    var value = getCookie("cart"+win+"com"+product.id);    //当前窗口购物车的cookie

    if (value==null || value=="" || value=="undefined" || value =='NaN'){
        setCookie("cart"+win+"com"+product.id,1,365);      //存的是该商品的个数
    }else{       
        value = parseInt(value) + 1;
        setCookie("cart"+win+"com"+product.id,value,365);       
    }
    
    var cart_money = getCookie("cartmoney"+win); 
    var money = parseInt(cart_money) + product.price;//15是商品价格 还未交互
    setCookie("cartmoney"+win,money,365);
    window.parent.location.reload(true);
}

function AddItem2(win,num){
    getProduct(num);
    var cart_money = getCookie("cartmoney"+win); 
    var count = getCookie("cart"+win+"com"+product.id);

    var count = parseInt(count) + 1;
    setCookie("cart"+win+"com"+product.id,count,365);  
  
    var money = parseInt(cart_money) + product.price;//15是商品价格 还未交互
    setCookie("cartmoney"+win,money,365);  

    location.reload(true);
    document.getElementById('shopping_cart').style.display = 'block'; 
    document.getElementById('clear_cart').style.display = 'block';
}

function RedItem2(win,num){
    getProduct(num);
    var cart_money = getCookie("cartmoney"+win); 
    var count = getCookie("cart"+win+"com"+num);
    if(parseInt(count)==1){ 
        DelCookie("cart"+win+"com"+num);
    }else{
        var count = parseInt(count) - 1;
        setCookie("cart"+win+"com"+num,count,365);  
    }
    
    var money = parseInt(cart_money) - product.price; //15是商品价格 还未交互
    setCookie("cartmoney"+win,money,365);  
    
    location.reload(true);
}

function DelAllItem(win){
    var cart_count = getCookie("cartnum"+win);
    var proarr;
    $.ajax({
        url:'http://api.byway.net.cn/v1/windows/'+win+'/',
        async:false,
        success:function (str){
            proarr = JSON.parse(str.products_data);
        }
    });
    for(i in proarr)
    {
        for(j in proarr[i].products)
        {
            var c_name ="cart"+win+"com"+proarr[i].products[j].id;
            var c = getCookie(c_name);
            if(c!==""){
                DelItem(win,proarr[i].products[j].id);
            }
        }
    }
}

function DelItem(win,num){
   // var win = getWindow_id();
    var cart_money = getCookie("cartmoney"+win); 
    var count = getCookie("cart"+win+"com"+num);
    var money = parseInt(cart_money) - product.price * parseInt(count);
    setCookie("cartmoney"+win,money,365);  
    DelCookie("cart"+win+"com"+num);
    
    location.reload(true);
    document.getElementById('shopping_cart').style.display = 'block'; 
}

function DelItem2(win,num){
    getProduct(num);
    var cart_money = getCookie("cartmoney"+win); 
    var count = getCookie("cart"+win+"com"+product.name);
    var money = parseInt(cart_money) - product.price * parseInt(count);
    setCookie("cartmoney"+win,money,365);  
    DelCookie("cart"+win+"com"+product.id);
    
    location.reload(true);
    document.getElementById('shopping_cart').style.display = 'block'; 
}

function getCookie(c_name){
    if (document.cookie.length>0){ 
        c_start=document.cookie.indexOf(c_name + "=");
        if (c_start!==-1){ 
            c_start=c_start + c_name.length+1 ;
            c_end=document.cookie.indexOf(";",c_start);
            if (c_end===-1)
                c_end=document.cookie.length;
    return unescape(document.cookie.substring(c_start,c_end));
        } 
    }
    return "";
}


function setCookie(c_name,value,expiredays){
    var exdate=new Date();
    exdate.setDate(exdate.getDate()+expiredays);
    document.cookie=c_name+ "=" +escape(value)+((expiredays===null) ? "" : "; expires="+exdate.toGMTString());
}

function DelCookie(name) {
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    document.cookie = name + "=; expires=" + exp.toGMTString();
}

/*
function register(){
    var username = document.getElementById("inputname").value;
    setCookie('username',username,365);
    window.history.back(-1);
}

function checkCookieExist(){
    username=getCookie('username');
    if (username!==null && username!=="" && username!=="undefined"){
        document.getElementById('register').innerHTML=" &nbsp<a href='#' onclick='logout()' > logout </a> &nbsp";
        document.getElementById('register').style.width = "101px";
        document.getElementById('welcome').innerHTML="Welcome, "+username;
    }
}

function logout(){
    DelCookie('username');
    DelCookie("count");
    for(var i=0;i<12;i++){
        DelCookie('cart'+i);
    }
    for(var i=0;i<12;i++){
        DelCookie('order'+i);
    }
}



function pay(){
    if(getCookie('username')==="")
        window.location.href = "register.html";
    else{
        var count = getCookie("count");
        if(count==="0")
            window.location.href = "jumpPage.html";
        else{
            for(var i=1;i<12;i++){
                if(getCookie("cart"+i)!==""){
                    var date = new Date();
                    var str = date.getFullYear()+'-'+(date.getMonth()+1)+'-'+date.getDate();
                    setCookie("order"+i,str,365);
                    DelCookie("cart"+i);
                }
            }
            window.location.href = "orderForm.html";
        }
    }
}
*/