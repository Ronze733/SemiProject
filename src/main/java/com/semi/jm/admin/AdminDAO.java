package com.semi.jm.admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.v2.DbxClientV2;
import com.dropbox.core.v2.files.FileMetadata;
import com.dropbox.core.v2.files.UploadErrorException;
import com.dropbox.core.v2.sharing.SharedLinkMetadata;
import com.dropbox.core.v2.users.FullAccount;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.semi.db.DBManager;

public class AdminDAO {

	private static final String ACCESS_TOKEN = "sl.Bg8z7Q2-UUZmCKfmwWL_0gygddn2WKXbARMhwKb-fWOXJ-jP0R1MhYY6AnMGyvoM0t_lS247BpPSmBgezVu8HnxkStKvyhOZJPnJaaskV3yBaeJy0XbvdvVe_MNx24bF9U76IDLR4ZWi";

	public static String uploadToDropbox(InputStream fileInputStream, String fileName) {
		DbxRequestConfig config = DbxRequestConfig.newBuilder("dropbox/semi-project").build();
		DbxClientV2 client = new DbxClientV2(config, ACCESS_TOKEN);

		FullAccount account;
		try {
			account = client.users().getCurrentAccount();
			System.out.println(account.getName().getDisplayName());
			FileMetadata metadata = client.files().uploadBuilder("/SemiProject/" + fileName).uploadAndFinish(fileInputStream);
			String pathDisplay = metadata.getPathDisplay();
			System.out.println(pathDisplay);
			
			FileMetadata metadata2 = (FileMetadata) client.files().getMetadata("/SemiProject/" + fileName);
			
			SharedLinkMetadata sharedLinkMetadata = client.sharing().createSharedLinkWithSettings(metadata2.getPathLower());
			
			String currentUrl = sharedLinkMetadata.getUrl();
			
			String rawUrl = currentUrl.replace("dl=0", "raw=1");
			
			return rawUrl;
		} catch (UploadErrorException e) {
			// TODO Auto-generated catch block
			// 업로드 에러 처리
			e.printStackTrace();
		} catch (DbxApiException e) {
			// DropBox Api 예외 처리
			e.printStackTrace();
		} catch (DbxException e) {
			// DropBox 예외 처리
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}

	public static void saveToDatabase(String filePath, String placeName, String placeAddr, String placeCategory1,
			String placeCategory2, String placeCategory3, String placeExplain, String placeAddr2) {
		String sql = "insert into place values (place_id_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?)";
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, placeName);
			pstmt.setString(2, placeAddr);
			pstmt.setString(3, placeCategory1);
			pstmt.setString(4, placeCategory2);
			pstmt.setString(5, placeCategory3);
			pstmt.setString(6, placeExplain);
			pstmt.setString(7, filePath);
			pstmt.setString(8, placeAddr2);
			
			if(pstmt.executeUpdate() >= 1) {
				System.out.println("등록 성공");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("DB Error");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}

	public static void addPlace(HttpServletRequest request) {
		String path = request.getServletContext().getRealPath("img/jm/place");
		System.out.println(path);
		String filePath = "";
		String placeName = "";
		String placeAddr = "";
		String placeCategory1 = "";
		String placeCategory2 = "";
		String placeCategory3 = "";
		String placeExplain = "";
		String placeAddr2 = "";
		try {
			MultipartRequest mr = new MultipartRequest(request, path , 30*1024*1024,"utf-8",new DefaultFileRenamePolicy());
			String filePath1 = mr.getFilesystemName("pic");
			
			File file = new File(path + File.separator + filePath1);
			
			InputStream fileInputStream = new FileInputStream(file);
			
			String fileName = file.getName();
			
			filePath = uploadToDropbox(fileInputStream, fileName);
			
			
			placeName = mr.getParameter("placeName");
			placeAddr = mr.getParameter("placeAddr");
			String[] placeCategory1A = mr.getParameterValues("category1");
			if(placeCategory1A != null) {
				for (String s : placeCategory1A) {
					placeCategory1 += (s + "!");
				}
			}
			String[] placeCategory2A = mr.getParameterValues("category2");
			if(placeCategory2A != null)
				for (String s : placeCategory2A) {
					placeCategory2 += (s + "!");
				}
			
			placeCategory3 = mr.getParameter("category3");
			placeExplain = mr.getParameter("placeExplain");
			placeAddr2 = mr.getParameter("placeAddr2");
			
			saveToDatabase(filePath, placeName, placeAddr, placeCategory1, placeCategory2, placeCategory3, placeExplain, placeAddr2);
			AdminPlace ap = new AdminPlace(placeName, placeAddr, placeCategory1, placeCategory2, placeCategory3, placeExplain, filePath, placeAddr2);
			request.setAttribute("place", ap);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
