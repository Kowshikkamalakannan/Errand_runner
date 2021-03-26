 package com.errandrunner.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.errandrunner.hibernateutil.HibernateUtil;
import com.errandrunner.models.CookModel;
import com.errandrunner.models.ErunnerModel;

public class ErunnerDao {
	
	 public void save(ErunnerModel user) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the student object
	            session.save(user);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }

	    /**
	     * Update User
	     * @param user
	     */
	    public void update(ErunnerModel user) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the student object
	            session.update(user);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }

	    /**
	     * Delete User
	     * @param id
	     */
	    public void delete(int id) {

	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();

	            // Delete a user object
	            ErunnerModel user = session.get(ErunnerModel.class, id);
	            if (user != null) {
	                session.delete(user);
	                System.out.println("user is deleted");
	            }

	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }

	    /**
	     * Get User By ID
	     * @param id
	     * @return
	     */
	    public ErunnerModel get(int id) {

	        Transaction transaction = null;
	        ErunnerModel user = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // get an user object
	            user = session.get(ErunnerModel.class, id);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return user;
	    }

	    /**
	     * Get all Users
	     * @return
	     */
	    //@SuppressWarnings("unchecked")
	    @SuppressWarnings("unchecked")
		public List < ErunnerModel > getAllErunner() {

	        Transaction transaction = null;
	        List < ErunnerModel > listOfUser = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // get an user object

	            listOfUser = session.createQuery("from ErunnerModel").list();

	            // commit transaction
	            transaction.commit();
	         
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return listOfUser;
	    }
}
