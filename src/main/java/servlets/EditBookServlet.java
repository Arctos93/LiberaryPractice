package servlets;

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

@WebServlet("/EditBookServlet")
public class EditBookServlet extends HttpServlet {


    BookRepository bookRepository = new BookRepository();
    AuthorRepository authorRepository = new AuthorRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("authors", authorRepository.findAll());
        request.setAttribute("category", Category.values());
        String bookId = request.getParameter("bookId");
        Book showBook = bookRepository.find(Long.valueOf(bookId));
        request.setAttribute("book",showBook);
        request.getRequestDispatcher("bookEdit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookId = request.getParameter("bookId");
        Book showBook = bookRepository.find(Long.valueOf(bookId));
        showBook.setTitle(request.getParameter("newTitle"));
        showBook.setCategory(Category.valueOf(request.getParameter("setCategory")));
        showBook.setAuthor(authorRepository.find(Long.valueOf(request.getParameter("authorId"))));
        showBook.setIsbn(request.getParameter("addIsbn"));
        showBook.setPages(Integer.parseInt(request.getParameter("addPages")));
        showBook.setReleasaDate(LocalDate.parse(request.getParameter("addDate")));
        showBook.setSummary(request.getParameter("addSummary"));

        bookRepository.save(showBook);
        response.sendRedirect("/HomeServlet");


    }
}


