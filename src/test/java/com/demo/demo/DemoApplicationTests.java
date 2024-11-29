package com.demo.demo;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class DemoApplicationTests {

	@Test
	void contextLoads() {
	}

	@Test
    public void testPrintMessage() {      
		System.out.println("Inside testPrintMessage()");     
		assertEquals("Atul", "Atul");
	}
	
}
