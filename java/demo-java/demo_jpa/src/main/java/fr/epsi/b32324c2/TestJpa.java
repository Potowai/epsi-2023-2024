package fr.epsi.b32324c2;

import fr.epsi.b32324c2.metier.Livre;

import javax.persistence.*;

public class TestJpa {

    public static void main(String[] args) {
        EntityManagerFactory emf = null;
        EntityManager entityManager = null;

        try {
            // Create EntityManagerFactory
            emf = Persistence.createEntityManagerFactory("pu-a1");

            // Create EntityManager
            entityManager = emf.createEntityManager();

            System.out.println("EntityManager isOpen() : " + entityManager.isOpen()); // Connect to the database
            String msg = "";
            // Perform database operations within a transaction if needed
            // Example: entityManager.getTransaction().begin();
            // ...
            entityManager.getTransaction().begin();
            Livre livre = new Livre(99, "Livre 99", "Alexis");
            if (entityManager.find(Livre.class, 99) != null) {
                msg = "Le livre existe déjà :/";
            } else {
                entityManager.persist(livre);
                msg = "Livre ajouté";
            }
            entityManager.getTransaction().commit();
            System.out.println(msg);


            // Commit the transaction if started
            // Example: entityManager.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close EntityManager
            if (entityManager != null && entityManager.isOpen()) {
                entityManager.close();
            }

            // Close EntityManagerFactory
            if (emf != null && emf.isOpen()) {
                emf.close();
            }
        }
    }
}
