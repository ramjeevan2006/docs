package com.demo.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontServlet
 */
@WebServlet("/FrontServlet")
public class FrontServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	private Map<String, EmployeeVO> dataSourceMap;

	public FrontServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init() throws ServletException {
		ServletContext sc = getServletContext();
		dataSourceMap = AppDataBuilder.buildBasicData();
		sc.setAttribute("empDataSource", dataSourceMap);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AutoCompleteCommand command = new AutoCompleteCommand();
		command.actualJob(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String isFrom;
		if (request.getParameter("psID") != null
				&& !request.getParameter("psID").equals("")) {
			isFrom = request.getParameter("isFrom");
			EmployeeVO addVO = new EmployeeVO(request.getParameter("name"),
					Long.valueOf(request.getParameter("psID")),
					Long.valueOf(request.getParameter("phoneNo")),
					request.getParameter("address"),
					request.getParameter("grade"), 0,
					request.getParameter("gender"));
			dataSourceMap.put(request.getParameter("name"), addVO);
			reponseBack(response, isFrom);
			response.setHeader("Cache-Control",
					"no-cache, no-store, must-revalidate"); // HTTP 1.1.
			response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
			response.setHeader("Expires", "0"); // Proxies.
		}
	}

	public void destroy() {
		// do nothing.
	}

	private HttpServletResponse reponseBack(HttpServletResponse response, String isFrom)
			throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title> Response</title>");
		out.println("</head>");
		out.println("<body>");
		if(isFrom.equalsIgnoreCase("fromEdit"))
		out.println("<br><br<br><h1> Employee updated successfully!!!</h1>");
		else
		out.println("<br><br<br><h1> Employee added successfully!!!</h1>");
		out.println("</body>");
		out.println("</html>");
		out.close();
		return response;

	}

}
