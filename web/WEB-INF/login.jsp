<%-- 
    Document   : login
    Created on : 2015-10-25, 11:21:26
    Author     : user

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div id="formulaire1">
        <h2>Connexion</h2>
        <form id="login form" method="post">
<table>
<tr>
<td>
Nom Usager : 
<input type="text" id="NomUsager">
</input>
</td>
</tr>
<tr>
<td>
Mot de passe :  
<input type="text" id="Password">
</input>
</td>
</tr><tr>
<td>
Connect&eacute; en tant que :
<select>
<option>admin</option>
<option>professeur</option>
<option>etudiant</option>

</select>
</td>
</tr>

<tr>
<td>
<button id="Connexion" action="submit">Connexion</button>
</td>
</tr>
<tr>
<td>
<a href="" id="PasswordOublie">Mot Passe Oubli&eacute; </a>
</td>
</tr>
</tr>
</table>
</form>
    </body>
</html>
