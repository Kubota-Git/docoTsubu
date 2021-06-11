package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Mutter;


public class  MutterDAO 
{
	//データベース接続に使用する情報(定数情報)
	private final String JDBC_URL="jdbc:h2:tcp://localhost/~/docoTsubu" ;
	private final String DB_USER = "sa";
	private final String DB_PASS = "";
	
	//DB内のデータ取得メソッド
	public List<Mutter> findAll()
	{
		List<Mutter> mutterList = new ArrayList<>();
		
		//①データベースに接続
		try(Connection conn = DriverManager.getConnection(JDBC_URL,DB_USER,DB_PASS))
		{
			//②SELECT文を準備
			String sql ="SELECT ID,NAME,TEXT FROM MUTTER ORDER BY ID DESC";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			
			//③SELECT文を実行し、結果表(ResultSet)を取得
			ResultSet rs = pStmt.executeQuery();
			
			//④SELECT文の結果をArrayListへ追加
			while(rs.next())
			{
				int id = rs.getInt("ID");
				String userName = rs.getString("NAME");
				String text = rs.getString("TEXT");				
				
				//取得したデータをインスタンスへ格納
				Mutter mutter = new Mutter(id,userName,text);
				//上記インスタンスをArrayListへ追加
				mutterList.add(mutter);
				
			}
		
		
		
		}
		catch(SQLException e)
		{
			e.printStackTrace();//接続やSQL処理失敗時
			return null;
		}
		
		return mutterList;
		
	}
	
	
	
	//DB内のデータ追加メソッド
	public boolean create(Mutter mutter)
	{
		//①データベースに接続
		try(Connection conn = DriverManager.getConnection(JDBC_URL,DB_USER,DB_PASS))
		{
			//②INSERT文を準備(idは自動連番の為、指定しない)
			String sql ="INSERT INTO MUTTER(NAME,TEXT) VALUES(?,?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			
			//③INSERT文中の「？」に使用する値を設定しSQLを完成
			pStmt.setString(1, mutter.getUserName());
			pStmt.setString(2, mutter.getText());		
			
			
			//④INSERT文を実行(resultには追加された行数が代入される)
			int result = pStmt.executeUpdate();
			if(result !=1)
			{
				return false;
			}
		
		
		}
		catch(SQLException e)
		{
			e.printStackTrace();//接続やSQL処理失敗時
			return false;
		}
		
		
		return true;
		
		
	}

}
