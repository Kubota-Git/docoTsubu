package model;

import java.io.Serializable;//直列化

public class User implements Serializable//直列化の為
{
	//フィールド
	private String name;//ユーザー名
	private String pass;//パスワード
	
	//コンストラクタ(引数なし)
	public User() {}
	public User(String name, String pass)
	{
		this.name = name;
		this.pass = pass;
	}
	
	//getメソッド
	public String getName() {return name;}
	public String getPass() {return pass;}
}
