package com.GB.ChinaMobileMS.services.interfaces;

import com.GB.ChinaMobileMS.entity.User;

public interface UserService {
	User login(String userName, String password);
}
