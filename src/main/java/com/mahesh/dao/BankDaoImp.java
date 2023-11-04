package com.mahesh.dao;

import com.mahesh.model.Bank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;
import java.util.Set;

@Repository
public class BankDaoImp implements BankDao{

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Override
    @Transactional
    public int saveBank(Bank bank) {
        int i=(Integer) hibernateTemplate.save(bank);
        return i;
    }

    @Override
    public List<Bank> getAllBank() {
        List<Bank> list=hibernateTemplate.loadAll(Bank.class);
        return list;
    }

    @Override
    public List<Bank> searchBank(String bankName) {
        List<Bank> searchBank= (List<Bank>) hibernateTemplate.find("FROM Bank WHERE bankName LIKE '"+bankName+"%'");
        return searchBank;
    }

    @Override
    public Bank getBankById(Integer bankId) {
        Bank bank=hibernateTemplate.get(Bank.class,bankId);
        return bank;
    }

    @Override
    @Transactional
    public boolean deleteBankById(Integer bankId) {
        Bank bank=hibernateTemplate.get(Bank.class,bankId);
        hibernateTemplate.delete(bank);
        return false;
    }

    @Override
    @Transactional
    public Bank updateBank(Bank bank) {
        hibernateTemplate.update(bank);
        return bank;
    }

}
