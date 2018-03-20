package com.ait.dao;

import java.util.List;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.ait.entities.Mission;


@Stateless
@LocalBean
public class MissionDAO {

    @PersistenceContext
    private EntityManager em;
    
    public Mission getMission(int id) {
        return em.find(Mission.class, id);
    }
    
    public List<Mission> getMissions(){
    	Query query=em.createQuery("SELECT w FROM Mission w");
        return query.getResultList();
    }
    
    public List<Mission> getMissionByShuttleName(String shuttlename) {
    	Query query=em.createQuery("SELECT w FROM Mission w where w.orbitor like '" +shuttlename+ "'");
        return query.getResultList();
    }
    
    public List<Mission> getMissionByMissionName(String missionname) {
    	Query query=em.createQuery("SELECT w FROM Mission w where w.name like '" +missionname+ "'");
        return query.getResultList();
    }
 
    
}