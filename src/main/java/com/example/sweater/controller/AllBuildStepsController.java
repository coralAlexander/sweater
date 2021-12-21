package com.example.sweater.controller;

import com.example.sweater.common.FileGenerator;
import com.example.sweater.domain.SpecialistPrice;
import com.example.sweater.domain.User;
import com.example.sweater.repos.AllBuildStepsRepo;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
public class AllBuildStepsController {

   private final AllBuildStepsRepo allBuildStepsRepo;

   private final FileGenerator  fileGenerator;

    @Value("${upload.path}")
    private String uploadPath;

    public AllBuildStepsController(AllBuildStepsRepo allBuildStepsRepo, FileGenerator fileGenerator) {
        this.allBuildStepsRepo = allBuildStepsRepo;
        this.fileGenerator = fileGenerator;
    }

    @GetMapping("/allbuildsteps")
    public String allSteps(Model model, @AuthenticationPrincipal User user) {
        List<SpecialistPrice> list = allBuildStepsRepo.findByUserId(user.getId());
        model.addAttribute("specialListPrice", list);
        return "allBuildSteps";
    }

    @PostMapping("/allbuildsteps/{id}")
    public String update(@AuthenticationPrincipal User user, @PathVariable String id,
                         @RequestParam(required = false) String price,
                         @RequestParam(required = false) String paid) {
        Long specId = Long.parseLong(id);
        SpecialistPrice spec = allBuildStepsRepo.getById(specId);

        paid = paid.replaceAll(",", "");
        Long convPar = Long.parseLong(paid);
        spec.setPaid(convPar);

        price = price.replaceAll(",", "");
        Long LongPrice = Long.parseLong(price);
        spec.setPrice(LongPrice);


        allBuildStepsRepo.save(spec);
        return "redirect:/allbuildsteps";
    }


    @GetMapping("/adviser/add")
    public String addContractor(Model model) {
        return "addAdviser";
    }

    @PostMapping("/addAdviser")
    public String addAdviser(@AuthenticationPrincipal User user,
                             @RequestParam String spec,
                             @RequestParam String specPrice,
                             @RequestParam String specPaid,
                             @RequestParam(required = false) String comments,
                             @RequestParam("file") MultipartFile file) throws IOException {
        Long specPriceNum = Long.parseLong(specPrice);
        Long specPaidNum = Long.parseLong(specPaid);
        SpecialistPrice specialistPrice = new SpecialistPrice(user, spec, specPriceNum, specPaidNum, comments);

        if (comments != null && !comments.isEmpty()) {
            specialistPrice.setComments(comments);
        }
        if (!fileGenerator.generateFile(file).isEmpty()) {
            specialistPrice.setFileName(fileGenerator.generateFile(file));
        }
        allBuildStepsRepo.save(specialistPrice);

        return "redirect:/allbuildsteps";
    }
}

