<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>

<html>
  <head>
    <title><decorator:title default="Treina Dog"/></title>
    
     <script type="text/javascript" src="${path}/javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/javascripts/application.js"></script>
    
    <script type="text/javascript" src="${path}/javascripts/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${path}/javascripts/js/jquery-ui-1.10.2.custom.min.js"></script>
    <script type="text/javascript" src="${path}/javascripts/js/jquery.flot.js"></script>
    <script type="text/javascript" src="${path}/javascripts/js/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="${path}/javascripts/js/jquery.flot.stack.js"></script>
    <script type="text/javascript" src="${path}/javascripts/js/jquery.knob.js"></script>
    <script type="text/javascript" src="${path}/javascripts/js/theme.js"></script>
    
    <link rel="stylesheet" type="text/css" href="${path}/stylesheets/application.css"/>
    
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
      <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css' />
    <decorator:head/>
  </head>
  <body>
  
<c:if test="${userSession.logged }">
   <!-- navbar -->
    <header class="navbar navbar-inverse" role="banner">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.html">
            <img src="${path}/images/icone_dog.png" alt="logo">
           Treina Dog
            </a>
        </div>
        <ul class="nav navbar-nav pull-right hidden-xs">
            <li class="hidden-xs hidden-sm navbar-brand">
            
Olá, ${userSession.usuario.nome} 
            </li>
            <li>
	            <a href="${path}/logout" class="btn btn-default">Logout</a>
            </li>
        </ul>
    </header>
    <!-- end navbar -->
    
    <!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
            <li class="active">
                <div >
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="<c:url value="/index"/>">
                <i class="fa fa-home"></i>
                    <span>Home</span>
                </a>
            </li> 
            <li>
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="<c:url value="/pessoas"/>">
                <i class="fa fa-group"></i>
                    <span>Pessoas</span>
                </a>
            </li> 
            <li>
                <div>
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="index.html">
                <i class="fa fa-github-alt"></i>
                    <span>Cães</span>
                </a>
            </li> 
            <li>
                <div>
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="index.html">
                <i class="fa fa-calendar"></i>
                    <span>Agenda</span>
                </a>
            </li> 
            <li>
                <div>
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="index.html">
                <i class="fa fa-hand-o-right"></i>
                    <span>Comandos</span>
                </a>
            </li>
             
            <li>
                <div>
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="index.html">
                <i class="fa fa-file-text-o"></i>
                    <span>Relatórios</span>
                </a>
            </li> 
            
                       
        </ul>
    </div>
    
</c:if>

    <div class="content" id="content">

    <decorator:body/>
  </body>
</html>

