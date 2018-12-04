/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.repositoresImpl;

import edu.poly.store.domain.Users;
import java.util.List;

/**
 *
 * @author duann
 */
public interface UserImpl {

    public Users addUser(Users user);

    public Users updateUser(Users user);

    public void removeUser(int userId);

    public List<Users> listUser();

    public List<Users> findUser(String fullName);

    public Users getUserById(int userId);

    public Users checkLogin(String username, String password);
}
