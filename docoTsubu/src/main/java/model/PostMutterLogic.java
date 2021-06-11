package model;

import dao.MutterDAO;//DB用コードの追加
//import java.util.List;

public class PostMutterLogic 
{
	public void execute(Mutter mutter) 
	{
		//mutterList.add(0,mutter);//先頭に追加
		
		//DB用コードの追加
		MutterDAO dao = new MutterDAO();
		dao.create(mutter);
	}

}
