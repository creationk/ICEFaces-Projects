package com;

import javax.faces.event.ActionEvent;

public class Bean {

	private String input = null;

	public void validate(ActionEvent event) {
		if (input == null || input == "") {
			throw new CustomException("abc");
		}
	}

	public String getInput() {
		return input;
	}

	public void setInput(String input) {
		this.input = input;
	}

}
