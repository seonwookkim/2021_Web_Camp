package com.mycom.myapp.emp;

import java.util.List;

public interface EmpService {
	public int insertEmp(EmpVO vo);
	public int updateEmp(EmpVO vo);
	public int deleteEmp(int id);
	public EmpVO getEmp(int id);
	public List<EmpVO> getEmpList();
}