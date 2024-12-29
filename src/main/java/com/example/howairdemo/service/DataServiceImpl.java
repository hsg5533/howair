package com.example.howairdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.howairdemo.mapper.DataMapper;
import com.example.howairdemo.model.AvgVO;
import com.example.howairdemo.model.PredictVO;

@Service
public class DataServiceImpl implements DataService {
	@Autowired
	DataMapper dataMapper;
	
	@Override
	public List<PredictVO> kangseoList() {
		// TODO Auto-generated method stub
		return dataMapper.kangseoList();
	}

	@Override
	public List<PredictVO> geumjungList() {
		// TODO Auto-generated method stub
		return dataMapper.geumjungList();
	}

	@Override
	public List<PredictVO> gijangList() {
		// TODO Auto-generated method stub
		return dataMapper.gijangList();
	}

	@Override
	public List<PredictVO> namList() {
		// TODO Auto-generated method stub
		return dataMapper.namList();
	}

	@Override
	public List<PredictVO> dongList() {
		// TODO Auto-generated method stub
		return dataMapper.dongList();
	}

	@Override
	public List<PredictVO> dongraeList() {
		// TODO Auto-generated method stub
		return dataMapper.dongraeList();
	}

	@Override
	public List<PredictVO> busanjinList() {
		// TODO Auto-generated method stub
		return dataMapper.busanjinList();
	}

	@Override
	public List<PredictVO> bukList() {
		// TODO Auto-generated method stub
		return dataMapper.bukList();
	}

	@Override
	public List<PredictVO> sasangList() {
		// TODO Auto-generated method stub
		return dataMapper.sasangList();
	}

	@Override
	public List<PredictVO> sahaList() {
		// TODO Auto-generated method stub
		return dataMapper.sahaList();
	}

	@Override
	public List<PredictVO> seoList() {
		// TODO Auto-generated method stub
		return dataMapper.seoList();
	}

	@Override
	public List<PredictVO> suyeongList() {
		// TODO Auto-generated method stub
		return dataMapper.suyeongList();
	}

	@Override
	public List<PredictVO> yeonjeList() {
		// TODO Auto-generated method stub
		return dataMapper.yeonjeList();
	}

	@Override
	public List<PredictVO> youngdoList() {
		// TODO Auto-generated method stub
		return dataMapper.youngdoList();
	}

	@Override
	public List<PredictVO> jungList() {
		// TODO Auto-generated method stub
		return dataMapper.jungList();
	}

	@Override
	public List<PredictVO> haeundaeList() {
		// TODO Auto-generated method stub
		return dataMapper.haeundaeList();
	}

	@Override
	public List<AvgVO> detail2010() {
		// TODO Auto-generated method stub
		return dataMapper.detail2010();
	}

	@Override
	public List<AvgVO> detail2011() {
		// TODO Auto-generated method stub
		return dataMapper.detail2011();
	}

	@Override
	public List<AvgVO> detail2012() {
		// TODO Auto-generated method stub
		return dataMapper.detail2012();
	}

	@Override
	public List<AvgVO> detail2013() {
		// TODO Auto-generated method stub
		return dataMapper.detail2013();
	}

	@Override
	public List<AvgVO> detail2014() {
		// TODO Auto-generated method stub
		return dataMapper.detail2014();
	}

	@Override
	public List<AvgVO> detail2015() {
		// TODO Auto-generated method stub
		return dataMapper.detail2015();
	}

	@Override
	public List<AvgVO> detail2016() {
		// TODO Auto-generated method stub
		return dataMapper.detail2016();
	}

	@Override
	public List<AvgVO> detail2017() {
		// TODO Auto-generated method stub
		return dataMapper.detail2017();
	}

	@Override
	public List<AvgVO> detail2018() {
		// TODO Auto-generated method stub
		return dataMapper.detail2018();
	}

	@Override
	public List<AvgVO> detail2019() {
		// TODO Auto-generated method stub
		return dataMapper.detail2019();
	}

	@Override
	public List<AvgVO> detail2020() {
		// TODO Auto-generated method stub
		return dataMapper.detail2020();
	}

}
