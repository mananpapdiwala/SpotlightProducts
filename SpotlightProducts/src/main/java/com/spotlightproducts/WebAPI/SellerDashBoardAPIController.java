package com.spotlightproducts.WebAPI;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.spotlightproducts.businesslibrary.SellerDashboard;
import com.spotlightproducts.businesslibrary.UserDashboard;
import com.spotlightproducts.dao.DatabaseResponse;
import com.spotlightproducts.dao.JSONResponse;
import com.spotlightproducts.dao.Order;
import com.spotlightproducts.dao.Product;
import com.spotlightproducts.dao.Review;
import com.spotlightproducts.dao.User;
import com.spotlightproducts.utilities.SpotLightConstants;

@RestController
public class SellerDashBoardAPIController{
	
	//RESTful API to get the seller's statistics
	@RequestMapping(value = "/SellerStatisticsGet", method = RequestMethod.GET)
	public ResponseEntity<JSONResponse<Double>> getSellerStatistics(@RequestParam(value="sellerId", defaultValue="1") int sellerId){
		JSONResponse<Double> JsonResponse = new JSONResponse<Double>();
		SellerDashboard sdashboad = new SellerDashboard();
		DatabaseResponse<Double> dbresponse = sdashboad.getSellerRevenue(sellerId);
		JsonResponse.setStatus(dbresponse.getStatus());
		JsonResponse.setMessage(dbresponse.getMessage());
		JsonResponse.setData(dbresponse.getData());
		return new ResponseEntity<JSONResponse<Double>>(JsonResponse, HttpStatus.OK);
	}
	
	//RESTful API to get the products with low stocks
	@RequestMapping(value = "/SellerLowStockIndicatorGet", method = RequestMethod.GET)
	public ResponseEntity<JSONResponse<Product>> getSellerLowStockIndicator(@RequestBody User user, HttpServletRequest request){
		JSONResponse<Product> JsonResponse = new JSONResponse<Product>();
		HttpSession session = request.getSession();
		user.setEmail((String)session.getAttribute("email"));
		SellerDashboard dashboad = new SellerDashboard();
		DatabaseResponse<Product> dbresponse = dashboad.getSellerLowStocks(user);
		JsonResponse.setStatus(dbresponse.getStatus());
		JsonResponse.setMessage(dbresponse.getMessage());
		JsonResponse.setData(dbresponse.getData());
		return new ResponseEntity<JSONResponse<Product>>(JsonResponse, HttpStatus.OK);
	}
}