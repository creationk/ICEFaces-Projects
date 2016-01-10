package com;

public class CustomException extends RuntimeException {
	private static final long serialVersionUID = 8962771941614049509L;

	public CustomException(String string) {
		super(string);
	}

}
