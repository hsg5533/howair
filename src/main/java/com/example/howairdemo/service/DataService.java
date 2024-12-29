package com.example.howairdemo.service;

import java.util.List;

import com.example.howairdemo.model.AvgVO;
import com.example.howairdemo.model.PredictVO;


public interface DataService {

	public List<PredictVO> kangseoList();

	public List<PredictVO> geumjungList();

	public List<PredictVO> gijangList();

	public List<PredictVO> namList();

	public List<PredictVO> dongList();

	public List<PredictVO> dongraeList();

	public List<PredictVO> busanjinList();

	public List<PredictVO> bukList();

	public List<PredictVO> sasangList();

	public List<PredictVO> sahaList();

	public List<PredictVO> seoList();

	public List<PredictVO> suyeongList();

	public List<PredictVO> yeonjeList();

	public List<PredictVO> youngdoList();

	public List<PredictVO> jungList();

	public List<PredictVO> haeundaeList();

	public List<AvgVO> detail2010();

	public List<AvgVO> detail2011();

	public List<AvgVO> detail2012();

	public List<AvgVO> detail2013();

	public List<AvgVO> detail2014();

	public List<AvgVO> detail2015();

	public List<AvgVO> detail2016();

	public List<AvgVO> detail2017();

	public List<AvgVO> detail2018();

	public List<AvgVO> detail2019();

	public List<AvgVO> detail2020();
}
