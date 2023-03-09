package com.example.project;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

@WebServlet("/cadastro")
public class Cadastro extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("nome");
        String mail = req.getParameter("email");
        String brand = req.getParameter("marca");
        String model = req.getParameter("modelo");
        String dateDeparture = req.getParameter("data_retirada");
        String dateReturn = req.getParameter("data_devolucao");

        LocalDate rentBegin = LocalDate.parse(dateDeparture);
        DateTimeFormatter dateRentFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        dateDeparture = rentBegin.format(dateRentFormatter);

        LocalDate rentEnd = LocalDate.parse(dateReturn);
        DateTimeFormatter dateReturnFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        dateReturn = rentEnd.format(dateReturnFormatter);

        long dailys = ChronoUnit.DAYS.between(rentBegin, rentEnd);
        double price = Preco.calculateValue(dailys);

        if (
                name.equals("") || mail.equals("")
                        || brand.equals("") || model.equals("")
                        || dateDeparture.equals("") || dateReturn.equals("")
        ) {
            resp.setContentType("text/html");
            resp.getWriter().println("<h3>Dados obrigatórios não preenchidos!</h3>");
        } else {
            req.setAttribute("nome", name);
            req.setAttribute("email", mail);
            req.setAttribute("marca", brand);
            req.setAttribute("modelo", model);
            req.setAttribute("data_retirada", dateDeparture);
            req.setAttribute("data_devolucao", dateReturn);
            req.setAttribute("diarias", dailys);
            req.setAttribute("preco", price);

            RequestDispatcher rd = req.getRequestDispatcher("data.jsp");
            rd.forward(req, resp);
        }
    }
}