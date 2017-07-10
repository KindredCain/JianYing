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

import model.*;

/**
 * Servlet implementation class TpbServlet
 */
@WebServlet({ "/TpbServlet", "/tpb" })
public class TpbServlet extends HttpServlet {
	TpbDao dao=new TpbDao();
	PlbDao plbdao = new PlbDao();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TpbServlet() {
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
		if (method.equals("select"))
			result = this.select(request);
		else if (method.equals("more"))
			result = this.more(request);
		else if (method.equals("selectSC"))
			result = this.selectSC(request);
		else if (method.equals("selectGZ"))
			result = this.selectGZ(request);
		RequestDispatcher dispatcher = request.getSession().getServletContext().getRequestDispatcher(result);
		if (dispatcher != null)
			dispatcher.forward(request, response);
	}

	private String more(HttpServletRequest request) {
		try {
			Tpb result=new Tpb();
			result=dao.selectTpMore(Integer.valueOf(request.getParameter("pid")));
			List<Plb> pl=new ArrayList<Plb>();
			pl=plbdao.selectPl(result.getPid());
			request.setAttribute("obj", result);
			request.setAttribute("objlist", pl);
			return "/picture.jsp";
		} 
		catch (Exception ex) {
			request.getSession().setAttribute("errormsg", ex.getMessage());
			return "/index.jsp";
		}
	}

	private String select(HttpServletRequest request) {
		try {
			List<Tpb> result=new ArrayList<Tpb>();
			result=dao.selectTp();
			request.setAttribute("objlist", result);
			return "/index.jsp";
		} 
		catch (Exception ex) {
			request.getSession().setAttribute("errormsg", ex.getMessage());
			return "/login.jsp";
		}
	}
	
	private String selectSC(HttpServletRequest request) {
		try {
			List<Tpb> result=new ArrayList<Tpb>();
			result=dao.selectSC((String)request.getSession().getAttribute("Zh"));
			request.setAttribute("objlist", result);
			return "/index.jsp";
		} 
		catch (Exception ex) {
			request.getSession().setAttribute("errormsg", ex.getMessage());
			return "/login.jsp";
		}
	}
	
	private String selectGZ(HttpServletRequest request) {
		try {
			List<Tpb> result=new ArrayList<Tpb>();
			result=dao.selectGZ((String)request.getSession().getAttribute("Zh"));
			request.setAttribute("objlist", result);
			return "/index.jsp";
		} 
		catch (Exception ex) {
			request.getSession().setAttribute("errormsg", ex.getMessage());
			return "/login.jsp";
		}
	}

}
