package com.shuiwen.campusys.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.shuiwen.campusys.bean.Kemu;
import com.shuiwen.campusys.dao.KemuDAO;

public class KemuDAOImpl extends SqlSessionDaoSupport implements KemuDAO {
	int doStatus;

	@Override
	public Kemu insertKemu(Kemu kemu) {
		// TODO Auto-generated method stub
		try{
			doStatus = super.getSqlSession().insert("KemuMapper.insertKemu", kemu);
		}catch(Exception e){
			System.out.println(e.toString());
		}
		if(doStatus>0){
			int id = (Integer)super.getSqlSession().selectOne("KemuMapper.maxKemuID");
			kemu.setId(id);
			return kemu;
		}else{
			return null;
		}
	}
	
	@Override
	public int updateKemu(Kemu kemu) {
		// TODO Auto-generated method stub
		try{
			doStatus = super.getSqlSession().update("KemuMapper.updateKemu", kemu);
		}catch(Exception e){
			System.out.println(e.toString());
		}
		if(doStatus>0){
			return 1;
		}else{
			return 0;
		}
	}

	@Override
	public List<Kemu> findAllKemus(HashMap xiaoqumap) {
		// TODO Auto-generated method stub
		List<Kemu> kemus = null;
		int xiaoquid = (Integer)xiaoqumap.get("xiaoquid");
		if(xiaoquid >0){
			kemus = (List<Kemu>)super.getSqlSession().selectList("KemuMapper.findAllKemusByXiaoqu",xiaoqumap);
		}else{
			kemus = (List<Kemu>)super.getSqlSession().selectList("KemuMapper.findAllKemus");
		}
		return kemus;
	}
	
	@Override
	public Kemu findKemuByID(HashMap kemuid) {
		// TODO Auto-generated method stub
		return (Kemu) super.getSqlSession().selectOne("KemuMapper.findKemuByID",kemuid);
	}

	@Override
	public int deleteKemu(HashMap hashMap) {
		// TODO Auto-generated method stub
		return super.getSqlSession().delete("KemuMapper.deleteKemu", hashMap);
      
	}


	@Override
	public Kemu validKemu(Kemu kemu) {
		// TODO Auto-generated method stub
		Kemu backkemu = (Kemu) super.getSqlSession().selectOne("KemuMapper.validKemu", kemu);
		return backkemu;
	}

	
}
