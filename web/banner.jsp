<%-- 
    Document   : banner
    Created on : 2015-10-25, 12:07:44
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    
    <body>
       
   <ul class="navbar navbar-inverse navbar-nav navbar-fixed-top nav hidden-xs"  id="lg-menu"   >
    <li><a href="index.jsp"><i class="glyphicon glyphicon-paperclip"></i> Accueil</a></li>
    <li class="active"><a href='affichec.do?action=afficherCours'><i class="glyphicon glyphicon-list-alt"></i>Consulter la liste des cours</a></li>
    <li><a href="index.jsp?actionPage=creerQuestion"><i class="glyphicon glyphicon-list"></i>Cree un Cours</a></li>
    <li><a href="deconnecter.do?action=logout"><i class="glyphicon glyphicon-log-out"></i> Deconnecter</a></li>
</ul>
        
      <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="#">QUIZZ AVEC DEUX Z</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
       
<!--     ajouter des chose dans le banner  <li><a href="#">Link</a></li>-->
     
      </ul>

      <ul class="nav navbar-nav navbar-right"
        <li class="dropdown">
          <a href="deco.do?action=logout"  button="button-info" role="button" aria-haspopup="true" aria-expanded="false">Deconnexion </a>
    
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    </body>
</html>
