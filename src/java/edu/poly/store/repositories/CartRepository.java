/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.repositories;

import edu.poly.store.domain.Cart;
import edu.poly.store.repositoresImpl.CartImpl;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author duann
 */
public class CartRepository implements CartImpl {

    private Session session;

    public void getSession(Session session) {
        this.session = session;
    }

    @Override
    public Cart addCart(Cart cart) {
        this.session.save(cart);
        return cart;
    }

    @Override
    public Cart updateCart(Cart cart) {
        this.session.update(cart);
        return cart;
    }

    @Override
    public void removeCart(int id) {
        this.session.delete((Cart) this.session.get(Cart.class, id));
    }

    @Override
    public List<Cart> listCart() {
        return this.session.createQuery("from Cart").list();
    }

    @Override
    public Cart getCartById(int id) {
        return (Cart) this.session.get(Cart.class, id);
    }

}
