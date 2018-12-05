/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.repositories;

import edu.poly.store.domain.CartDetail;
import edu.poly.store.repositoresImpl.CartDetailImpl;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author duann
 */
public class CartDetailRepository implements CartDetailImpl {

    private Session session;

    public void getSession(Session session) {
        this.session = session;
    }

    @Override
    public CartDetail addCartDetail(CartDetail cartDetail) {
        this.session.save(cartDetail);
        return cartDetail;
    }

    @Override
    public CartDetail updateCartDetail(CartDetail cartDetail) {
        this.session.update(cartDetail);
        return cartDetail;
    }

    @Override
    public void removeCartDetail(int id) {
        this.session.delete(this.session.get(CartDetail.class, id));
    }

    @Override
    public List<CartDetail> listCartDetail() {
        return this.session.createQuery("from CartDetail").list();
    }

    @Override
    public CartDetail getCartDetailById(int id) {
        return (CartDetail) this.session.get(CartDetail.class, id);
    }
}
