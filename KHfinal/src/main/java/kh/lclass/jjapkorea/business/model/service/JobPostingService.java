package kh.lclass.jjapkorea.business.model.service;

import java.util.List;

import kh.lclass.jjapkorea.business.model.dto.JobPostingDto;
import kh.lclass.jjapkorea.guest.model.dto.BusinessDto;
import kh.lclass.jjapkorea.guest.model.dto.MemberDto;

public interface JobPostingService {
	void signUpMemberAndBusinessAndInsertJobPosting(MemberDto memberDto, BusinessDto businessDto, JobPostingDto jobPostingDto) throws Exception;
	List<JobPostingDto> selectListJobPosting() throws Exception;
}