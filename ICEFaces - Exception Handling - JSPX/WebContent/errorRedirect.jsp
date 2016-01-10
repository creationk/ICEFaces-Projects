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
			request.getAttribute("javax.servlet.error.servlet_name"));
	response.sendRedirect(request.getContextPath()+"/error.iface");
%>
