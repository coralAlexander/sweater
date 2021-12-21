package com.example.sweater.controller;



import com.example.sweater.domain.Contractor;
import com.example.sweater.domain.User;
import com.example.sweater.repos.ContractorRepo;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class ContractorController {

    private final ContractorRepo contractorRepo;

    public ContractorController(ContractorRepo contractorRepo) {
        this.contractorRepo = contractorRepo;
    }

    @GetMapping("/contractor")
    public String getContractors(@AuthenticationPrincipal User user, Model model) {
        List<Contractor> list = contractorRepo.findByUserId(user.getId());
        model.addAttribute("listCons",list);
        return "contractorsList";
    }


    @GetMapping("/contractor/add")
    public String addContractor(Model model){
        return "contractorAdd";
    }

    @PostMapping("/contractor")
    public String createConst(@AuthenticationPrincipal User user ,@RequestParam String conName
            , @RequestParam Long conPhone, @RequestParam String conSpec, Model model ){

        Contractor cont = new Contractor(conName,conPhone,conSpec,user);
        contractorRepo.save(cont);
     return "redirect:/contractor";
    }

    @GetMapping("/contractor/edit/{phone}")
    public  String getContractor(@PathVariable String phone ,Model model){
        phone = phone.replaceAll(",","");
        Long num = Long.parseLong(phone);
        Contractor contractor = contractorRepo.findByConPhoneNum(num);
        model.addAttribute("contractor",contractor);
        return "contractorEdit";
    }

    @PostMapping("/contractor/update/{conId}")
    public String updateContractor(@PathVariable String conId , @RequestParam(required = false) String conName ,
                                   @RequestParam(required = false) String conPhone ,
                                   @RequestParam(required = false) String conSpec, Model model){

        //conPhone = conPhone.replaceAll(",","");
        Long phonNum = Long.parseLong(conId);

        Contractor contractor = contractorRepo.findByConId(phonNum);

        if(conName!=null && !conName.isEmpty()){
            contractor.setConName(conName);
        }

        if (conPhone!=null && !conPhone.isEmpty()){
            Long phone = Long.parseLong(conPhone);
            contractor.setConPhoneNum(phone);
        }

        if (conSpec!=null&& !conSpec.isEmpty()){
            contractor.setSpecialisation(conSpec);
        }

        contractorRepo.save(contractor);
        model.addAttribute("cont",contractor);

        return "redirect:/contractor";
    }


}
