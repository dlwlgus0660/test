package com.jeju.client.car.dao;

import java.util.List;

import com.jeju.client.car.vo.CarVO;


public interface CarDao {

public List<CarVO> carList();

public CarVO carDetail(CarVO cvo);
 
}
