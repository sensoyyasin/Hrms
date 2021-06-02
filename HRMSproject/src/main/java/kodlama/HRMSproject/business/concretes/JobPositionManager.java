package kodlama.HRMSproject.business.concretes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kodlama.HRMSproject.business.abstracts.JobPositionService;
import kodlama.HRMSproject.core.utilities.results.DataResult;
import kodlama.HRMSproject.core.utilities.results.Result;
import kodlama.HRMSproject.core.utilities.results.SuccessDataResult;
import kodlama.HRMSproject.core.utilities.results.SuccessResult;
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

public DataResult<List<JobPosition>> getAll() {
	return new SuccessDataResult<List<JobPosition>>(this.jobPositionDao.findAll(),"Data Listelendi.");
	
}
	@Override
public Result add(JobPosition jobPosition) {
	this.jobPositionDao.save(jobPosition);
	return new SuccessResult("Başarılı");
}

}
