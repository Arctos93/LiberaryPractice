package servlets;

import model.Book;
import model.BookAction;
import org.hibernate.tool.schema.Action;
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookAction action = BookAction.valueOf(request.getParameter("action"));
        Long bookId = Long.valueOf(request.getParameter("bookId"));

        switch (action) {
            case ADD:
                response.sendRedirect("/BookAdding");
                break;
            case EDIT:
                response.sendRedirect("/EditBookServlet?bookId" + bookId);
                break;
            case SHOW:
                response.sendRedirect("/ShowBooksDetailServlet?bookId" + bookId);
                break;
            case DELETE:

                response.sendRedirect("/HomeServlet");
                break;
            default:
                throw new UnsupportedOperationException("no action");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Book> books = bookRepository.findAll();
        request.setAttribute("books", books);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

}
