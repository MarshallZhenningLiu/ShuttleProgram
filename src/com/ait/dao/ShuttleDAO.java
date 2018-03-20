package com.ait.dao;

import java.util.List;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.ait.entities.Shuttle;

@Stateless
@LocalBean
public class ShuttleDAO {

    @PersistenceContext
    private EntityManager em;
    
    public Shuttle getShuttle(int id) {
        return em.find(Shuttle.class, id);
    }
    
    public List<Shuttle> getShuttles(){
    	Query query=em.createQuery("SELECT w FROM Shuttle w");
        return query.getResultList();
    }
    
}
