package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.BeanClass;
import com.Dao.QueryClass;

/**
 * Servlet implementation class ServletClass
 */
@WebServlet("/ServletClass")
public class ServletClass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		PrintWriter out = response.getWriter();

		if (action.equalsIgnoreCase("signup")) {
			BeanClass bc = new BeanClass();
			bc.setFname(request.getParameter("First Name"));
			bc.setLname(request.getParameter("Last Name"));
			bc.setMb(request.getParameter("phonenumber"));
			bc.setPass(request.getParameter("Password"));
			bc.setEmail(request.getParameter("E-mail"));
			bc.setBd(request.getParameter("date"));
			bc.setGen(request.getParameter("gender"));
			BeanClass b = QueryClass.CheckMoblie(bc);
			if (b == null) {
				QueryClass.insert(bc);
				request.getRequestDispatcher("Signup.jsp").forward(request, response);
			} else {
				out.print("Number All ready Registred");
				System.out.println("number Registred");
				response.sendRedirect("Signup.jsp");
			}

		} else if (action.equalsIgnoreCase("Login")) {
			BeanClass bc = new BeanClass();
			bc.setMb(request.getParameter("Mobile No"));
			bc.setPass(request.getParameter("Password"));
			String mob = request.getParameter("Mobile No");
			String ps = request.getParameter("Password");
			BeanClass b = QueryClass.CheckLogin(bc);
			System.out.println(b);
			if (mob.equalsIgnoreCase("") || ps.equalsIgnoreCase("")) {
				System.out.println("Enter the Moblie and password");
			} else if (b == null) {
				out.println("Invaid input");
				// request.getRequestDispatcher("Login.html").forward(request, response);
			} else {
				HttpSession ss = request.getSession();
				ss.setAttribute("b", b);
				request.getRequestDispatcher("UserHome.jsp").forward(request, response);
			}
		} else if (action.equalsIgnoreCase("Send money to another user")) {
			System.out.println("Send money To another  user called");

			request.getRequestDispatcher("Sendmoney.jsp").forward(request, response);

		} else if (action.equalsIgnoreCase("Send money")) {
			System.out.println("Sendmoney Action called");
			String ID = request.getParameter("id");
			String a = request.getParameter("Wallet");
			System.out.println(ID);
			System.out.println(a);
			int Id = Integer.parseInt(ID);
			Double d = Double.parseDouble(a);
			System.out.println(d + " " + Id);

			BeanClass bc = new BeanClass();
			bc.setMb(request.getParameter("sendmoneyuser"));
			String add = request.getParameter("sendmoneyinput");
			BeanClass b = QueryClass.SendMoney(bc);
			int id = b.getId();
			Double bal1 = Double.parseDouble(b.getBal());
			Double bal2 = Double.parseDouble(add);

			double dif = d - bal2;
			if (dif < 0) {

				request.getRequestDispatcher("Sendmoney.jsp").forward(request, response);

			} else {
				double sum = bal1 + bal2;

				String Sub = Double.toString(dif);
				String bal = Double.toString(sum);

				QueryClass.SubData(Id, Sub);
				QueryClass.AddData(id, bal);
				System.out.println(bal);
				out.println(bal);
				request.getRequestDispatcher("UserHome.jsp").forward(request, response);
			}

		} else if (action.equalsIgnoreCase("Logout")) {
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
	}

}
