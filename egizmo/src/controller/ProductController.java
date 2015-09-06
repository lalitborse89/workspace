package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale.Category;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AuthDAO;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;

		// Getting form Parameters username,password,first last name and confirm pass
		String name = request.getParameter("name");
		float cost = Float.parseFloat(request.getParameter("cost"));
		float shippingCost = Float.parseFloat(request.getParameter("shippingCost"));
		String imagePath = request.getParameter("imagePath");
		String category = request.getParameter("category");
		
		int insertion;
		try {
			insertion = AuthDAO.enterNewProduct(name, cost, shippingCost, imagePath,category);

			// Get type of action form
			if (insertion == 0) {
				out.print("inserted");
				System.out.println("inserted");
				rd = getServletContext().getRequestDispatcher("/addProduct.jsp");
				rd.forward(request, response);
			}
			else {
				out.print("Not inserted");
				System.out.println("Not inserted");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



	}
}
