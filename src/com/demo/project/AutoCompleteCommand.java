package com.demo.project;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AutoCompleteCommand {
  public void actualJob(HttpServletRequest request,
          HttpServletResponse response) throws ServletException, IOException{
	  RequestDispatcher requetsDispatcherObj =request.getRequestDispatcher("/landingPage.jsp");
	  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	  response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	  response.setHeader("Expires", "0"); // Proxies.
	  requetsDispatcherObj.forward(request, response);
  }
}
