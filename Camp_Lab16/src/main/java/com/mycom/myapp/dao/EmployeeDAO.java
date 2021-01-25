package com.mycom.myapp.dao;

import java.util.List;
 
import com.mycom.myapp.model.EmployeeVO;
 
public interface EmployeeDAO 
{
    public List<EmployeeVO> getAllEmployees();
}