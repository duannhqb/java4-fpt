/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.service;

import edu.poly.store.domain.HibernateUtil;
import edu.poly.store.domain.Users;
import edu.poly.store.repositoresImpl.UserImpl;
import edu.poly.store.repositories.UsersRepository;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duann
 */
public class UsersService implements UserImpl {

    UsersRepository userRepository;

    public UsersService() {
        userRepository = new UsersRepository();
    }

    @Override
    public Users addUser(Users user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        userRepository.getSession(session);
        Transaction tx = null;
        Users us = null;
        try {
            tx = session.beginTransaction();
            us = userRepository.addUser(user);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return us;
    }

    @Override
    public Users updateUser(Users user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        userRepository.getSession(session);
        Transaction tx = null;
        Users us = null;
        try {
            tx = session.beginTransaction();
            us = userRepository.updateUser(user);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return us;
    }

    @Override
    public void removeUser(int userId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        userRepository.getSession(session);
        Transaction tran = null;
        try {
            tran = session.beginTransaction();
            userRepository.removeUser(userId);
            tran.commit();
        } catch (Exception e) {
            if (tran != null) {
                tran.rollback();
            }
        }
    }

    @Override
    public List<Users> listUser() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        userRepository.getSession(session);
        try {
            return userRepository.listUser();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

    @Override
    public List<Users> findUser(String fullName) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        userRepository.getSession(session);
        try {
            return userRepository.findUser(fullName);
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

    @Override
    public Users getUserById(int userId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        userRepository.getSession(session);
        try {
            return userRepository.getUserById(userId);
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

    @Override
    public Users checkLogin(String username, String password) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        userRepository.getSession(session);
        try {
            return userRepository.checkLogin(username, password);
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

}
