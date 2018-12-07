/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.repositories;

import edu.poly.store.repositoresImpl.ProductImpl;
import edu.poly.store.domain.Product;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author duann
 */
public class ProductRepository implements ProductImpl {

    private Session session;

    public void getSession(Session session) {
        this.session = session;
    }

    @Override
    public Product addProduct(Product product) {
        this.session.persist(product);
        return product;
    }

    @Override
    public Product updateProduct(Product product) {
        this.session.update(product);
        return product;
    }

    @Override
    public void removeProduct(int id) {
        Product pr = (Product) this.session.get(Product.class, id);
        if (pr != null) {
            this.session.delete(pr);
        }
    }

    @Override
    public List<Product> listProduct() {
        return this.session.createQuery("from Product").list();
    }

    @Override
    public List<Product> findProduct(String ProductName) {
        Query query = this.session.createQuery("from Product where ProductName like :name");
        query.setParameter("name", "%" + ProductName + "%");
        return query.list();
    }

    @Override
    public Product getProductById(int id) {
        return (Product) this.session.get(Product.class, id);
    }

    @Override
    public List<Product> listProductLimit(int gioiHan) {
        return this.session.createQuery("from Product").setMaxResults(gioiHan).list();
    }
}
