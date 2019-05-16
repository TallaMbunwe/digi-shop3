package net.ds3.digishop3backend.dao;

import java.util.List;

import net.ds3.digishop3backend.dto.Category;

public interface CategoryDAO {
	
	boolean add(Category category);
	
	List<Category> list();
	Category get(int id);
}
