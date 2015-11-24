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
public class Cours {
    
    
    private String idCours, idProf,idDa;

    public Cours(){} // contructuer pas de parametre
    
    public Cours(String idCours, String idProf, String idDa) {
        this.idCours = idCours;
        this.idProf = idProf;
        this.idDa = idDa;
    }

    public String getIdCours() {
        return idCours;
    }

    public void setIdCours(String idCours) {
        this.idCours = idCours;
    }

    public String getIdProf() {
        return idProf;
    }

    public void setIdProf(String idProf) {
        this.idProf = idProf;
    }

    public String getIdDa() {
        return idDa;
    }

    public void setIdDa(String idDa) {
        this.idDa = idDa;
    }
    
    
    
}
