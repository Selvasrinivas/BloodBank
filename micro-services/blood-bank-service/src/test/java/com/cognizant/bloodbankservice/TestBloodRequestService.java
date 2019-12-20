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

import com.cognizant.bloodbankservice.model.BloodRequest;
import com.cognizant.bloodbankservice.repository.BloodRequestRepository;
import com.cognizant.bloodbankservice.service.BloodRequestService;



public class TestBloodRequestService {
	@InjectMocks
	BloodRequestService bloodRequestService;

	@Mock
	BloodRequestRepository bloodRequestRepository;

	@Before
	public void init() {
		MockitoAnnotations.initMocks(this);
	}

	@Test
	public void requirements() {
		List<BloodRequest> blood = new ArrayList<>();

		BloodRequest request = new BloodRequest();

		request.setId(1);
		request.setName("Anu");
		request.setArea("Hyderabad");
		request.setState("Telangana");
		request.setPincode(500002);
		request.setBloodGroup("B+");
		request.setContactNo("5489489984");
		blood.add(request);

		when(bloodRequestRepository.findAll()).thenReturn(blood);

		List<BloodRequest> testbloodlist = bloodRequestService.requirements();

		for (BloodRequest testblood : testbloodlist) {
			assertEquals(1, testblood.getId());
			assertEquals("Anu", testblood.getName());
			assertEquals("Hyderabad",testblood.getArea());
			assertEquals("Telangana", testblood.getState());
			assertEquals(500002, testblood.getPincode());
			assertEquals("B+", testblood.getBloodGroup());
			assertEquals("5489489984", testblood.getContactNo());
		}
	}
}
