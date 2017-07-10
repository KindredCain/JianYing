package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Plb;
import model.PlbDao;
import model.Tpb;

/**
 * Servlet implementation class PlbServlet
 */
@WebServlet({ "/PlbServlet", "/plb" })
public class PlbServlet extends HttpServlet {
	PlbDao dao = new PlbDao();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PlbServlet() {
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
		if (method.equals("add"))
			result = this.add(request);
		RequestDispatcher dispatcher = request.getSession().getServletContext().getRequestDispatcher(result);
		if (dispatcher != null)
			dispatcher.forward(request, response);
	}

	private String add(HttpServletRequest request) {
		try {
			Plb pl=new Plb();
			pl.setPlZh((String)request.getSession().getAttribute("Zh"));
			pl.setPlPId(Integer.valueOf(request.getParameter("pid")));
			pl.setPlMore(request.getParameter("more"));
			if(dao.createPl(pl))
				return "/tpb?method=more&pid="+pl.getPlPId();
			else
				throw new Exception("ÃÌº” ß∞‹");
		} 
		catch (Exception ex) {
			request.getSession().setAttribute("errormsg", ex.getMessage());
			return "/tpb?method=more&pid="+request.getParameter("pid");
		}
	}

}
