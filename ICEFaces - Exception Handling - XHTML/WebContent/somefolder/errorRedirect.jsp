<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	response.setContentType("text/xml;charset=UTF-8");
	response.setStatus(200);
	String error = request.getAttribute("javax.servlet.error.message")
			.toString().replace("java.lang.Exception: ", "");
	session.setAttribute("error_message", error);
	session.setAttribute("error_exception_type",
			request.getAttribute("javax.servlet.error.exception_type"));
	session.setAttribute("error_exception",
			request.getAttribute("javax.servlet.error.exception"));
	session.setAttribute("error_status_code",
			request.getAttribute("javax.servlet.error.status_code"));
	session.setAttribute("error_request_uri",
			request.getAttribute("javax.servlet.error.request_uri"));
	session.setAttribute("error_servlet_name",
			request.getAttribute("javax.servlet.error.servlet_name")); /*
																		RequestDispatcher requestDispatcher =
																		request.getRequestDispatcher("/somefolder/error.iface");
																		requestDispatcher.forward(request, response); */
	response.sendRedirect(request.getContextPath()
			+ "/somefolder/error.iface");
%>
