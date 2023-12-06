package fr.epsi.b32324c2.metier;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;

@Entity
@Table(name = "LIVRE")
public class Livre {

    @Id
    @Column(name = "ID")
    private int id;

    @Column(name = "TITRE")
    private String titre;

    @Column(name = "AUTEUR")
    private String auteur;

    // Constructors, getters, and setters

    public Livre() {
    }

    public Livre(int id, String titre, String auteur) {
        this.id = id;
        this.titre = titre;
        this.auteur = auteur;
    }


    // Getter and Setter methods

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getAuteur() {
        return auteur;
    }

    public void setAuteur(String auteur) {
        this.auteur = auteur;
    }

    // toString method

    @Override
    public String toString() {
        return "Livre [id=" + id + ", titre=" + titre + ", auteur=" + auteur + "]";
    }
}
