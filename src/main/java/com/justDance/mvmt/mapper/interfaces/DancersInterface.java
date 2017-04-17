package com.justDance.mvmt.mapper.interfaces;

import java.util.ArrayList;

import com.justDance.mvmt.model.Dancers;

public interface DancersInterface {

	ArrayList<Dancers> getAllDancersInfo();

	int getBid(String name);

	ArrayList<String> getCareerList(int bId);

	Dancers getPersonalData(int bId);

	ArrayList<String> getEducationData(int bId);

}
