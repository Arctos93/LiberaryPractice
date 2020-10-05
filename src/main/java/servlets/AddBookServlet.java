package servlets;

import model.Author;
import model.Book;
import model.Category;
import repository.AuthorRepository;
import repository.BookRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

@WebServlet("/BookAdding")
public class AddBookServlet extends HttpServlet {

    BookRepository bookRepository = new BookRepository();
    AuthorRepository authorRepository = new AuthorRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("authors", authorRepository.findAll());
        request.setAttribute("category", Category.values());
        request.getRequestDispatcher("bookAdding.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Book newBook = new Book();
        newBook.setTitle(request.getParameter("newTitle"));
        newBook.setCategory(Category.valueOf(request.getParameter("setCategory")));
        newBook.setAuthor(authorRepository.find(Long.valueOf(request.getParameter("authorId"))));
        newBook.setIsbn(request.getParameter("addIsbn"));
        newBook.setPages(Integer.parseInt(request.getParameter("addPages")));
        newBook.setReleasaDate(LocalDate.parse(request.getParameter("addDate")));
        newBook.setSummary(request.getParameter("addSummary"));

        bookRepository.save(newBook);
        response.sendRedirect("/HomeServlet");


    }
}
