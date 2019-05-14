package net.ds3.digishop3backend.dao;

import java.util.List;

import net.ds3.digishop3backend.dto.Category;

public interface CategoryDAO {
	
	
	List<Category> list();
	Category get(int id);
}
