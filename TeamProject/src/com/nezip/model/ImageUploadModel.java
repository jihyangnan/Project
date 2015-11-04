package com.nezip.model;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.common.Model;

public class ImageUploadModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		try {
			// 디스크상의 프로젝트 실제 경로얻기
			String contextRootPath = req.getServletContext().getRealPath("/");
			//System.out.println(contextRootPath);
			// 1. 메모리나 파일로 업로드 파일 보관하는 FileItem의 Factory 설정
			DiskFileItemFactory diskFactory = new DiskFileItemFactory(); // 디스크 파일 아이템 공장
			// diskFactory.setSizeThreshold(1024); //업로드시 사용할 임시 메모리
			// diskFactory.setRepository(new File(contextRootPath +
			// "/WEB-INF/temp")); //임시저장폴더

			// 2. 업로드 요청을 처리하는 ServletFileUpload생성
			ServletFileUpload upload = new ServletFileUpload(diskFactory);
			upload.setSizeMax(3 * 1024 * 1024); // 3MB : 전체 최대 업로드 파일 크기
			// 3. 업로드 요청파싱해서 FileItem 목록구함​​
			List<FileItem> items = upload.parseRequest(req);
			//System.out.println(items.size());
			for (FileItem fileItem : items) {
				String name = fileItem.getFieldName(); // 파일의 필드 이름 얻기
				String fileName = fileItem.getName(); // 파일명 얻기
				String contentType = fileItem.getContentType();// 컨텐츠 타입 얻기
				long fileSize = fileItem.getSize(); // 파일의 크기 얻기

				// 업로드 파일명을 현재시간으로 변경후 저장
				String fileExt = fileName.substring(fileName.lastIndexOf("."));
				String uploadedFileName = System.currentTimeMillis() + fileExt;
				//System.out.println(fileExt);
				//System.out.println(uploadedFileName);

				// 저장할 절대 경로로 파일 객체 생성
				File uploadedFile = new File(contextRootPath + "/upload/" + uploadedFileName);
				fileItem.write(uploadedFile); // 파일 저장
				req.setAttribute("image", uploadedFileName);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "nezip/uploadImageAjax.jsp";
	}

}
