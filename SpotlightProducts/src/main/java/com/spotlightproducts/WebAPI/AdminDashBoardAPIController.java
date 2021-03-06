package com.spotlightproducts.WebAPI;

import java.util.List;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.spotlightproducts.businesslibrary.AdminDashboard;
import com.spotlightproducts.businesslibrary.SellerDashboard;
import com.spotlightproducts.businesslibrary.UserDashboard;
import com.spotlightproducts.dao.DatabaseResponse;
import com.spotlightproducts.dao.JSONResponse;
import com.spotlightproducts.dao.Order;
import com.spotlightproducts.dao.Product;
import com.spotlightproducts.dao.Review;
import com.spotlightproducts.dao.SpotLightProductsGraph;
import com.spotlightproducts.dao.User;
import com.spotlightproducts.utilities.SpotLightConstants;

@RestController
public class AdminDashBoardAPIController{
	
	//RESTful API to get admin statistics to for total number of users
	@RequestMapping(value = "/AdminStatisticsTotalUserCountGet", method = RequestMethod.GET)
	public ResponseEntity<JSONResponse<Integer>> getAdminStatisticsForTotalCount(@RequestBody User user, HttpServletRequest request){
		JSONResponse<Integer> JsonResponse = new JSONResponse<Integer>();
		HttpSession session = request.getSession();
		user.setEmail((String)session.getAttribute(SpotLightConstants.CONSTANT_EMAIL));
		AdminDashboard admDashboad = new AdminDashboard();
		DatabaseResponse<Integer> dbresponse = admDashboad.getTotalUsers();
		JsonResponse.setStatus(dbresponse.getStatus());
		JsonResponse.setMessage(dbresponse.getMessage());
		JsonResponse.setData(dbresponse.getData());
		return new ResponseEntity<JSONResponse<Integer>>(JsonResponse, HttpStatus.OK);
	}
	
	//RESTful API to get User Graph Statistics
	@RequestMapping(value = "/AdminStatisticsUsersGraphGet", method = RequestMethod.GET)
	public ResponseEntity<JSONResponse<SpotLightProductsGraph>> getAdminStatisticsForUsersGraph(HttpServletRequest request){
		JSONResponse<SpotLightProductsGraph> JsonResponse = new JSONResponse<SpotLightProductsGraph>();
		HttpSession session = request.getSession();
		AdminDashboard admDashboad = new AdminDashboard();
		DatabaseResponse<SpotLightProductsGraph> dbresponse = admDashboad.getUsersGraph();
		JsonResponse.setStatus(dbresponse.getStatus());
		JsonResponse.setMessage(dbresponse.getMessage());
		JsonResponse.setData(dbresponse.getData());
		return new ResponseEntity<JSONResponse<SpotLightProductsGraph>>(JsonResponse, HttpStatus.OK);
	}
	
	//RESTful API to get all the products
	@RequestMapping(value = "/AllProductGet", method = RequestMethod.GET)
	public ResponseEntity<JSONResponse<Product>> getAllProducts(@RequestBody User user, HttpServletRequest request){
		JSONResponse<Product> JsonResponse = new JSONResponse<Product>();
		HttpSession session = request.getSession();
		user.setEmail((String)session.getAttribute(SpotLightConstants.CONSTANT_EMAIL));
		AdminDashboard admDashboad = new AdminDashboard();
		DatabaseResponse<Product> dbresponse = admDashboad.getAllProductsList();
		JsonResponse.setStatus(dbresponse.getStatus());
		JsonResponse.setMessage(dbresponse.getMessage());
		JsonResponse.setData(dbresponse.getData());
		return new ResponseEntity<JSONResponse<Product>>(JsonResponse, HttpStatus.OK);
	}
	
	//RESTful API to delete any product
	@RequestMapping(value = "/DeleteAnyProduct", method = RequestMethod.POST)
	public ResponseEntity<JSONResponse<Product>> removeProduct(@RequestBody Product product, HttpServletRequest request){
		JSONResponse<Product> JsonResponse = new JSONResponse<Product>();
		AdminDashboard admDashboad = new AdminDashboard();
		DatabaseResponse<Product> dbresponse = admDashboad.removeAnyProduct(product,request);
		JsonResponse.setStatus(dbresponse.getStatus());
		JsonResponse.setMessage(dbresponse.getMessage());
		JsonResponse.setData(dbresponse.getData());
		return new ResponseEntity<JSONResponse<Product>>(JsonResponse, HttpStatus.OK);
	}
}