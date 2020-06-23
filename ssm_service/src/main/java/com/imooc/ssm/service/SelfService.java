package com.imooc.ssm.service;

import com.imooc.ssm.entity.Staff;

public interface SelfService {
  Staff login(String account , String password);
  void changPassword(Integer id,String password);


}
