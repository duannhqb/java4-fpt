/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.service;

import edu.poly.store.domain.Cart;
import edu.poly.store.domain.HibernateUtil;
import edu.poly.store.repositoresImpl.CartImpl;
import edu.poly.store.repositories.CartRepository;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duann
 */
public class CartService implements CartImpl {

    CartRepository cartRepository;

    public CartService() {
        cartRepository = new CartRepository();
    }

    @Override
    public Cart addCart(Cart cart) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        cartRepository.getSession(session);
        Transaction tx = null;
        Cart c = null;
        try {
            tx = session.beginTransaction();
            c = cartRepository.addCart(cart);
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
        return c;
    }

    @Override
    public Cart updateCart(Cart cart) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        cartRepository.getSession(session);
        Transaction tx = null;
        Cart c = null;
        try {
            tx = session.beginTransaction();
            c = cartRepository.updateCart(cart);
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
        return c;
    }

    @Override
    public void removeCart(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        cartRepository.getSession(session);
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            this.cartRepository.removeCart(id);
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
    public List<Cart> listCart() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        cartRepository.getSession(session);
        try {
            return this.cartRepository.listCart();
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
    public Cart getCartById(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        cartRepository.getSession(session);
        try {
            return this.cartRepository.getCartById(id);
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
