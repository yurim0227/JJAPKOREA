package jjapkorea.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jjapkorea.member.model.service.MemberService;
import jjapkorea.member.model.vo.MemberVo;
import jjapkorea.member.model.vo.PersonVo;

/**
 * Servlet implementation class DoPSignServlet
 */
@WebServlet("/psignup.do")
public class DoPSignServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoPSignServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("idcheck");
		String mpw = request.getParameter("M_Pwd");
		MemberVo vo = new MemberVo(mid, mpw);
		MemberService service = new MemberService();
		int result = service.pSignup(vo);
		
		String pname = request.getParameter("M_Name");
		String pemail = request.getParameter("M_Email");
		String pphone = request.getParameter("M_Phone");
		PersonVo vo2 = new PersonVo(mid, pname, pemail, pphone);
		int result2= service.personSignup(vo2);
		response.sendRedirect(request.getContextPath()+"/index");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
