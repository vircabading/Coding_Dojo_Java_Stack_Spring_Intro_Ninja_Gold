package com.vcabading.ninjagold.models;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

////////////////////////////////////////////////////////
//	NINJA GOLD
////////////////////////////////////////////////////////

public class NinjaGold {
	private int gold;
	
	//	//// CONSTRUCTOR ///////////////////////////////
	
	public NinjaGold() {
		this.gold = 0;
	}

	public addGold(int min, int max) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HHmmss");
        int currentTime = Integer.parseInt(simpleDateFormat.format(new Date()));
        Random randMachine = new Random();
        randMachine.setSeed(currentTime);
        int difference = max - min;
        int randomAddNumber = randMachine.nextInt(difference) + min;
        this.gold += randomAddNumber;
	}
	
	//	//// GETTTERS AND SETTERS //////////////////////
	
	public int getGold() {
		return gold;
	}

	public void setGold(int gold) {
		this.gold = gold;
	}
	
	
}
