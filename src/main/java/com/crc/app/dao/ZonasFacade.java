/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crc.app.dao;

import com.crc.app.modelo.Zonas;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author RICARDO
 */
@Stateless
public class ZonasFacade extends AbstractFacade<Zonas> {

    @PersistenceContext(unitName = "com.crc_demoJavaEE_war_1.0-SNAPSHOTPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ZonasFacade() {
        super(Zonas.class);
    }
    
    
    public List<Zonas> findZonasOrdenadas(){
        
        Query q = em.createNamedQuery("Zonas.findByOrden");
        
        return q.getResultList();
    }
    
}
