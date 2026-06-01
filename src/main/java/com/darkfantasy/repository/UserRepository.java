package com.darkfantasy.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.darkfantasy.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long>{
    Optional<User> findUserByUserName(String userName);
    Optional<User> findUserByEmail(String email);

    boolean existsByUserName(String userName);
    boolean existsByEmail(String email);
}
