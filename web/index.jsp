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
         <link href="css/style.css" rel="stylesheet">
</head>

<%
    if (session.getAttribute("connecte")==null) // n'est pas connecter 
    {
%>
        <jsp:forward page="login.jsp" />
<%
    }
%>
  <jsp:include page="banner.jsp" />
<body>
            <%
    
    if (session.getAttribute("connecte")!=null && request.getParameter("actionPage") == null) {//est  connecter
    
%>
        <jsp:include page="accueil.jsp" />
 <%
        } if(request.getParameter("actionPage")!=null){
          String actionPage = request.getParameter("actionPage");

       if ("afficherCours".equals(actionPage)) {
%>
        <jsp:include page="ListeCours.jsp" />
<%
    } if ("afficherGroupe".equals(actionPage)) {
 %>      
       <jsp:include page="ListeGroupe.jsp" />
 <%    
        }if("creerQuestion".equals(actionPage)){
            %>
               <jsp:include page="creerQuiz.jsp" />
<%
        }     
       }
%>




	<script src="js/jquery-2.1.4"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
    <jsp:include page="footer.jsp" />
    </body>
</html>
