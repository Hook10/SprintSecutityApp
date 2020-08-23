package com.hookten.springsecurityapp.service;

import com.hookten.springsecurityapp.model.User;

/**
 * Service class for {@link UserService } interface
 *
 * @@author sapas
 * @version 1.0
 */

public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
