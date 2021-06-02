package kodlama.HRMSproject.business.abstracts;

import java.util.List;

import kodlama.HRMSproject.core.utilities.results.DataResult;
import kodlama.HRMSproject.core.utilities.results.Result;
import kodlama.HRMSproject.entities.concretes.JobPosition;

public interface JobPositionService {
	DataResult<List<JobPosition>>  getAll();
	Result add(JobPosition jobPosition);
	
}
