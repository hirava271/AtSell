<!doctype html>
<html class="signup no-js" lang="">
<head>
 
<meta charset="utf-8">
<meta name="description" content="Flat, Clean, Responsive, application admin template built with bootstrap 3">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">
 
<title>Sublime - Web Application Admin Dashboard</title>
 
 
 
<script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"fc9dd4f0050a30aedc1ab2dd1ba726bf",petok:"3037da30274958fdc84ffe867cac7cbd724f39ab-1428386196-1800",zone:"nyasha.me",rocket:"0",apps:{"ga_key":{"ua":"UA-50530436-1","ga_bs":"2"}}}];CloudFlare.push({"apps":{"ape":"2c3f1c615d6dcbc9aa76bd9ddc383ab5"}});!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=7e13c32551/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/themify-icons.css">
<link rel="stylesheet" href="css/animate.min.css">
 
 
<link rel="stylesheet" href="css/palette.css">
<link rel="stylesheet" href="css/fonts/font.css">
<link rel="stylesheet" href="css/main.css">
 
 
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 
<script src="js/modernizr.js"></script>
<script type="text/javascript">
/* <![CDATA[ */
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-50530436-1']);
_gaq.push(['_trackPageview']);

(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

(function(b){(function(a){"__CF"in b&&"DJS"in b.__CF?b.__CF.DJS.push(a):"addEventListener"in b?b.addEventListener("load",a,!1):b.attachEvent("onload",a)})(function(){"FB"in b&&"Event"in FB&&"subscribe"in FB.Event&&(FB.Event.subscribe("edge.create",function(a){_gaq.push(["_trackSocial","facebook","like",a])}),FB.Event.subscribe("edge.remove",function(a){_gaq.push(["_trackSocial","facebook","unlike",a])}),FB.Event.subscribe("message.send",function(a){_gaq.push(["_trackSocial","facebook","send",a])}));"twttr"in b&&"events"in twttr&&"bind"in twttr.events&&twttr.events.bind("tweet",function(a){if(a){var b;if(a.target&&a.target.nodeName=="IFRAME")a:{if(a=a.target.src){a=a.split("#")[0].match(/[^?=&]+=([^&]*)?/g);b=0;for(var c;c=a[b];++b)if(c.indexOf("url")===0){b=unescape(c.split("=")[1]);break a}}b=void 0}_gaq.push(["_trackSocial","twitter","tweet",b])}})})})(window);
/* ]]> */
</script>
<script type="text/javascript">
function checkpwd(x)
{
	var pwd=document.getElementById("pwd_id");
	if(x.value != pwd.value)
		{
			alert("confirm password must match with password");
		}
	}
</script>
</head>
<body class="bg-info">
<div class="center-wrapper">
<div class="center-content">
<div class="row">
<div class="col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
<section class="panel bg-white no-b">
<ul class="switcher-dash-action">
<li><a href="login.jsp" class="selected">Sign in</a></li>
<li class="active"><a href="#" class="">New account</a></li>
</ul>
<div class="p15">
<form role="form" action="<%=request.getContextPath()%>/RegistrationServlet?flag=insert" method="post">
<input type="text" class="form-control input-lg mb25" name="uname" placeholder="Designer Name" autofocus>
<input type="text" class="form-control input-lg mb25" name="dname" placeholder="Display Name">
<input type="text" class="form-control input-lg mb25" name="email" placeholder="Email address">
<input type="text" class="form-control input-lg mb25" name="contact" placeholder="Contact Number">
<input type="password" class="form-control input-lg mb25" name="pwd" id="pwd_id" placeholder="Password">
<input type="password" class="form-control input-lg mb25" name="cpwd" placeholder="Confirm password"  onblur="checkpwd(this)">
<div class="show">
<label class="checkbox">
<input type="checkbox" value="remember-me">I accept
<a href="javascript:;">Sublime's</a>terms and conditions
</label>
</div>
<button class="btn btn-primary btn-lg btn-block" type="submit">Sign up</button>
</form>
</div>
</section>
<p class="text-center">
Copyright &copy;
<span id="year" class="mr5"></span>
<span>Sublime LLC</span>
</p>
</div>
</div>
</div>
</div>
<script type="text/javascript">
        var el = document.getElementById("year"),
            year = (new Date().getFullYear());
        el.innerHTML = year;
    </script>
</body>
</html>
