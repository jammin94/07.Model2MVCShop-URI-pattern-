<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import = "com.model2.mvc.service.product.ProductService" %>
<%@ page import = "com.model2.mvc.service.product.impl.ProductServiceImpl" %>

<html>
<head>

<title>열어본 상품 보기</title>

</head>
<body>
	당신이 열어본 상품을 알고 있다
<br>
<br>
<%
	request.setCharacterEncoding("euc-kr");
	response.setCharacterEncoding("euc-kr");
	//ProductService productService = new ProductServiceImpl();
	String history = null;
	Cookie[] cookies = request.getCookies();
	if (cookies!=null && cookies.length > 0) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie cookie = cookies[i];
			if (cookie.getName().equals("history")) {
				history = cookie.getValue();
			}
		}
		if (history != null) {
			String[] h = history.split("!");
			for (int i = 0; i < h.length; i++) {
				if (!h[i].equals("null")) {
					System.out.println(h[i]);
					//String prodName=productService.getProduct(Integer.parseInt(h[i])).getProdName();
					
%>
<a href="/product/getProduct/<%=h[i]%>"
	target="rightFrame"><%= h[i]%></a>
<br>
<%
				}
			}
		}
	}
%>

</body>
</html> --%>


<%@ page contentType="text/html; charset=EUC-KR" %>

<html>
<head>

<title>열어본 상품 보기</title>

</head>
<body>
	당신이 열어본 상품을 알고 있다!
<br>
<br>
<%
	request.setCharacterEncoding("euc-kr");
	response.setCharacterEncoding("euc-kr");
	String history = null;
	System.out.println(1);
	Cookie[] cookies = request.getCookies();
	if (cookies!=null && cookies.length > 0) {
		System.out.println(2);
		for (int i = 0; i < cookies.length; i++) {
			System.out.println(3);
			Cookie cookie = cookies[i];
			System.out.println(cookie.getName());
			if (cookie.getName().equals("history")) {
				System.out.println(4);
				history = cookie.getValue();
			}
		}
		if (history != null) {
			System.out.println(5);
			String[] h = history.split("!");
			for (int i = 0; i < h.length; i++) {
				if (!h[i].equals("null")) {
					System.out.println(6);
%>
<a href="/product/getProduct/<%=h[i]%>"	target="rightFrame"><%=h[i]%></a>
<br>
<%
				}
			}
		}
	}
%>

</body>
</html>