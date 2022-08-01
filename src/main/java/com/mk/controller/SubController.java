package com.mk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface SubController {

	void execute(HttpServletRequest req, HttpServletResponse resp);
}
