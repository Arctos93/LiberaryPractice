package repository;

import model.Book;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class BookRepository {

    private EntityManagerFactory managerFactory;
    private EntityManager entityManager;

    public BookRepository() {
        managerFactory = Persistence.createEntityManagerFactory("LibraryPracticeUnit");
        entityManager = managerFactory.createEntityManager();
    }

    public void save(Book book) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.persist(book);
        transaction.commit();
    }

    public void cleanUp() {
        entityManager.close();
        managerFactory.close();
    }
}
