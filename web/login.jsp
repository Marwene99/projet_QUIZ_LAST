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
         <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/form-elements.css">
        <link rel="stylesheet" href="css/style.css">
        
        <title>Page De connexion</title>
        <h1>  </h1>
         <h2>  </h2>
          <h1> </h1>
           <h1>  </h1>
    </head>
    <body>
        <%
        if (request.getAttribute("message")!=null)
        {
            out.println("<span class=\"errorMessage\">"+request.getAttribute("message")+"</span>");
        }
        String  us1 = request.getParameter("username");
        if (us1==null) us1="";
        else us1 = us1.trim();
        %>
              <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                  <div class="form-top">
                       <div class="form-top-left">
                        			<h3>Connecter-vouz a notre site</h3>
                            		<p>Entrez votre id utilisateur pour vous connecter :</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="login.do" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">nom utilisateur</label>
			                        	<input type="text" name="idUser"  placeholder="utilisateur..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">votre mot de passe</label>
			                        	<input type="password" name="motDePasse" placeholder="mot de passe..." class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="submit" class="btn">Connecter vouz!</button>
                                              
                                                <input type="hidden" name="action" value="login" />
			                    </form>
		                    </div>
                        </div>
                    </div>
        </form
    <script src="js/jquery-1.11.3.js"  ></script>
    <script src="js/scripts.js"></script>
     <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
