import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/member/list")
public class MemberListServlet extends GenericServlet{
	private static final long serialVersionUID = 1L;

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
//			1. 사용할 JDBC 드라이버를 등록하라.
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
//			2. 드라이버를 사용하여 MySQL 서버와 연결하라.
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardprogram?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "study", "study");
			
//			3. 커넥션 객체로부터 sQL을 던질 객체를 준비하라.
			stmt = con.createStatement();
			
//			4. SQL을 던지는 객체를 사용하여 서버에 질의하라
			rs = stmt.executeQuery("select mno, name, email, pwd, cre_date from members order by mno asc");
			
//			5. 서버에 가져온 데이터를 사용하여 HTML만들어서 웹 브라우저로 출력하라.
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<html><head><title>회원목록</title></head><body>");
			out.println("<h1>회원목록</h1>");
			out.println("<p><a href='add'>신규 회원</a></p>");
			
			while(rs.next()) {
				out.println(
						rs.getInt("mno") + "," +
						rs.getString("name") + "," +
						rs.getString("email") + "," +
						rs.getString("pwd") + "," +
						rs.getDate("cre_date")
				);
				out.println("<br>");
			}
			out.println("</body></html>");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new ServletException(e);
		}
		/*
		finally{
			try {
				rs.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				stmt.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		*/
	}
	
}
