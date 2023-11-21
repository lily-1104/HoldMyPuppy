package com.holdmypuppy.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.holdmypuppy.user.mapper.UserMapper;

@Controller
public class TestController {
	
	@Autowired
	UserMapper userMapper;
	
	
	// http://localhost:8080/test1
	@ResponseBody
	@GetMapping("/test1")
	public String test1() {
		
		return "Hello world";
		
	}
	
	
	// http://localhost:8080/test2
	@ResponseBody
	@GetMapping("/test2")
	public Map<String, Object> test2() {
		
		Map<String, Object> map = new HashMap<>();
		map.put("a", 1);
		map.put("b", 200);
		
		return map;
		
	}
	
	
	// http://localhost:8080/test3
	@GetMapping("/test3")
	public String test3() {
		
		return "test/test";
		
	}
	
	
	// http://localhost:8080/test4
	@ResponseBody
	@GetMapping("/test4")
	public List<Map<String, Object>> test4() {
			
		return userMapper.selectUserList();
	
	}

}
