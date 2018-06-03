package DB;

import java.io.IOException;
import java.io.File;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 * Servlet implementation class UploadSeverlet
 */
@WebServlet("/UploadSeverlet")
public class UploadServlet extends HttpServlet {
		
	private static final long serialVersionUID = 1L;
       
	private static final String UPLOAD_DIRECTORY = "userImage";
	private static final int MEMORY_THRESHOLD = 1024*1024*3;
	private static final int MAX_FILE_SIZE = 1024*1024*40;
	private static final int MAX_REQUEST_SIZE = 1024*1024*50;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(!ServletFileUpload.isMultipartContent(request)){
			
			PrintWriter writer = response.getWriter();
			writer.println("Error:表单必须包含 enctype=multipart/form-data");
			writer.flush();
			return;
		}
		//配置上传参数      ？
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//设置临界内存      ？
		factory.setSizeThreshold(MEMORY_THRESHOLD);
		//设置临时存储目录
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		//设置最大文件上传值
		upload.setFileSizeMax(MAX_FILE_SIZE);
		//设置最大请求值
		upload.setSizeMax(MAX_REQUEST_SIZE);
		
		//中文 utf-8
		upload.setHeaderEncoding("UTF-8");
		
		String uploadPath = getServletContext().getRealPath("/")+UPLOAD_DIRECTORY;
		
		File uploadDir = new File(uploadPath); 		
		
		if(!uploadDir.exists()){
			uploadDir.mkdir();
		}
		
		try{
			//@SuppressWarnings("unchecked")
			 List<FileItem> formItems = upload.parseRequest(request);
			if(formItems != null && formItems.size()>0){
				for(FileItem item: formItems){
					if(!item.isFormField()){
						File f = new File(item.getName());
						String fileName = request.getParameter("user_name")+ "." + f.getName().substring(f.getName().lastIndexOf(".")+1);
						String filePath = uploadPath + File.separator + fileName;
						File storeFile = new File(filePath);
//						System.out.println(filePath);
						item.write(storeFile);
						request.setAttribute("Message",  "文件上传成功");
					}
				}
			}
		}catch(Exception e){
			request.setAttribute("message", "Error:"+e.getMessage());
		}	
	}
}
