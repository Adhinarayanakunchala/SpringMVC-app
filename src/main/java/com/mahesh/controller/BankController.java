package com.mahesh.controller;

import com.mahesh.dao.BankDao;
import com.mahesh.model.Bank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;
import java.util.Set;

@Controller
public class BankController {

    @Autowired
    public BankDao bankDao;

    @RequestMapping("/home")
    public ModelAndView home(){
        ModelAndView model=new ModelAndView();
        model.setViewName("home");
        return model;
    }

    @RequestMapping("/insert")
    public ModelAndView insert(){
        ModelAndView model=new ModelAndView();
        model.setViewName("addBank");
        return model;
    }

    @RequestMapping(value = "/addRes",method = RequestMethod.POST)
    public ModelAndView addRes(@ModelAttribute Bank bank){
        System.out.println("Bank Details >>> "+bank);
        int i=bankDao.saveBank(bank);
        ModelAndView model=new ModelAndView();
        model.setViewName("redirect:/viewAll");
        return model;
    }

    @RequestMapping("/viewAll")
    public ModelAndView viewAll(){
        List<Bank> bank=bankDao.getAllBank();
        System.out.println("Bank List View >>> "+bank);
        ModelAndView model=new ModelAndView();
        System.out.println("Object Bank >>> "+model.addObject("bank",bank));
        model.setViewName("bankList");
        return model;
    }

    @RequestMapping("/search")
    public ModelAndView search(@RequestParam String bankName){
        List<Bank> bank=bankDao.searchBank(bankName);
        System.out.println("Search Bank Name >>> "+bank);
        ModelAndView model=new ModelAndView();
        model.addObject("bank",bank);
        model.setViewName("searchBank");
        return model;
    }

    @RequestMapping("/remove/{bankId}")
    public ModelAndView remove(@PathVariable Integer bankId){
        ModelAndView model=new ModelAndView();
        boolean oneValue= bankDao.deleteBankById(bankId);
        System.out.println("One Value >>> "+oneValue);
        if(oneValue){
            model.setViewName("redirect:/viewAll");
        }else {
            model.setViewName("redirect:/viewAll");
        }
        return model;
    }
    @RequestMapping(value = "/edit/{bankId}",method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable Integer bankId){
        ModelAndView model=new ModelAndView();
        Bank bank= bankDao.getBankById(bankId);
        System.out.println("One Bank Details >>> "+bank);

        model.addObject("bank",bank);
        model.setViewName("editBank");
        return model;
    }

    @RequestMapping(value = "/editRes",method = RequestMethod.POST)
    public ModelAndView editRes(@ModelAttribute Bank bank){
        Bank bank1=bankDao.updateBank(bank);
        System.out.println("Updated Bank Details Are >>> "+bank1);
        ModelAndView model=new ModelAndView();
        model.setViewName("redirect:/viewAll");
        return  model;
    }

}
