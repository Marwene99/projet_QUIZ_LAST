<%-- 
    Document   : creerQuiz
    Created on : 2015-11-27, 08:54:32
    Author     : usager
--%>
  <!-- Jai changé ici le menu deroulant -->
<%@page import="com.projet.classe.Question"%>
<%@page import="java.util.List"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <script src="js/jquery-2.1.4.min.js"> </script>
    <head>
         <%
             
            List<Question> lq = new LinkedList<Question>();
            List<String> listeQuestionChoisi = new LinkedList<String>();
            String s1 ; 
            if (request.getSession() !=null){
            lq = (List<Question>)session.getAttribute("listeQ");
            
            }
             
      %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/cacher_footer.css" rel="stylesheet">
        <title>Crée votre quiz</title>
    </head>
    <style>
.ScrollStyle
{
    max-height: 200px;
    overflow-y: scroll;
    padding-bottom: 0px;
    padding-top: 0px;
}
#question {
 overflow-y: scroll;
}

    </style>
    
    <body>
        <div id='conteneur1'>
        <h3>apercu du questionnaire </h3>
        <div class="question" id="question"  >
           
            
                <div class="col-xs-2">  </div> <!--Garder ce div pour  ke lautre saffiche a droite-->
             <!--  liste des question choisies !-->
             <%/* for (int i=0;i<listeQuestionChoisi.size();i++) {
                 out.println("<li>");
                 out.print(listeQuestionChoisi.get(i).toString());
                 out.println("</li><button>retirer<button><br>");
             }*/
            %>
             
             
        </div>    
             
            
           
        </div>        
        <div id='conteneur2'>
         <h1 >Formulaire de creation de Quiz</h1>
         
        <!-- Search box Start -->
        
<form id="form1">
    <div class="well carousel-search hidden-sm">
        <div class="btn-group"> <a class="btn btn-default dropdown-toggle btn-select" data-toggle="dropdown" href="#">Choisir une question<span class="caret"></span></a>
            <ul  id="selection" class="dropdown-menu">
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
            <button type="button" id="btnSearch" class="btn btn-primary" >Ajouter Au Quiz</button>
        </div>
    </div>
</form>
<hr>
</div>
        <!--           modification -->  
                <h1>Formulaire de creation de question</h1>
<div id='conteneur3'>  
      <form class='form-box' role="form" action="creerquest.do" method="post">      
<!--          <div class="row row-offcanvas row-offcanvas-center">-->
            <div class="col-xs-6 col-sm-6">  <!--ce div permet de reduit la longeur du input-->
                    <label for="Question" class="col-md-12 control-label">Question:</label>
                    <input name="Question" type="Question" class="form-control"  placeholder="Question">
                    <label for="Reponse" class="col-md-12 control-label">Reponse:</label>
                    <input name="Reponse" type="Reponse" class="form-control"  placeholder="Reponse">
                    <button type="submit" class="btn">Cree cette Question</button>
                    <input type="hidden" name="action" value="CreerQuestion" />   
        </div>
<script>
 $(".dropdown-menu li a").click(function(){
  var selText = $(this).text();
  $(this).parents('.btn-group').find('.dropdown-toggle').html(selText+' <span  id="selection" class="caret"></span>');
});
$("#btnSearch").click(function(){
//    var temp = document.getElementById("a").text;
//	//$("#a").html($('.btn-select').text());
//        alert("all"+ temp);
//        temp += "\n"+ $('.btn-select').text();
    var temp = document.getElementById("question");
	//$("#a").html($('.btn-select').text());
        //alert("all "+ temp.html() );
        temp.innerHTML += "<br>"+ $('.btn-select').text();
        alert("check la rep "+temp.text);


});
</script>
<!--       </div>-->
    </form> 
</div>
</body>
</html>
