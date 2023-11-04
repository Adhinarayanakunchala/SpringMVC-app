package com.mahesh.dao;

import com.mahesh.model.Bank;

import java.util.List;
import java.util.Set;

public interface BankDao {

    public int saveBank(Bank bank);

    public List<Bank> getAllBank();

    public List<Bank> searchBank(String bankName);

    public Bank getBankById(Integer bankId);

    public boolean deleteBankById(Integer bankId);

    public Bank updateBank(Bank bank);

}
