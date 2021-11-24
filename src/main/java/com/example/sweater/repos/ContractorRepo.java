package com.example.sweater.repos;

import com.example.sweater.domain.Contractor;
import com.example.sweater.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface ContractorRepo extends JpaRepository<Contractor, Long> {
    Contractor findByConName(String conName);

    Contractor findByConId(Long conId);

    List<Contractor>findByUserId(Long id);

    Contractor findByConPhoneNum(Long phone);
}
