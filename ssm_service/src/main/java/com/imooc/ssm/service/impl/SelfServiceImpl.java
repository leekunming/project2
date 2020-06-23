package com.imooc.ssm.service.impl;

import com.imooc.ssm.dao.SelfDao;
import com.imooc.ssm.dao.StaffDao;
import com.imooc.ssm.entity.Staff;
import com.imooc.ssm.service.SelfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("selfService")
public class SelfServiceImpl implements SelfService {
    @Autowired
    private SelfDao selfDao;
    @Autowired
    private StaffDao staffDao;
    public Staff login(String account, String password) {
        Staff staff=selfDao.selectByAccount(account);
        if (staff==null) return null;
        if (staff.getPassword().equals(password)) return  staff;

        return null;
    }

    public void changPassword(Integer id, String password) {
        Staff staff=staffDao.selectById(id);
        staff.setPassword(password);
        staffDao.update(staff);

    }
}
