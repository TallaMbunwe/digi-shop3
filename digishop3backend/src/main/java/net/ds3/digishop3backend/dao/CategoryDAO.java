package net.ds3.digishop3backend.dao;

import java.util.List;

import net.ds3.digishop3backend.dto.Category;

public interface CategoryDAO {
	
	
	Category get(int id);
	List<Category> list();
	boolean add(Category category);
	boolean update(Category category);
	boolean delete(Category category);
	
	
}
