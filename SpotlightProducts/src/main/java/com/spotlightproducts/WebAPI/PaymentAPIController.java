package com.spotlightproducts.WebAPI;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spotlightproducts.businesslibrary.UserPaymentDetails;
import com.spotlightproducts.dao.DatabaseResponse;
import com.spotlightproducts.dao.JSONResponse;
import com.spotlightproducts.dao.ReferenceData;
import com.spotlightproducts.dao.User;

@RestController
public class PaymentAPIController{
	
	@RequestMapping(value = "/GetPaymentReferenceData", method = RequestMethod.GET)
	public ResponseEntity<JSONResponse<ReferenceData>> GetPaymentReferenceData(){
		JSONResponse<ReferenceData> JsonResponse = new JSONResponse<ReferenceData>(); 
		UserPaymentDetails userPayment = new UserPaymentDetails();
		DatabaseResponse<ReferenceData> dbresponse = userPayment.getReferenceListItems();
		JsonResponse.setStatus(dbresponse.getStatus());
		JsonResponse.setMessage(dbresponse.getMessage());
		JsonResponse.setData(dbresponse.getData());
		return new ResponseEntity<JSONResponse<ReferenceData>>(JsonResponse, HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "/SaveAddressDetails", method = RequestMethod.POST)
	public ResponseEntity<JSONResponse<String>> RegisterUser(@RequestBody User user){
		JSONResponse<String> JsonResponse = new JSONResponse<String>();
		DatabaseResponse dbresponse = user.registerUserDao();
		JsonResponse.setStatus(dbresponse.getStatus());
		JsonResponse.setMessage(dbresponse.getMessage());
		return new ResponseEntity<JSONResponse<String>>(JsonResponse, HttpStatus.OK);
	}
	
}