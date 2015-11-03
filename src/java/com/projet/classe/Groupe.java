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
public class Groupe {
    private String idGroupe,idUser,IdCours;
    private double moyenneGroupe, noteEtudiant, ecartType,medianne;
    private int tailleMax;

    public Groupe(String idGroupe, String idUser, String IdCours, double moyenneGroupe, double noteEtudiant, double ecartType, double medianne, int tailleMax) {
        this.idGroupe = idGroupe;
        this.idUser = idUser;
        this.IdCours = IdCours;
        this.moyenneGroupe = moyenneGroupe;
        this.noteEtudiant = noteEtudiant;
        this.ecartType = ecartType;
        this.medianne = medianne;
        this.tailleMax = tailleMax;
    }

    public String getIdGroupe() {
        return idGroupe;
    }

    public void setIdGroupe(String idGroupe) {
        this.idGroupe = idGroupe;
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public String getIdCours() {
        return IdCours;
    }

    public void setIdCours(String IdCours) {
        this.IdCours = IdCours;
    }

    public double getMoyenneGroupe() {
        return moyenneGroupe;
    }

    public void setMoyenneGroupe(double moyenneGroupe) {
        this.moyenneGroupe = moyenneGroupe;
    }

    public double getNoteEtudiant() {
        return noteEtudiant;
    }

    public void setNoteEtudiant(double noteEtudiant) {
        this.noteEtudiant = noteEtudiant;
    }

    public double getEcartType() {
        return ecartType;
    }

    public void setEcartType(double ecartType) {
        this.ecartType = ecartType;
    }

    public double getMedianne() {
        return medianne;
    }

    public void setMedianne(double medianne) {
        this.medianne = medianne;
    }

    public int getTailleMax() {
        return tailleMax;
    }

    public void setTailleMax(int tailleMax) {
        this.tailleMax = tailleMax;
    }
    
    
    
}
