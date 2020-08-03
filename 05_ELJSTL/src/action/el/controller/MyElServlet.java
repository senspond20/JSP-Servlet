package action.el.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.model.vo.Person;

/**
 * Servlet implementation class MyElServlet
 */
@WebServlet("/myEl.do")
public class MyElServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyElServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
//		System.out.println("안녕");
		String name = request.getParameter("name");
		char gender = request.getParameter("gender").charAt(0);
		int age = Integer.parseInt(request.getParameter("age"));
		String beverage = request.getParameter("beverage");
		String products[] = request.getParameterValues("products");
		String book = request.getParameter("book");
		String movie = request.getParameter("movie");
		
		// 다 받아오신 분만 조용히 짐 싸주세요.
		// 금요일에는 바로 여기서부터 시작하겠습니다. ! 수고하셨어요~
		
		
		Person rosemary = new Person(name,gender,age);
		request.setAttribute("person", rosemary);
		request.setAttribute("beverage", beverage);
		request.setAttribute("year", 2020);
		request.setAttribute("products", products);
		
		// Session Scope
		HttpSession session = request.getSession();
		session.setAttribute("book", book);
		
		// Application Scope
		ServletContext application = request.getServletContext();
		application.setAttribute("movie", movie);
		
		//
		request.setAttribute("beverage", "아메리카노");
		session.setAttribute("beverage", "핫식스");
		application.setAttribute("beverage", "몰");
		
		request.getRequestDispatcher("/02_el/01_2_elEnd.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
