package com.semi.jh;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//DB �����۾��� �Ҷ� �����ڵ带 �� ���Ŀ� �۾� �ؿ�
//�� ���� ����.

//�װ� AOP ����
public class DBManager {
	
	//db�۾��ÿ� ��¶�� ���� �ؾߵ�
	public static Connection connect() throws SQLException {
		String url ="C:\\\\oracleDB\\\\Wallet_DB202204301707";
		String id = "JM";
		String pw = "Soldesk802!!!";
		System.out.println("���Ἲ��");
		return DriverManager.getConnection(url,id,pw);
	}
	//������ ������ �ѹ��� �ݱ�
	public static void close(Connection con,PreparedStatement pstmt, ResultSet rs) {
		try {
			if (rs!=null) {
				rs.close();
			}
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
}
