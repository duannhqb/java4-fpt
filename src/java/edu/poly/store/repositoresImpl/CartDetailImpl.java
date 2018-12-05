/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.repositoresImpl;

import edu.poly.store.domain.CartDetail;
import java.util.List;

/**
 *
 * @author duann
 */
public interface CartDetailImpl {

    public CartDetail addCartDetail(CartDetail cartDetail);

    public CartDetail updateCartDetail(CartDetail cartDetail);

    public void removeCartDetail(int id);

    public List<CartDetail> listCartDetail();

    public CartDetail getCartDetailById(int id);
}
