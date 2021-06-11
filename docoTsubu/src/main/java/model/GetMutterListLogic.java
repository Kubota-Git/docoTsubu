//DB用コード
//つぶやきの取得に関する処理を行うモデル

package model;

import java.util.List;

import dao.MutterDAO;

public class GetMutterListLogic 
{
	//メソッド
	public List<Mutter> execute()
	{
		MutterDAO dao = new MutterDAO();
		List<Mutter> mutterList = dao.findAll();
		return mutterList;
	}

}
