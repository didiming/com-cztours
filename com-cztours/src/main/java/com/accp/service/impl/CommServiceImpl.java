package com.accp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.pagination.JspPagination;
import org.pagination.QueryHandler;
import org.pagination.impl.DefaultJspPagination;
import org.springframework.stereotype.Service;

import com.accp.dao.CommDao;
import com.accp.pojo.Comm;
import com.accp.service.CommService;

@Service("commService")
public class CommServiceImpl implements CommService {

	@Resource
	private CommDao commDao;

	public JspPagination<Comm> getCommList(Integer pageIndex, Integer pageSize) {
		return new DefaultJspPagination<>(pageIndex, pageSize, new QueryHandler<Comm>() {

			public Long getCount() {
				return commDao.getCommCount().longValue();
			}

			public List<Comm> getData(Integer pageIndex, Integer pageSize) {
				return commDao.getCommList(pageSize * (pageIndex - 1), pageSize);
			}
		});
	}

	@Override
	public boolean save(Comm comm) {
		// TODO Auto-generated method stub
		return commDao.save(comm) == 1;
	}

	@Override
	public Comm getCommById(Integer comm) {
		// TODO Auto-generated method stub
		return commDao.getCommById(comm);
	}

	@Override
	public boolean updateComm(Comm comm) {
		// TODO Auto-generated method stub
		return commDao.updateComm(comm) == 1;
	}

	@Override
	public boolean deleteCommById(Integer cId) {
		// TODO Auto-generated method stub
		return commDao.deleteCommById(cId) == 1;
	}

	@Override
	public List<Comm> getMallList() {
		// TODO Auto-generated method stub
		return commDao.getMallList();
	}

}
