<%
    if (session.getAttribute("connecte")!=null)  //déjà connecté
    {
%>
        <jsp:forward page="index.jsp" />
<%
    }
%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <%
        if (request.getAttribute("message")!=null)
        {
            out.println("<span class=\"errorMessage\">"+request.getAttribute("message")+"</span>");
        }
        String  us1 = request.getParameter("username");
        if (us1==null) us1="";
        else us1 = us1.trim();
        %>
        <form action="login.do" method="post"  >
            <input type="text" name="idUser"  /><br />
            <input type="password" name="motDePasse" /><br />
            <input type="submit" value=" OK " />
            <input type="hidden" name="action" value="login" />
        </form>
    </body>
</html>
