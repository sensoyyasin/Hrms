package kodlama.HRMSproject.business.abstracts;

import java.util.List;

import kodlama.HRMSproject.entities.concretes.JobPosition;

public interface JobPositionService {
	List<JobPosition> getAll();
}
