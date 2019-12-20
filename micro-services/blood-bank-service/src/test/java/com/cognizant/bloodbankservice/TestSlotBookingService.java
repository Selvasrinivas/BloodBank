package com.cognizant.bloodbankservice;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.cognizant.bloodbankservice.repository.DonorSlotRepository;
import com.cognizant.bloodbankservice.repository.HospitalRepository;
import com.cognizant.bloodbankservice.repository.UserRepository;
import com.cognizant.bloodbankservice.service.DonorSlotService;



public class TestSlotBookingService {

	@InjectMocks
	DonorSlotService donorSlotService;
	
	@Mock
	DonorSlotRepository donorSlotRepository;

	@Mock
	HospitalRepository hospitalRepository;
	
	@Mock
	UserRepository userRepository;
	
	@Before
	public void init() {
		MockitoAnnotations.initMocks(this);
	}

	@Test
	public void hospitalId() {
		int id=1;
		String name="Apollo";
		int pincode=500001;
		
		when(hospitalRepository.getHospitalId(name, pincode)).thenReturn(id);
		
		int testId=donorSlotService.hospitalId(name, pincode);
		
		assertEquals(1,testId);
	}
	
	@Test
	public void donors(){
		String name="Apollo";
		int pincode=500001;
		List<String> nameList=new ArrayList<>();
		nameList.add(name);
		
		when(hospitalRepository.getHospitalList(pincode)).thenReturn(nameList);
		
		List<String> testnameList=donorSlotService.getHospitalList(pincode);
		
		assertEquals(nameList,testnameList);
		
	}
}
