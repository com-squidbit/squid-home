package com.squidbit.deepbluesea.service;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.json.JSONException;

@Path("/formSubmissionService")
public class FormAcceptanceService {

	@POST
	@Produces(MediaType.APPLICATION_JSON)
	public Response receiveForm() throws JSONException{
		String result = "@Produces(\"application/json\") Output: \n\nForm submission error! Fields validation failed?\n\n";// + jsonObject;
			if (!validateForm()) {
				return Response.status(400).entity(result).build();
			}
			// process form data
			//JSONObject jsonObject = new JSONObject();
			result = "@Produces(\"application/json\") Output: \n\nForm submission success! \n\n";// + jsonObject;
		return Response.status(200).entity(result).build();
	}
	
	@GET
	@Path("/test")
	@Produces(MediaType.TEXT_PLAIN)
	public String testingBackend() {
		return "We're here!";
	}
	
	private Boolean validateForm() {
		Boolean success = Boolean.FALSE;
		// TODO: call validation methods
		success = Boolean.TRUE;
		return success;
	}

}
