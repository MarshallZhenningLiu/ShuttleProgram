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

import com.ait.dao.MissionDAO;
import com.ait.entities.Mission;

@Path("/missions")
@Stateless
@LocalBean
public class MissionWS {

	@EJB
	private MissionDAO mDao;
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response findMissions() {
		List<Mission> missions = mDao.getMissions();
		return Response.status(200).entity(missions).build();
	}	

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/{id}")
	public Response findMissionById(@PathParam("id") int id) {
		Mission mission = mDao.getMission(id);
		return Response.status(200).entity(mission).build();
	}	
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/searchshuttle/{shuttlename}")
	public Response findMissionByShuttleName(@PathParam("shuttlename") String shuttlename) {
		List<Mission> missions = mDao.getMissionByShuttleName(shuttlename);
		return Response.status(200).entity(missions).build();
	}	
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/searchmission/{missionname}")
	public Response findMissionByMissionName(@PathParam("missionname") String missionname) {
		List<Mission> missions = mDao.getMissionByMissionName(missionname);
		return Response.status(200).entity(missions).build();
	}	
	
}
