<%@ taglib tagdir="/WEB-INF/tags" prefix="b" %>

<c:url value="/" var="baseUrl"></c:url>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Food Order Webapp</title>
    
	<!-- Bootstrap core CSS -->
	<!-- slate,united,yeti,simplex,readable,amelia,cerulean,cosmo,cyborg,flatly,journal  -->
    <link href="http://netdna.bootstrapcdn.com/bootswatch/3.0.2/slate/bootstrap.min.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  
  
  <header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="/" class="navbar-brand">Food order</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
        <li><a href="${baseUrl}addfood.jsp">Add food</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li>
          <a href="../about">About</a>
        </li>
      </ul>
    </nav>
  </div>
</header>

    <div class="container">
    <div class="row">
    <div class="col12">