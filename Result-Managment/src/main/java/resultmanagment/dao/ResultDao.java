package resultmanagment.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import resultmanagment.model.Result;

@Component
public class ResultDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// create
	@Transactional
	public void createResult(Result result) {

		this.hibernateTemplate.save(result);

	}

	// get All result
	public List<Result> getAllResult() {
		List<Result> all = this.hibernateTemplate.loadAll(Result.class);
		return all;
	}

	// delete the single result
	@Transactional
	public void deleteResult(int rid) {
		Result p = this.hibernateTemplate.load(Result.class, rid);
		this.hibernateTemplate.delete(p);
	}

	// get the single result
	public Result getResult(int rid) {
		return this.hibernateTemplate.get(Result.class, rid);
	}
	
	//update result
	@Transactional
	public void updateResultData(Result result)
	{
		this.hibernateTemplate.update(result);
	}

}
