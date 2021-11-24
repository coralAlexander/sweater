package com.example.sweater.repos;

import com.example.sweater.domain.SpecialistPrice;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AllBuildStepsRepo  extends JpaRepository<SpecialistPrice, Long> {
    List<SpecialistPrice> findByUserId(Long userId);

    SpecialistPrice getById(Long id);
}
