package com.spotlightproducts.utilities;

import java.util.Comparator;

import com.spotlightproducts.dao.Product;

public class SpotlightComparatorNameDesc implements Comparator{
	
	//method to sort the product based on product names from Z-A
	@Override
	public int compare(Object obj1, Object obj2) {
		// TODO Auto-generated method stub
		Product p1 = (Product)obj1;
		Product p2 = (Product)obj2;
	String productName1=p1.getProductName();
	String productName2=p2.getProductName();
	if(productName1.compareToIgnoreCase(productName2) < 0){
		return 1;
	}
	else{
		return -1;
	}

	}

}
