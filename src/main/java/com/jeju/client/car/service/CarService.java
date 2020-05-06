package com.jeju.client.car.service;
import java.util.List;
import com.jeju.client.car.vo.*;


public interface CarService {
 
 public List<CarVO> carList();
 
 
 public CarVO carDetail(CarVO cvo);


 
}
