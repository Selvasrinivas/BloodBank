package com.cognizant.bloodbankservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cognizant.bloodbankservice.model.ExperienceSharing;

@Repository
public interface ExperienceSharingRepository extends JpaRepository<ExperienceSharing, Integer> {
	
}
