package servlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import hibernate.HibernateUtil;
import model.*;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		String result = "";
		if (method.equals("gz"))
			result = this.gz(request);
		else if (method.equals("sc"))
			result = this.sc(request);
		RequestDispatcher dispatcher = request.getSession().getServletContext().getRequestDispatcher(result);
		if (dispatcher != null)
			dispatcher.forward(request, response);
	}

	private String gz(HttpServletRequest request) {
		try {
			Gzb gz=new Gzb();
			gz.setGzZhId((String)request.getSession().getAttribute("Zh"));
			gz.setGzZh(request.getParameter("gzzh"));
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			org.hibernate.Transaction tx = session.beginTransaction();
			session.save(gz);
			tx.commit();
			return "/tpb?method=more&pid="+request.getParameter("pid");
		} 
		catch (Exception ex) {
			request.getSession().setAttribute("errormsg", ex.getMessage());
			return "/login.jsp";
		}
	}
	
	private String sc(HttpServletRequest request) {
		try {
			Scb sc=new Scb();
			sc.setScZhId((String)request.getSession().getAttribute("Zh"));
			sc.setScPId(Integer.valueOf(request.getParameter("pid")));
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			org.hibernate.Transaction tx = session.beginTransaction();
			session.save(sc);
			tx.commit();
			return "/tpb?method=more&pid="+request.getParameter("pid");
		} 
		catch (Exception ex) {
			request.getSession().setAttribute("errormsg", ex.getMessage());
			return "/login.jsp";
		}
	}
	
}
