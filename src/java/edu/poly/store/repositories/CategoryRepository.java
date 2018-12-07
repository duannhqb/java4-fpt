/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.repositories;

import edu.poly.store.domain.Category;
import edu.poly.store.repositoresImpl.CategoryImpl;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author duann
 */
public class CategoryRepository implements CategoryImpl {

    Session session;

    public void getSession(Session session) {
        this.session = session;
    }

    @Override
    public Category addCategory(Category category) {
        this.session.save(category);
        return category;
    }

    @Override
    public Category updateCategory(Category category) {
        this.session.update(category);
        return category;
    }

    @Override
    public void removeCategory(int id) {
        this.session.delete(this.session.get(Category.class, id));
    }

    @Override
    public List<Category> listCategory() {
        return this.session.createQuery("from Category").list();
    }

    @Override
    public List<Category> findCategory(String categoryName) {
        Query query = this.session.createQuery("from Category where CategoryName like :name");
        query.setParameter("name", "%" + categoryName + "%");
        return query.list();
    }

    @Override
    public Category getCategoryById(int id) {
        return (Category) this.session.get(Category.class, id);
    }

}
