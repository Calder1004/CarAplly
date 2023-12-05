package admin.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/dashboard.jsp")
public class AdminValidFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
    }
    
    // doFilter는 사용자가 dashboard.jsp로 그냥 접근했을시 수행되는 로직임
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        HttpSession session = httpRequest.getSession(false); // 세션이 존재하면 세션을 반환하고 아니면 null을 반환
        
        // session이 null 혹은 session.getAttribute가 userRole이 아니거나 userRole이 admin과 같지 않으면 
        if (session == null || session.getAttribute("userRole") == null || !session.getAttribute("userRole").equals("admin")) {
            httpResponse.sendRedirect("adminlogin.jsp"); //adminLogin.jsp로 redirect함
        } else {
            chain.doFilter(request, response); 
        }
    }

    @Override
    public void destroy() {
       
    }
}