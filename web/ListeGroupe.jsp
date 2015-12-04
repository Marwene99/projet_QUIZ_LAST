<%-- 
    Document   : ListeGroupe
    Created on : 2015-11-24, 11:15:49
    Author     : usager
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="com.projet.classe.Groupe"%>
<%@page import="com.projet.classe.Cours"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link href="css/style.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List<Groupe> lg = new LinkedList<Groupe>();
            lg = (List<Groupe>)session.getAttribute("listeG");
            
            
           
        %>
        <meta charset="utf-8">
        
      <div id="conteneur">
       <h1>la liste des groupes dans le cours </h1>      
    <table class="table table-condensed">
            <thead>
                     <tr>
                         <th>numero du cours</th>
                         <th>numero du groupe </th>
                         <th>nom de l'enseignant </th>
                         <th>Nombre d'étudiant </th>
                         <th>Moyenne du groupe </th>
                         <th>Ecart-Type </th>
                        <th>Medianne </th>
                    </tr>
            </thead>
            <tbody>
                  <%
                  for (int i=0;i<lg.size();i++){    
            out.println("<tr><td>"+lg.get(i).getIdCours()+"</td><td>"+lg.get(i).getIdGroupe()+"</td><td>"+lg.get(i).getIdUser()+"</td><td>"+lg.get(i).getTailleMax()
            +"</td><td>"+lg.get(i).getMoyenneGroupe()+"</td><td>"+lg.get(i).getEcartType()+"</td><td>"+lg.get(i).getMedianne()+"</td></tr>");
            }
            %>
   
            </tbody>
        </table>
      </div>
    </body>
</html>
