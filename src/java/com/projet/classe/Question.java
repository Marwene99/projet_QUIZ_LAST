/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.projet.classe;

/**
 *
 * @author usager
 */
public class Question {
    	private String  idQuestion, txtQuestion, reponse ;

    public Question(String idQuestion, String txtQuestion, String reponse) {
        this.idQuestion = idQuestion;
        this.txtQuestion = txtQuestion;
        this.reponse = reponse;
    }
    public Question(){
    
    }
    public String getIdQuestion() {
        return idQuestion;
    }

    public void setIdQuestion(String idQuestion) {
        this.idQuestion = idQuestion;
    }

    public String getTxtQuestion() {
        return txtQuestion;
    }

    public void setTxtQuestion(String txtQuestion) {
        this.txtQuestion = txtQuestion;
    }

    public String getReponse() {
        return reponse;
    }

    public void setReponse(String reponse) {
        this.reponse = reponse;
    }
        
}
