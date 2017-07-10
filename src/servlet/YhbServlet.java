package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.*;

/**
 * Servlet implementation class YhbServlet
 */
@WebServlet({ "/YhbServlet", "/yhb" })
public class YhbServlet extends HttpServlet {
	YhbDao dao=new YhbDao();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public YhbServlet() {
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
        if (method.equals("adduserresult"))
            result = adduserresult(request);
        else if (method.equals("logincheck"))
            result = this.logincheck(request);
        else if (method.equals("out"))
            result = this.out(request);
        else if (method.equals("select"))
            result = this.select(request);
        else if (method.equals("up"))
            result = this.up(request);
        RequestDispatcher dispatcher = request.getSession().getServletContext().getRequestDispatcher(result);
        if (dispatcher != null)
            dispatcher.forward(request, response);
	}

	private String logincheck(HttpServletRequest request) {
        try {
        	Yhb a=new Yhb();
        	Yhb b=new Yhb();
        	a.setZh(request.getParameter("zh"));
        	a.setPwd(request.getParameter("pwd"));
        	b=dao.chongfuZh(a.getZh());
        	if(b.getZh().equals("")){
        		request.setAttribute("Yh",a);
        		return "/sign.jsp";
        	}
        	else if(b.getZh().equals(a.getZh())&&b.getPwd().equals(a.getPwd())){
        		request.getSession().setAttribute("Zh",a.getZh());
        		return "/tpb?method=select";
        	}
        	else{
        		throw new Exception("密码错误或用户名已被注册");
        	}
        } 
        catch (Exception ex) {
        	request.getSession().setAttribute("errormsg", ex.getMessage());
            return "/login.jsp";
        }
    }

    private String adduserresult(HttpServletRequest request) {
        Yhb user = new Yhb();
        user.setZh(request.getParameter("zh"));
        user.setNc(request.getParameter("nc"));
        user.setPwd(request.getParameter("pwd"));
        user.setQq(request.getParameter("qq"));
        user.setDz(request.getParameter("dz"));
        user.setMore(request.getParameter("more"));
        user.setSf(request.getParameter("sf"));
        user.setFg(request.getParameter("fg"));
        try {
            if(dao.createYhb(user)){
            	request.getSession().setAttribute("Zh",user.getZh());
            	return "/tpb?method=select";
            }
            else
            	throw new Exception("注册失败");
        } 
        catch (Exception ex) {
        	request.getSession().setAttribute("errormsg", ex.getMessage());
            return "/login.jsp";
        }

    }
    
    private String out(HttpServletRequest request) {
    	request.getSession().invalidate();
        return "/login.jsp";
    }
	
    private String select(HttpServletRequest request) {
        try {
        	String zh=(String)request.getSession().getAttribute("Zh");
        	Yhb a=new Yhb();
        	a=dao.selectZh(zh);
        	request.setAttribute("obj", a);
        	return "/user.jsp";
        } 
        catch (Exception ex) {
        	request.getSession().setAttribute("errormsg", ex.getMessage());
            return "/login.jsp";
        }
    }
    
    private String up(HttpServletRequest request) {
        Yhb user = new Yhb();
        user.setZh(request.getParameter("zh"));
        user.setNc(request.getParameter("nc"));
        user.setPwd(request.getParameter("pwd"));
        user.setQq(request.getParameter("qq"));
        user.setDz(request.getParameter("dz"));
        user.setMore(request.getParameter("more"));
        user.setSf(request.getParameter("sf"));
        user.setFg(request.getParameter("fg"));
        try {
            if(dao.upYhb(user)){
            	request.setAttribute("obj", user);
            	return "/user.jsp";
            }
            else
            	throw new Exception("更新失败");
        } 
        catch (Exception ex) {
        	request.getSession().setAttribute("errormsg", ex.getMessage());
            return "/login.jsp";
        }

    }
}
