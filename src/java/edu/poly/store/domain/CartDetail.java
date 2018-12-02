package edu.poly.store.domain;
// Generated Nov 25, 2018 10:46:09 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * CartDetail generated by hbm2java
 */
@Entity
@Table(name = "CartDetail",
         schema = "dbo",
         catalog = "ManagerPhone_ASS_JAVA4"
)
public class CartDetail implements java.io.Serializable {

    private int cartDetailId;
    private Cart cart;
    private Product product;
    private Integer quantity;

    public CartDetail() {
    }

    public CartDetail(int cartDetailId) {
        this.cartDetailId = cartDetailId;
    }

    public CartDetail(int cartDetailId, Cart cart, Product product, Integer quantity) {
        this.cartDetailId = cartDetailId;
        this.cart = cart;
        this.product = product;
        this.quantity = quantity;
    }

    @Id

    @Column(name = "CartDetailID", unique = true, nullable = false)
    public int getCartDetailId() {
        return this.cartDetailId;
    }

    public void setCartDetailId(int cartDetailId) {
        this.cartDetailId = cartDetailId;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CartID")
    public Cart getCart() {
        return this.cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ProductID")
    public Product getProduct() {
        return this.product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Column(name = "Quantity")
    public Integer getQuantity() {
        return this.quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

}