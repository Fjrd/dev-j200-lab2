import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/calc")
public class CalcServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter writer = resp.getWriter();
        String b1 = req.getParameter("sum");
        String b2 = req.getParameter("mult");
        Double n1 = Double.parseDouble(req.getParameter("n1"));
        Double n2 = Double.parseDouble(req.getParameter("n2"));
        String ansver = "Bad number(s)";
        if (b1 != null){
            ansver = String.valueOf(n1 + n2);
        }
        if (b2 != null){
            ansver = String.valueOf(n1 * n2);
        }
        req.setAttribute("msg", ansver);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
