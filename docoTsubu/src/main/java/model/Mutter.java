package model;

import java.io.Serializable;//直列化

public class Mutter implements Serializable//直列化の為
{
	//フィールド
	private int id;//DB用追加コード
	private String userName;//ユーザー名
	private String text;//つぶやき
	
	//コンストラクタ(引数なし)
	public Mutter() {}
	public Mutter(String userName, String text)
	{
		this.userName = userName;
		this.text = text;
	}
	
	//DB用追加コード
	public Mutter(int id,String userName, String text)
	{
		this.id = id;//DB用追加コード
		this.userName = userName;
		this.text = text;
	}
	
	//getメソッド
	public int getId() {return id;}//DB用追加コード
	public String getUserName() {return userName;}
	public String getText() {return text;}
}

