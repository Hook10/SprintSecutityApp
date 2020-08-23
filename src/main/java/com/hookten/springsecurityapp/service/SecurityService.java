package com.hookten.springsecurityapp.service;

/**
 * Service for Security.
 *
 * @author sapas
 * @version 1.0
 */

public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
