package com.cxx.function;

import com.cxx.base.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.Collection;

@WebServlet(urlPatterns = "/uploadFiles")
//处理文件上传的开关
@MultipartConfig
public class UploadFiles extends BaseServlet {
    public void uploadFiles(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        /*
        获取单个上传文件请求
        Part part = req.getPart("file");
         */
        Collection<Part> parts = req.getParts();
        //服务端保存文件的路径
        String path = req.getServletContext().getRealPath("/WEB-INF/files");
        for (Part part : parts) {
            /*
            通过req获得的请求头中不包含content-disposition。
            需要通过part获取文件名
             */
            Collection<String> headerNames = part.getHeaderNames();
            for (String headerName : headerNames) {
                System.out.println(headerName + " " + part.getHeader(headerName));
            }
            String str = part.getHeader("content-disposition");
            String fileName = str.substring(str.indexOf("filename") + 10, str.length() - 1);
            part.write(path + File.separator + fileName);
            /*
            Servlet3.1+tomcat8.0
            part.write(path+ File.separator+part.getSubmittedFileName());
             */
        }
    }
}
