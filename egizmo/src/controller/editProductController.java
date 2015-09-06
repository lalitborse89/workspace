package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AuthDAO;
import model.Product;

/**
 * Servlet implementation class UpdateProductController
 */
@WebServlet("/editProductController")
public class editProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editProductController() {
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
		// TODO Auto-generated method stub
		
		String name = request.getParameter("name");
		float cost = Float.parseFloat(request.getParameter("cost"));
		float shippingCost = Float.parseFloat(request.getParameter("shippingCost"));
		String imagePath = request.getParameter("imagePath");
		String category = request.getParameter("category");
		PrintWriter out = response.getWriter();
		RequestDispatcher rd = null;
		
		int productId =  Integer.parseInt(request.getParameter("productId"));
		System.out.println("edit"+productId);
		Product p = new Product();
		int i;
		try {
			i = AuthDAO.updateProductById(productId,name,cost,shippingCost,imagePath,category);
			
			if(i>0)
			{
				// Getting form Parameters	
				rd = getServletContext().getRequestDispatcher("/DemoSeller.jsp");
				rd.forward(request, response);
				
				
			
			}else
			{
				out.print("Update Failed");
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
