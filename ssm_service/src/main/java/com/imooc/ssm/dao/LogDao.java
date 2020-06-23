package com.imooc.ssm.dao;

import com.imooc.ssm.entity.Log;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("logDao")
public interface LogDao {
  void insert(Log log);
  List<Log> selectByType(String type);


}
