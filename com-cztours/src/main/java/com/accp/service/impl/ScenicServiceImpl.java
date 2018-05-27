package com.accp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.pagination.JspPagination;
import org.pagination.QueryHandler;
import org.pagination.impl.DefaultJspPagination;
import org.springframework.stereotype.Service;

import com.accp.dao.ScenicDao;
import com.accp.pojo.Scenic;
import com.accp.service.ScenicService;

@Service("scenicService")
public class ScenicServiceImpl implements ScenicService {

	@Resource
	private ScenicDao scenicDao;

	public JspPagination<Scenic> getScenicList(Integer pageIndex, Integer pageSize) {
		return new DefaultJspPagination<>(pageIndex, pageSize, new QueryHandler<Scenic>() {

			public Long getCount() {
				return scenicDao.getScenicCount().longValue();
			}

			public List<Scenic> getData(Integer pageIndex, Integer pageSize) {
				return scenicDao.getScenicList(pageSize * (pageIndex - 1), pageSize);
			}
		});
	}

	@Override
	public boolean save(Scenic scenic) {
		// TODO Auto-generated method stub
		return scenicDao.save(scenic) == 1;
	}
	
	public Scenic getScenicById(Integer sId){
		return scenicDao.getScenicById(sId);
	}

	@Override
	public boolean updateScenic(Scenic scenic) {
		// TODO Auto-generated method stub
		return scenicDao.updateScenic(scenic) == 1;
	}

	@Override
	public boolean deleteScenicById(Integer sId) {
		// TODO Auto-generated method stub
		return scenicDao.deleteScenicById(sId) == 1;
	}

	@Override
	public List<Scenic> getList() {
		// TODO Auto-generated method stub
		return scenicDao.getList();
	}

}
