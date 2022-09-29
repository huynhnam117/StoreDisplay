package Servlet;

import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> listCustomer = new ArrayList<Customer>();

        listCustomer.add(new Customer(1, "Huỳnh Văn A", "01/11/2003", "Việt Nam"));
        listCustomer.add(new Customer(2, "Huỳnh Văn B", "02/11/2003", "Lào"));
        listCustomer.add(new Customer(3, "Huỳnh Văn C", "03/11/2003", "Cam"));
        listCustomer.add(new Customer(4, "Huỳnh Văn D", "04/11/2003", "Tàu"));
        listCustomer.add(new Customer(5, "Huỳnh Văn E", "05/11/2003", "Xiêm"));
        request.setAttribute("customerListServlet", listCustomer);
        request.getRequestDispatcher("result.jsp").forward(request, response);

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
    }
}