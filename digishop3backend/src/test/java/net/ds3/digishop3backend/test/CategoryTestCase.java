package net.ds3.digishop3backend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.ds3.digishop3backend.dao.CategoryDAO;
import net.ds3.digishop3backend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static CategoryDAO categoryDAO;   
	
	private Category category;
	
	@BeforeClass
	public static void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("net.ds3.digishop3backend");
		context.refresh();
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
				
	}
	 
	@Test
	public void testAddCategory() {
		
		category = new Category();
		
		category.setName("Jeans");
		category.setDescription("This is some description for Jeans!");
		category.setImageURL("CAT_2.png");
		
		assertEquals("Successfully added a category inside the table!",true,categoryDAO.add(category));
		
	}
	
		
}
