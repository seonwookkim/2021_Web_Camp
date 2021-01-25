package com.mycom.myapp.service;

import java.util.List;
 
import com.mycom.myapp.model.EmployeeVO;
 
public interface EmployeeManager 
{
    public List<EmployeeVO> getAllEmployees();
}