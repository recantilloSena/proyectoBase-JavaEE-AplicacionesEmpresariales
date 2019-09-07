/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crc.app.rest;

import com.crc.app.dao.PersonasFacade;
import com.crc.app.dao.ZonasFacade;
import com.crc.app.modelo.Personas;
import com.crc.app.modelo.Zonas;
import java.sql.SQLException;
import java.util.List;
import javax.ejb.EJB;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author RICARDO
 */
@Path("/rest")
public class PersonasRest {
    
    @EJB
    private PersonasFacade personasFacade;
    
    @EJB
    private ZonasFacade zonasFacade;
    
    
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/personas/list")
    public List<Personas> findAllPersonas() throws SQLException {
        
        return personasFacade.findAll();
    }
    
    
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/zonas/list")
    public List<Zonas> findAllZonas() throws SQLException {
        
        return zonasFacade.findAll();
    }
    
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/zonas/sort")
    public List<Zonas> findAllZonasSort() throws SQLException {
        
        return zonasFacade.findZonasOrdenadas();
    }
    
    
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/personas/zonas/{id}")
    public List<Personas> findPersonasByIdZona(@PathParam("id") Integer id ) throws SQLException {
        
        return personasFacade.findPersonasByIdZona(id);
    }
    
}
