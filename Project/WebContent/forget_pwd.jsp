<!doctype html>
<html class="signin no-js" lang="">
<head>
 
<meta charset="utf-8">
<meta name="description" content="Flat, Clean, Responsive, application admin template built with bootstrap 3">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">
 
<title>Sublime - Web Application Admin Dashboard</title>
 
 
 
<script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"126a67a613b2b7ea3c88f874d195bef6",petok:"4d64833147129026c3953a6e4f8e79402d061070-1428498792-1800",zone:"nyasha.me",rocket:"0",apps:{"ga_key":{"ua":"UA-50530436-1","ga_bs":"2"}}}];CloudFlare.push({"apps":{"ape":"932813bb889de30193b479c69b4bf9f3"}});!function(a,b){a=document.createElement("script"),b=document.getElementsByTagName("script")[0],a.async=!0,a.src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=7e13c32551/cloudflare.min.js",b.parentNode.insertBefore(a,b)}()}}catch(e){};
//]]>
</script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/designer/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/designer/css/font-awesome.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/designer/css/themify-icons.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/designer/css/animate.min.css">
 
 
<link rel="stylesheet" href="<%=request.getContextPath() %>/designer/css/palette.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/designer/css/font.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/designer/css/main.css">
 
 
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.<%=request.getContextPath() %>/designer/js/1.4.2/respond.min.js"></script>
    <![endif]-->
 
<script src="<%=request.getContextPath() %>/designer/js/modernizr.js"></script>
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
</head>
<body class="bg-primary">
<div class="cover" style="background-image: url(img/cover3.jpg)"></div>
<div class="overlay bg-primary"></div>
<div class="center-wrapper">
<div class="center-content">
<div class="row">
<div class="col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
<section class="panel bg-white no-b">
<ul class="switcher-dash-action">
<li class="active"><a href="signin.html" class="selected">Sign in</a>
</li>
<li><a href="signup.html" class="">New account</a>
</li>
</ul>
<div class="p15">
<p class="text-center mb25">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>
<form role="form" action="<%=request.getContextPath()%>/sv_mail">
<input type="email" class="form-control input-lg mb25" placeholder="Email address" name="email" autofocus>
<input type="hidden" name="flag" value="forget">
<button class="btn btn-primary btn-lg btn-block" type="submit">Send Password Reset</button>
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
