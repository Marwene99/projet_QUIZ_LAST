package com.projet.classe;

public class User 
{
	private String  idUser, motDePasse, etat , nom , prenom;

	
	//constructeurs


    public User(String idUser, String motDePasse, String etat, String nom, String prenom) {
        this.idUser = idUser;
       // this.motDePasse = motDePasse;
        this.etat = etat;
        this.nom = nom;
        this.prenom = prenom;
    }

    public User(String idUser, String etat, String nom, String prenom) {
        this.idUser = idUser;
        this.etat = etat;
        this.nom = nom;
        this.prenom = prenom;
    }
        
        

    public User(String idUser) {
        this.idUser = idUser;
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }


    public String getEtat() {
        return etat;
    }

    public void setEtat(String etat) {
        this.etat = etat;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
        
	

	
	
	public String getMotDePasse()
	{
		return motDePasse;
	}
	
	public void setMotDePasse(String motDePasse)
	{
	   this.motDePasse = motDePasse;	
		
	}


	

}
