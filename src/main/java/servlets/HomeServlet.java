package servlets;

import lombok.SneakyThrows;
import model.Book;
import repository.BookRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {

    BookRepository bookRepository = new BookRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        bookRepository.cleanUp();
        List<Book> books = bookRepository.findAll();
        request.setAttribute("books",books);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

}
