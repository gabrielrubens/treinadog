<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>

<html>
  <head>
    <title><decorator:title default="Treina Dog"/></title>
    <link rel="stylesheet" type="text/css" href="${path}/stylesheets/application.css"/>
    <decorator:head/>
  </head>
  <body>
  

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">Treina Dog</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Logged in as <a href="#" class="navbar-link">Usuário</a>
            </p>
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">Sobre</a></li>
              <li><a href="#contact">Contato</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sidebar</li>
              <li class="active"><a href="#">Pessoa</a></li>
              <li class=""><a href="#">Cães</a></li>
              <li class=""><a href="#">Comandos</a></li>
              <li class=""><a href="#">Rotina de Treino</a></li>
              <li class=""><a href="#">Agenda</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="hero-unit">

    <decorator:body/>
    <script type="text/javascript" src="${path}/javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/javascripts/application.js"></script>
    <script type="text/javascript" src="${path}/javascripts/bootstrap.js"></script>
  </body>
</html>
