package tw.brad.api;

import java.io.Serializable;

public class Bike implements Serializable{
	protected String color;
	protected double speed;
	
	public Bike() {
		
	}
	/**
	 * 取得顏色
	 * @return
	 */
	public String getcolor() {
		return this.color;
	}
	/**
	 * 取得速度
	 * @return
	 */
	public double getSpeed() {
		return this.speed;
	}
	/**
	 * 加速度
	 */
	public void upSpeed() {
		speed=speed<1?1:speed*1.4;
//		double randSpeed=(Math.random()*50+10);
//		speed+=randSpeed;
	}
	/**
	 * 減速度
	 */
	public void downSpeed() {
		speed=speed<1?0:speed*0.5; 
	}       //boolean?值1:值2
	@Override
	public String toString() {
		return "bike";
	}
	@Override
	public boolean equals(Object obj) {
		return true;
	}
}
