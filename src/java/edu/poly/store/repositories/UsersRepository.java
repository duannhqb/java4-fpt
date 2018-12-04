/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.repositories;

import edu.poly.store.domain.Users;
import edu.poly.store.repositoresImpl.UserImpl;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author duann
 */
public class UsersRepository implements UserImpl {

    private Session session;

    public void getSession(Session session) {
        this.session = session;
    }

    @Override
    public Users addUser(Users user) {
        this.session.save(user);
        return user;
    }

    @Override
    public Users updateUser(Users user) {
        this.session.update(user);
        return user;
    }

    @Override
    public void removeUser(int userId) {
        Users user = (Users) this.session.get(Users.class, userId);
        if (user != null) {
            this.session.delete(user);
        }
    }

    @Override
    public List<Users> listUser() {
        return this.session.createQuery("from Users").list();
    }

    @Override
    public List<Users> findUser(String fullName) {
        Query query = session.createQuery("from Users where fullName like :name");
        query.setParameter("name", "%" + fullName + "%");
        return query.list();
    }

    @Override
    public Users getUserById(int userId) {
        return (Users) this.session.get(Users.class, userId);
    }

    @Override
    public Users checkLogin(String username, String password) {
        Query query = this.session.createQuery("from Users where username like :username and password like :password");
        query.setParameter("username", username);
        query.setParameter("password", password);
        return (Users) query.list().get(0);
    }
}
