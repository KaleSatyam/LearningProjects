package com.rabbitmq.Rabbitmq.service;

import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Service;

import com.rabbitmq.Rabbitmq.model.person;

@Service
public class consumer {
	
	
//	@RabbitListener(queues = "Mobile")
//	public void getmessage(person p) {
//		System.out.println(p.getName());
//		
//	}

}
