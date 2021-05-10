package kodlama.HRMSproject.business.concretes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kodlama.HRMSproject.business.abstracts.JobPositionService;
import kodlama.HRMSproject.dataAccess.abstracts.JobPositionDao;
import kodlama.HRMSproject.entities.concretes.JobPosition;

@Service
public class JobPositionManager implements JobPositionService{
	private JobPositionDao jobPositionDao;
@Autowired
	public JobPositionManager(JobPositionDao jobPositionDao)
	{
	this.jobPositionDao=jobPositionDao;
	}
@Override

public List<JobPosition> getAll() {
	return this.jobPositionDao.findAll();
}

}
