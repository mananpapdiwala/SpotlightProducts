package com.spotlightproducts.WebAPI;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spotlightproducts.dao.JSONResponse;

@RestController
public class CommonDataAPIController{
	
	@RequestMapping(value = "/GetUniqueUserId", method = RequestMethod.GET)
	public ResponseEntity<JSONResponse<Integer>> getUserId(HttpServletRequest request){
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		System.out.println(email);
		JSONResponse<Integer> JsonResponse = new JSONResponse<Integer>();
		JsonResponse.setStatus("Success");
		List<Integer> userId = Arrays.asList(1);
		JsonResponse.setData(userId);
		return new ResponseEntity<JSONResponse<Integer>>(JsonResponse, HttpStatus.OK);
	}
}