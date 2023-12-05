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
    
    // doFilter�� ����ڰ� dashboard.jsp�� �׳� ���������� ����Ǵ� ������
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        HttpSession session = httpRequest.getSession(false); // ������ �����ϸ� ������ ��ȯ�ϰ� �ƴϸ� null�� ��ȯ
        
        // session�� null Ȥ�� session.getAttribute�� userRole�� �ƴϰų� userRole�� admin�� ���� ������ 
        if (session == null || session.getAttribute("userRole") == null || !session.getAttribute("userRole").equals("admin")) {
            httpResponse.sendRedirect("adminlogin.jsp"); //adminLogin.jsp�� redirect��
        } else {
            chain.doFilter(request, response); 
        }
    }

    @Override
    public void destroy() {
       
    }
}