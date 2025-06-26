package com.rabbitmq.Rabbitmq;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.rabbitmq.Rabbitmq.model.person;

@RestController
@RequestMapping("/api/v1/")
public class testcontroller {
	
	@Autowired
	RabbitTemplate rabbittemplate;
	
	//producer code
	
	@GetMapping("/person/")
	public String testapi() {
		person p=new person(1L,"satyam");
		
//		rabbittemplate.convertAndSend("Mobile",p);
//		rabbittemplate.convertAndSend("direct-exchange","ac", p);
		rabbittemplate.convertAndSend("fanout-exchange","", p);
		return "success";
	}
	
	
	//consumer code
	
	@GetMapping("/")
	public String getmessageapi() {
		
		

		return "success";
	}
	
	

}
