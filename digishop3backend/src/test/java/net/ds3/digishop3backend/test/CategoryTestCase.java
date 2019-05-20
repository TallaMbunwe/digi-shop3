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
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");

	}

	/*
	 * @Test public void testAddCategory() {
	 * 
	 * category = new Category();
	 * 
	 * category.setName("Bags");
	 * category.setDescription("This is some description for Bags!");
	 * category.setImageURL("CAT_3.png");
	 * 
	 * assertEquals("Successfully added a category inside the table!",true,
	 * categoryDAO.add(category));
	 * 
	 * }
	 */

	/*
	 * @Test public void testGetCategory() { category = categoryDAO.get(2);
	 * 
	 * assertEquals("Successfully fetched a single category from the table!","Jeans"
	 * ,category.getName() ); }
	 */

	/*
	 * @Test public void testUpdateCategory() { category = categoryDAO.get(2);
	 * 
	 * category.setName("Trousers");
	 * 
	 * assertEquals("Successfully updated a single category from the table!",true,
	 * categoryDAO.update(category) ); }
	 */

	/*
	 * @Test public void testDeleteCategory() {
	 * 
	 * category = categoryDAO.get(2);
	 * assertEquals("Successfully deleted a single category from the table!",true,
	 * categoryDAO.delete(category) );
	 * 
	 * }
	 */

	/*
	 * @Test public void testListCategory() {
	 * 
	 * assertEquals("Successfully fetched the list of categories from the table!",2,
	 * categoryDAO.list().size() );
	 * 
	 * }
	 */

	@Test
	public void testCRUDCategory() {

		// adding  category
		category = new Category();

		category.setName("Bags");
		category.setDescription("This is some description for Bags!");
		category.setImageURL("CAT_1.png");

		assertEquals("Successfully added a category inside the table!", true, categoryDAO.add(category));

		category = new Category();

		category.setName("Shirts");
		category.setDescription("This is some description for Shirts!");
		category.setImageURL("CAT_2.png");

		assertEquals("Successfully added a category inside the table!", true, categoryDAO.add(category));

		// fetching and updating the category
		category = categoryDAO.get(2);
		
		category.setName("T-Shirts");
		 
		assertEquals("Successfully updated a single category from the table!",true,categoryDAO.update(category) );
		
		//deleting a category
		
		assertEquals("Successfully deleted a single category from the table!",true,categoryDAO.delete(category) );
		
		//fetching list category
		
		assertEquals("Successfully fetched the list of categories from the table!",7,categoryDAO.list().size() );
		 
	}

}
