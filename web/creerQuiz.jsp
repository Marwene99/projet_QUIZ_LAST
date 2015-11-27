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

      <form id="formQuestion " role="form" action="creeQuest.do" method="post">      
          <div class="row row-offcanvas row-offcanvas-center">
            <div class="col-xs-6 col-sm-3">  <!--ce div permet de reduit la longeur du input-->
                    <label for="Question" class="col-md-12 control-label">Question:</label>
                    <input name="Question" type="Question" class="form-control"  placeholder="Question">
                    
                    <label for="Reponse" class="col-md-12 control-label">Reponse:</label>
                    <input name="Reponse" type="Reponse" class="form-control"  placeholder="Reponse">
                    
                    <button type="submit" class="btn">Cree cette Question</button>
                    <input type="hidden" name="action" value="creerQuestion" />   
        </div>
       </div>
    </form>
        <hr>
        
    </body>
</html>
