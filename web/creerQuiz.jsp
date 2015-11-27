<%-- 
    Document   : creerQuiz
    Created on : 2015-11-27, 08:54:32
    Author     : usager
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
                <h1>Formulaire de creation de question</h1>
    <div id="formCreerQuestion">
      <form role="form" action="creeQuest.do" method="post">      
          <div class="row row-offcanvas row-offcanvas-center">
            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">  <!--ce div permet de reduit la longeur du input-->
                <div class="list-group">
                    <label for="Question" class="col-md-12 control-label">Question:</label>
                    <input type="Question" class="form-control" id="inputEmail" placeholder="Question">
                    <label for="Reponse" class="col-md-12 control-label">Reponse:</label>
                    <input type="Reponse" class="form-control" id="inputEmail" placeholder="Reponse">
                    <button type="submit" class="btn">Cree cette Question</button>
                    <input type="hidden" name="action" value="creerQuestion" />
          </div>
        </div>
       </div>
    </form>
  </div>
        <hr>
        
    </body>
</html>
