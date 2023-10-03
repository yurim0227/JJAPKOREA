package kh.lclass.jjapkorea.business.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.lclass.jjapkorea.business.model.dto.JobPostingDto;
import kh.lclass.jjapkorea.business.model.dto.JobPostingCategoryDto;

@Repository("jobPostinguploadDao")
public class JobPostingUploadDao {
	@Autowired
	private SqlSession sqlSession;
	
	public int insert(JobPostingDto dto) throws Exception{
		int result = sqlSession.insert("jobpostingUpload.insert", dto);
		return result;
	}
	
	public List<JobPostingDto> selectList(String mid) throws Exception{
		return sqlSession.selectList("jobpostingUpload.selectList", mid);
	}
	
	public List<JobPostingCategoryDto> selectFirst(String selectedOption) throws Exception{
		return sqlSession.selectList("jobpostingUpload.selectFirst", selectedOption);
	}
	
	public List<JobPostingCategoryDto> selectSecond(String selectedOption) throws Exception{
		return sqlSession.selectList("jobpostingUpload.selectSecond", selectedOption);
	}
}