package com.imooc.ssm.service;

import com.imooc.ssm.entity.Department;

import java.awt.*;
import java.util.List;

public interface DepartmentService {
    void add(Department department);
    void remove(Integer id);
    void edit(Department department);
    Department get(Integer id);
    List<Department> getAll();



}
