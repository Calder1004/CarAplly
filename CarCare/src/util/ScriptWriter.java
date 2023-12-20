package util;

import java.io.PrintWriter;

public class ScriptWriter {
	 
	 public static void WriteFn(PrintWriter out, String message, String redirectUrl) {
	        out.println("<script>");
	        out.println("alert('" + message + "');");
	        out.println("window.location='" + redirectUrl + "';");
	        out.println("</script>");
	 }
}
