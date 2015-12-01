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
<!--           modification -->
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
        <!-- Search box Start -->
<form>
    <div class="well carousel-search hidden-sm">
        <div class="btn-group"> <a class="btn btn-default dropdown-toggle btn-select" data-toggle="dropdown" href="#">Select a Country <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">United States</a></li>
                <li><a href="#">Canada</a></li>
                <li class="divider"></li>
                <li><a href="#"><span class="glyphicon glyphicon-star"></span> Other</a></li>
            </ul>
        </div>
        <div class="btn-group"> <a class="btn btn-default dropdown-toggle btn-select2" data-toggle="dropdown" href="#">Select a Region <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">California</a></li>
                <li><a href="#">New York</a></li>
                <li><a href="#">Massachusetts</a></li>
                <li class="divider"></li>
                <li><a href="#">Quebec</a>
                </li><li><a href="#">Ontario</a>
                </li><li><a href="#">British Columbia</a>
                </li>
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
