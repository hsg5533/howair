package com.example.howairdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.howairdemo.model.AvgVO;
import com.example.howairdemo.model.PredictVO;
import com.example.howairdemo.service.DataService;

import lombok.extern.java.Log;

@Log
@RestController
public class DataController {
	@Autowired
	DataService dataService;

	@PostMapping("/dustdetailList")
	public List<AvgVO> dustdetailList(String year) {
		switch (year) {
		case "2010년":
			log.info("2010");
			return dataService.detail2010();
		case "2011년":
			log.info("2011");
			return dataService.detail2011();
		case "2012년":
			log.info("2012");
			return dataService.detail2012();
		case "2013년":
			log.info("2013");
			return dataService.detail2013();
		case "2014년":
			log.info("2014");
			return dataService.detail2014();
		case "2015년":
			log.info("2015");
			return dataService.detail2015();
		case "2016년":
			log.info("2016");
			return dataService.detail2016();
		case "2017년":
			log.info("2017");
			return dataService.detail2017();
		case "2018년":
			log.info("2018");
			return dataService.detail2018();
		case "2019년":
			log.info("2019");
			return dataService.detail2019();
		case "2020년":
			log.info("2020");
			return dataService.detail2020();
		default:
			return null;
		}
	}

	@PostMapping("/chart")
	public List<PredictVO> greenchart(String region) {
		switch (region) {
		case "부산광역시 강서구":
			log.info("부산광역시 강서구");
			return dataService.kangseoList();
		case "부산광역시 금정구":
			log.info("부산광역시 금정구");
			return dataService.geumjungList();
		case "부산광역시 기장군":
			log.info("부산광역시 기장군");
			return dataService.gijangList();
		case "부산광역시 남구":
			log.info("부산광역시 남구");
			return dataService.namList();
		case "부산광역시 동구":
			log.info("부산광역시 동구");
			return dataService.dongList();
		case "부산광역시 동래구":
			log.info("부산광역시 동래구");
			return dataService.dongraeList();
		case "부산광역시 부산진구":
			log.info("부산광역시 부산진구");
			return dataService.busanjinList();
		case "부산광역시 북구":
			log.info("부산광역시 북구");
			return dataService.bukList();
		case "부산광역시 사상구":
			log.info("부산광역시 사상구");
			return dataService.sasangList();
		case "부산광역시 사하구":
			log.info("부산광역시 사하구");
			return dataService.sahaList();
		case "부산광역시 서구":
			log.info("부산광역시 서구");
			return dataService.seoList();
		case "부산광역시 수영구":
			log.info("부산광역시 수영구");
			return dataService.suyeongList();
		case "부산광역시 연제구":
			log.info("부산광역시 연제구");
			return dataService.yeonjeList();
		case "부산광역시 영도구":
			log.info("부산광역시 영도구");
			return dataService.youngdoList();
		case "부산광역시 중구":
			log.info("부산광역시 중구");
			return dataService.jungList();
		case "부산광역시 해운대구":
			log.info("부산광역시 해운대구");
			return dataService.haeundaeList();
		default:
			return null;
		}
	}

}
