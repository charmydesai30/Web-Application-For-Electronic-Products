package com.neu.best.dao;



import java.util.Date;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import com.neu.best.pojo.User;





public class UserDAO extends DAO {

	public UserDAO() {
	}

	public User get(String username, String password)  {
		try {
			begin();
			User user =null;
			Query q = getSession().createQuery("from User where username = :username and password = :password");
			q.setString("username", username);
			q.setString("password", password);	
			if(q.list().size()>0) {
			 user = (User) q.list().get(0);}
			commit();
			return user;
		} catch (HibernateException e) {
			
			throw e;
		}
		//return null;
	}
	


	public User register(User u)
			 {
		try {
			begin();
			System.out.println("inside DAO");
			Date d = new Date();	
						
			getSession().save(u);
			commit();
			return u;

		} catch (HibernateException e) {
			
			throw e;
			
			
		}
	}

	
	
	
}