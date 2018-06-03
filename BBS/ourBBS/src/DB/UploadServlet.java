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
			writer.println("Error:��������� enctype=multipart/form-data");
			writer.flush();
			return;
		}
		//�����ϴ�����      ��
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//�����ٽ��ڴ�      ��
		factory.setSizeThreshold(MEMORY_THRESHOLD);
		//������ʱ�洢Ŀ¼
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		//��������ļ��ϴ�ֵ
		upload.setFileSizeMax(MAX_FILE_SIZE);
		//�����������ֵ
		upload.setSizeMax(MAX_REQUEST_SIZE);
		
		//���� utf-8
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
						request.setAttribute("Message",  "�ļ��ϴ��ɹ�");
					}
				}
			}
		}catch(Exception e){
			request.setAttribute("message", "Error:"+e.getMessage());
		}	
	}
}
