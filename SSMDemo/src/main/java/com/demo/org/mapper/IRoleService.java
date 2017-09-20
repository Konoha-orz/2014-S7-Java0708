package com.demo.org.mapper;

import java.util.List;

import com.demo.org.bean.Role;



public interface IRoleService {
	public List<Role> getAll();
	public int insertRole(Role role);
}
