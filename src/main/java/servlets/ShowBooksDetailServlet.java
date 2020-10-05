package servlets;

import model.Book;
import model.Category;
import repository.BookRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ShowBooksDetailServlet")
public class ShowBooksDetailServlet extends HttpServlet {

    BookRepository bookRepository = new BookRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookId = request.getParameter("bookId");
        Book showBook = bookRepository.find(Long.valueOf(bookId));
        request.setAttribute("book",showBook);
        request.getRequestDispatcher("/showBooksDetail.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
