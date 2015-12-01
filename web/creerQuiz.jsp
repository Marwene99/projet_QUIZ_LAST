<%-- 
    Document   : creerQuiz
    Created on : 2015-11-27, 08:54:32
    Author     : usager
--%>

<%@page import="com.projet.classe.Question"%>
<%@page import="java.util.List"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%
            List<Question> lq = new LinkedList<Question>();
            lq = (List<Question>)session.getAttribute("listeQ");   
          
      %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<!--           modification -->
                <h1>Formulaire de creation de question</h1>

      <form id="formQuestion " role="form" action="creerquest.do" method="post">      
          <div class="row row-offcanvas row-offcanvas-center">
            <div class="col-xs-6 col-sm-3">  <!--ce div permet de reduit la longeur du input-->
                    <label for="Question" class="col-md-12 control-label">Question:</label>
                    <input name="Question" type="Question" class="form-control"  placeholder="Question">
                    
                    <label for="Reponse" class="col-md-12 control-label">Reponse:</label>
                    <input name="Reponse" type="Reponse" class="form-control"  placeholder="Reponse">
                    
                    <button type="submit" class="btn">Cree cette Question</button>
                    <input type="hidden" name="action" value="CreerQuestion" />   
        </div>
       </div>
    </form>
        <hr>
         <h1>Formulaire de creation de Quiz</h1>
        <!-- Search box Start -->
<form>
    <div class="well carousel-search hidden-sm">
        <div class="btn-group"> <a class="btn btn-default dropdown-toggle btn-select" data-toggle="dropdown" href="#">Choisir une question<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <%   for(int i= 0;i<lq.size();i++ ){ %>
                
                <%=
                    "<li><a><span class=\"glyphicon glyphicon-star\"></span> "+lq.get(i).getTxtQuestion()+"</a></li>"
                %>
                        
                        
                        
                 <%
                    }
                 %>
            </ul>
        </div>
        <div class="btn-group">
            <button type="button" id="btnSearch" class="btn btn-primary">Ajouter Au Quiz</button>
        </div>
    </div>
</form>
<script src="js/jquery-1.11.1.js"></script>
    </body>
</html>
