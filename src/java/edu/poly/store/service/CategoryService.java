/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.service;

import edu.poly.store.domain.Category;
import edu.poly.store.domain.HibernateUtil;
import edu.poly.store.repositoresImpl.CategoryImpl;
import edu.poly.store.repositories.CategoryRepository;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duann
 */
public class CategoryService implements CategoryImpl {

    CategoryRepository categoryRepository;

    public CategoryService() {
        categoryRepository = new CategoryRepository();
    }

    @Override
    public Category addCategory(Category category) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        categoryRepository.getSession(session);
        Transaction tx = null;
        Category ct = null;
        try {
            tx = session.beginTransaction();
            ct = categoryRepository.addCategory(category);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            try {
                if (session != null) {
                    session.close();
                }
            } catch (Exception e) {
            }
        }
        return ct;
    }

    @Override
    public Category updateCategory(Category category) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        categoryRepository.getSession(session);
        Transaction tx = null;
        Category ct = null;
        try {
            tx = session.beginTransaction();
            ct = categoryRepository.updateCategory(category);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            try {
                if (session != null) {
                    session.close();
                }
            } catch (Exception e) {
            }
        }
        return ct;
    }

    @Override
    public void removeCategory(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        categoryRepository.getSession(session);
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            categoryRepository.removeCategory(id);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            try {
                if (session != null) {
                    session.close();
                }
            } catch (Exception e) {
            }
        }
    }

    @Override
    public List<Category> listCategory() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        categoryRepository.getSession(session);
        try {
            return categoryRepository.listCategory();
        } finally {
            try {
                if (session != null) {
                    session.close();
                }
            } catch (Exception e) {
            }
        }
    }

    @Override
    public List<Category> findCategory(String categoryName) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        categoryRepository.getSession(session);
        try {
            return categoryRepository.findCategory(categoryName);
        } finally {
            try {
                if (session != null) {
                    session.close();
                }
            } catch (Exception e) {
            }
        }
    }

    @Override
    public Category getCategoryById(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        categoryRepository.getSession(session);
        try {
            return categoryRepository.getCategoryById(id);
        } finally {
            try {
                if (session != null) {
                    session.close();
                }
            } catch (Exception e) {
            }
        }
    }

}
