/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.repositoresImpl;

import edu.poly.store.domain.Product;
import java.util.List;

/**
 *
 * @author duann
 */
public interface ProductImpl {

    public Product addProduct(Product product);

    public Product updateProduct(Product product);

    public void removeProduct(int id);

    public List<Product> listProduct();

    public List<Product> findProduct(String productName);

    public Product getProductById(int id);

    public List<Product> listProductLimit(int gioiHan);
}
