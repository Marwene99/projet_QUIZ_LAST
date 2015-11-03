/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.projet.classe;



public class Quiz 
{
	private String  id, idQuestion, idProf, idCours;
        private int nbEssais, nbFautes;

	
	//constructeurs
	public Quiz(String id, String idQuestion, String idProf, String idCours)
	{

		this.id = id;
		this.idQuestion = idQuestion;  
                this.idProf = idProf;  
                this.idCours = idCours;  
                  this.nbEssais = nbEssais;  
                    this.nbFautes = nbFautes;  


	}


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdQuestion() {
        return idQuestion;
    }

    public void setIdQuestion(String idQuestion) {
        this.idQuestion = idQuestion;
    }

    public String getIdProf() {
        return idProf;
    }

    public void setIdProf(String idProf) {
        this.idProf = idProf;
    }

    public String getIdCours() {
        return idCours;
    }

    public void setIdCours(String idCours) {
        this.idCours = idCours;
    }

    public int getNbEssais() {
        return nbEssais;
    }

    public void setNbEssais(int nbEssais) {
        this.nbEssais = nbEssais;
    }

    public int getNbFautes() {
        return nbFautes;
    }

    public void setNbFautes(int nbFautes) {
        this.nbFautes = nbFautes;
    }
        
	

	

}
