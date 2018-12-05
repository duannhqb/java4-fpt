/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.service;

import edu.poly.store.domain.CartDetail;
import edu.poly.store.domain.HibernateUtil;
import edu.poly.store.repositoresImpl.CartDetailImpl;
import edu.poly.store.repositories.CartDetailRepository;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duann
 */
public class CartDetailService implements CartDetailImpl {

    CartDetailRepository cartDetailRepository;

    public CartDetailService() {
        cartDetailRepository = new CartDetailRepository();
    }

    @Override
    public CartDetail addCartDetail(CartDetail cartDetail) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        cartDetailRepository.getSession(session);
        Transaction tx = null;
        CartDetail cd = null;
        try {
            tx = session.beginTransaction();
            cd = cartDetailRepository.addCartDetail(cartDetail);
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
        return cd;
    }

    @Override
    public CartDetail updateCartDetail(CartDetail cartDetail) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        cartDetailRepository.getSession(session);
        Transaction tx = null;
        CartDetail cd = null;
        try {
            tx = session.beginTransaction();
            cd = cartDetailRepository.updateCartDetail(cartDetail);
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
        return cd;
    }

    @Override
    public void removeCartDetail(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        cartDetailRepository.getSession(session);
        Transaction tx = null;
        CartDetail cd = null;
        try {
            tx = session.beginTransaction();
            cartDetailRepository.removeCartDetail(id);
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
    public List<CartDetail> listCartDetail() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        cartDetailRepository.getSession(session);
        try {
            return cartDetailRepository.listCartDetail();
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
    public CartDetail getCartDetailById(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        cartDetailRepository.getSession(session);
        try {
            return cartDetailRepository.getCartDetailById(id);
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
