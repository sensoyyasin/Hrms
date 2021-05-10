package kodlama.HRMSproject.api.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kodlama.HRMSproject.business.abstracts.JobPositionService;
import kodlama.HRMSproject.entities.concretes.JobPosition;

@RestController
@RequestMapping("api/job_positions")

public class JobPositionController {
	
	private JobPositionService jobPositionService;
	
	@Autowired
	public JobPositionController(JobPositionService jobPositionService) {
		super();
		this.jobPositionService = jobPositionService;
	}
		@GetMapping("/getall")
		public List<JobPosition> getAll()
		{
			return this.jobPositionService.getAll();
		}
	
}
