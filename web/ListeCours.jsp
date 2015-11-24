<%-- 
    Document   : ListeCours
    Created on : 2015-11-24, 08:37:21
    Author     : usager
--%>

<%-- 
    Document   : PageCours
    Created on : 2015-11-23, 14:24:16
    Author     : usager
--%>

<%@page import="com.projet.classe.Cours"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="com.projet.classe.Groupe"%>
<!DOCTYPE html>
<html lang="en">
  <head>
      <%
            Cours c = new Cours();
            c = (Cours) session.getAttribute("Cours");
            Groupe g = new Groupe();
            g = (Groupe) session.getAttribute("Groupe");
          
      %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><%= c.getIdCours()%></title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <h1><%=c.getIdCours()/*Nom du cours */%></h1>
    <ul>
        <li> Num&eacute;ro :<%= c.getIdCours() %></li>
        <li>Professeur :<%= c.getIdProf()%></li>
        <li>Dur&eacute;e :<%= g.getIdGroupe() %></li>
        
    </ul>
        <%
            if(session.getAttribute("EvalCours") != null){
                List<Groupe> listeG = new LinkedList<Groupe>();
                listeG = (List<Groupe>)session.getAttribute("Groupe");
                
                out.println();
                
                for(int i=0; i < listeG.size();i++){
                    if (c.getIdCours()==listeG.get(i).getIdCours()){
                    out.println("<div>");
                    out.println("les informations du groupe  : "+listeG.get(i).toString());
                    out.println("</div>");
                    }
                    else {
                        out.println("Aucun groupe dans ce cours ");
                    }
                }
            }
        %>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
	<script src="js/jquery-2.1.4.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
  
