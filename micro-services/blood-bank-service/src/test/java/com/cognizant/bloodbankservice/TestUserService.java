package com.cognizant.bloodbankservice;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.cognizant.bloodbankservice.repository.AddressRepository;
import com.cognizant.bloodbankservice.repository.UserRepository;
import com.cognizant.bloodbankservice.service.AddressService;


public class TestUserService {

	@InjectMocks
	AddressService addressService;

	@Mock
	UserRepository userRepository;

	@Mock
	AddressRepository addressRepository;

	@Before
	public void init() {
		MockitoAnnotations.initMocks(this);
	}


	@Test
	public void getStatesList() {
		String s = "Hello";
		List<String> sList = new ArrayList<>();

		sList.add(s);

		when(addressRepository.getState()).thenReturn(sList);

		List<String> testsList = addressService.getState();

		for (String i : testsList) {
			assertEquals("Hello", i);
		}
	}

	@Test
	public void getArea() {
		String s = "Hi";
		List<String> sList = new ArrayList<>();

		sList.add(s);

		when(addressRepository.getState()).thenReturn(sList);

		List<String> testsList = addressService.getArea(s);

		for (String i : testsList) {
			assertEquals("Hi", i);
		}
	}
	
	@Test
	public void getPincode() {
		int id=1;
		String area="chennai";
		int pincode=500001;
		
		when(addressRepository.getPincode(area)).thenReturn(pincode);
	  int pin=addressService.getPincode(area);
	    assertEquals(pincode,pin);
	}

}
