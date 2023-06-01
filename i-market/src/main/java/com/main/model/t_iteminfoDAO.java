package com.main.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class t_iteminfoDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	public int itemUpload(t_iteminfoDTO dto) {
		int cnt = 0;

		cnt = sqlSession.insert("com.smhrd.database.hifiveMapper.itemUpload", dto);
		sqlSession.close();
		return cnt;
	}

	public List<t_iteminfoDTO> showItem() {
		List<t_iteminfoDTO> item_list = sqlSession.selectList("com.smhrd.database.hifiveMapper.showItem");

		sqlSession.close();

		return item_list;
	}

	public List<t_iteminfoDTO> showItemDetail(t_iteminfoDTO item_idx) {
		List<t_iteminfoDTO> item_list = sqlSession.selectList("com.smhrd.database.hifiveMapper.showItemDetail",
				item_idx);

		sqlSession.close();

		return item_list;
	}


}