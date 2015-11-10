<%-- 
    Document   : index
    Created on : 2015-11-03, 10:44:52
    Author     : usager
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : index
    Created on : 2013-01-27, 11:07:50
    Author     : Marwene
--%>
<html>
<head>
        
         <meta charset="utf-8">
         <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<%
    if (session.getAttribute("connecte")==null) // n'est pas connecter 
    {
%>
        <jsp:forward page="login.jsp" />
<%
    }
%>

<body>
            <%
    if (session.getAttribute("connecte")!=null) //est  connecter
    {
%>
        <jsp:include page="accueil.jsp" />
<%
    }
%>





	<script src="js/jquery-2.1.4"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
      <div id="footer" class="box">
                <p class="f-left">&copy; 2015 <a href="#">Quiz pas de ZZ</a>, Tous les droits reservés &reg;</p>
       </div> <!-- /footer -->
    </body>
</html>
