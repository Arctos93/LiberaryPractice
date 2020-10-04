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

@WebServlet("/BookAdding")
public class AddBookServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("category", Category.values());
        request.getRequestDispatcher("bookAdding.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Book newBook = new Book();
        newBook.setTitle(request.getParameter("newTitle"));
        newBook.setCategory(request.getParameter("setCategory"));
//        newBook.setAuthor("authorAddName");
//        newBook.setCategory(request.getParameter("authorAddLastName"));
        newBook.setIsbn(request.getParameter("addIsbn"));
        newBook.setPages(request.getParameter("addPages"));
        newBook.setSummary(request.getParameter("addSummary"));

    }
}
