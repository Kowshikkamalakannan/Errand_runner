package com.errandrunner.dao;

import com.errandrunner.models.Model;
import com.errandrunner.models.UserModel;

public interface Dao {
	void save(Model item);
	void delete(int id);
	void get(int id);
	void update(Model item);
}
