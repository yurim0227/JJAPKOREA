package kh.lclass.jjapkorea.reply.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.lclass.jjapkorea.reply.model.dto.ReplyDto;


@Repository("ReplyDto")
public class ReplyDao {
	@Autowired private SqlSession sqlSession;
	
	public List<ReplyDto> selectList(Integer boardNo) throws Exception{
		return sqlSession.selectList("reply.selectList", boardNo);
	}
	
	public ReplyDto selectOne(Integer replyNo) throws Exception{
		return sqlSession.selectOne("reply.selectOne", replyNo);
	}
	
	public int insert(ReplyDto rdto) throws Exception{
		return sqlSession.insert("reply.insert", rdto);
	}
	
	public int insertreplyreply(ReplyDto rdto) throws Exception{
		return sqlSession.insert("reply.insertreplyreply", rdto);
	}
	
	public int update(ReplyDto rdto) throws Exception{
		return sqlSession.update("reply.update", rdto);
	}
	
	public int delete(int replyNo) throws Exception{
		return sqlSession.delete("reply.delete", replyNo);
	}
}