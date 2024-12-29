package com.example.howairdemo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PredictVO {
	private float pm_figure; //예측수치
	private String pm_idx; //좋고 나쁨을 나타내는 수준
	private String datetime; //일자
}
