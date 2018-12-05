/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.repositoresImpl;

import edu.poly.store.domain.Cart;
import java.util.List;

/**
 *
 * @author duann
 */
public interface CartImpl {

    public Cart addCart(Cart cart);

    public Cart updateCart(Cart cart);

    public void removeCart(int id);

    public List<Cart> listCart();

    public Cart getCartById(int id);
}
