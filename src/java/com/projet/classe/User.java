package com.projet.classe;

public class User 
{
	private String  idUser, motDePasse, etat;

	
	//constructeurs
	public User(String id, String motDePasse)
	{

		this.idUser = id;
		this.motDePasse = motDePasse;  


	}

    public String getId() {
        return idUser;
    }

    public void setId(String id) {
        this.idUser = id;
    }

    public String getEtat() {
        return etat;
    }

    public void setEtat(String etat) {
        this.etat = etat;
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
