/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.repositoresImpl;

import edu.poly.store.domain.Category;
import java.util.List;

/**
 *
 * @author duann
 */
public interface CategoryImpl {

    public Category addCategory(Category category);

    public Category updateCategory(Category category);

    public void removeCategory(int id);

    public List<Category> listCategory();

    public List<Category> findCategory(String categoryName);

    public Category getCategoryById(int id);
}
