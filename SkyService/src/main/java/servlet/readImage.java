package servlet;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class temp
 */
@WebServlet("/image/*")
public class readImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public readImage() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pathInfo = request.getPathInfo();
		// String[] pathParts = pathInfo.split("/");
		/*
		 * String part = pathParts[1]; response.setContentType("image/jpg");
		 */

		String pathToWeb = getServletContext().getRealPath(File.separator);
		//System.out.println(pathToWeb);
		File f = new File(pathToWeb + "/image" + pathInfo);
		BufferedImage bi = ImageIO.read(f);
		OutputStream out = response.getOutputStream();
		response.setContentType("image/jpg,image/gif,image/png,image/JPG");
		ImageIO.write(bi, "jpg", out);
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
