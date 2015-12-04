/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.projet.classe;



public class Quiz 
{

	private String  id, idQuestion, idUser, idCours;
        private int nbEssais, nbFautes;

	
	//constructeurs
	public Quiz(String id, String idQuestion, String idUser, String idCours,int nbEssais ,int nbFautes)
	{

		this.id = id;
		this.idQuestion = idQuestion;  
                this.idUser = idUser;  
                this.idCours = idCours;  
                  this.nbEssais = nbEssais;  
                    this.nbFautes = nbFautes;  


	}
        public Quiz(){}


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

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
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
