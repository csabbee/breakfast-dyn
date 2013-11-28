<%@ taglib tagdir="/WEB-INF/tags" prefix="b" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:url value="/" var="baseUrl"></c:url>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Break Time Webapp</title>
    
	<!-- Bootstrap core CSS -->
	<!-- slate,united,yeti,simplex,readable,amelia,cerulean,cosmo,cyborg,flatly,journal  -->
    <link href="http://netdna.bootstrapcdn.com/bootswatch/3.0.2/slate/bootstrap.min.css" rel="stylesheet">
    <link href="http://getbootstrap.com/2.3.2/assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="http://getbootstrap.com/examples/jumbotron/jumbotron.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container"><div class="navbar-collapse collapse">
          <div class="navbar-header">
            <!--<a class="navbar-brand" href="home">BreakTime</a>--!>
          </div>        
          <ul class="nav navbar-nav">
            <li><a href="${baseUrl}addfood.jsp">Add food</a></li>
          </ul>
          <form action="login" method="post" class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" name="username" placeholder="username" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </div>
    <div class="container">
    <div class="row">
    <div class="col12">