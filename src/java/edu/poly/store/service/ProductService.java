/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.service;

import edu.poly.store.repositoresImpl.ProductImpl;
import edu.poly.store.domain.HibernateUtil;
import edu.poly.store.domain.Product;
import edu.poly.store.repositories.ProductRepository;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duann
 */
public class ProductService implements ProductImpl {

    ProductRepository productRepository;

    public ProductService() {
        productRepository = new ProductRepository();
    }

    @Override
    public Product addProduct(Product product) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        productRepository.getSession(session);
        Transaction tx = null;
        Product prod = null;
        try {
            tx = session.beginTransaction();
            prod = productRepository.addProduct(product);
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
        return prod;
    }

    @Override
    public Product updateProduct(Product product) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        productRepository.getSession(session);
        Transaction tx = null;
        Product prod = null;
        try {
            tx = session.beginTransaction();
            prod = productRepository.updateProduct(product);
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
        return prod;
    }

    @Override
    public void removeProduct(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        productRepository.getSession(session);
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            productRepository.removeProduct(id);
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
    public List<Product> listProduct() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        productRepository.getSession(session);
        try {
            return productRepository.listProduct();
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
    public List<Product> findProduct(String productName) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        productRepository.getSession(session);
        try {
            return productRepository.findProduct(productName);
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
    public Product getProductById(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        productRepository.getSession(session);
        try {
            return productRepository.getProductById(id);
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
    public List<Product> listProductLimit(int gioiHan) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        productRepository.getSession(session);
        try {
            return productRepository.listProductLimit(gioiHan);
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
