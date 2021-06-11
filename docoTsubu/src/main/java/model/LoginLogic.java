package model;

public class LoginLogic
{
	public boolean execute(User user)
	{
		if(user.getPass().equals("1234"))
		{
			return true;
		}//取得パスが1234ならば真
		else
		{
			return false;//異なれば偽
		}
		
	}
}
