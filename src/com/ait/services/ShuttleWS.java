package com.ait.services;

import java.util.List;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.ait.dao.ShuttleDAO;
import com.ait.entities.Shuttle;

@Path("/shuttles")
@Stateless
@LocalBean
public class ShuttleWS {

	@EJB
	private ShuttleDAO sDao;
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response findShuttles() {
		List<Shuttle> shuttles = sDao.getShuttles();
		return Response.status(200).entity(shuttles).build();
	}	

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/{id}")
	public Response findShuttleById(@PathParam("id") int id) {
		Shuttle shuttle = sDao.getShuttle(id);
		return Response.status(200).entity(shuttle).build();
	}	
	
}
