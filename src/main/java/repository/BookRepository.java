package repository;

import model.Author;
import model.Book;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.util.List;

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

    public void edit(Book book) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.merge(book);
        transaction.commit();
    }

    public Book find(Long id){
        return entityManager.find(Book.class, id);
    }


    public void delete(Long bookId) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.remove(find(bookId));
        transaction.commit();
    }

    public void cleanUp() {
        entityManager.close();
        managerFactory.close();

    }

    public List<Book> findAll(){
        return entityManager.createQuery("select b from Book b" , Book.class).getResultList();
    }
}
