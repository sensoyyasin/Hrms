package kodlama.HRMSproject.api.controllers;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kodlama.HRMSproject.business.abstracts.JobPositionService;
import kodlama.HRMSproject.core.utilities.results.DataResult;
import kodlama.HRMSproject.entities.concretes.JobPosition;
import kodlama.HRMSproject.core.utilities.results.Result;

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
		public DataResult<List<JobPosition>> getAll()
		{
			return this.jobPositionService.getAll();
		}
	
	@PostMapping("/add")
	public Result add(@RequestBody JobPosition jobPosition) {
		return this.jobPositionService.add(jobPosition);
	}
		
}
