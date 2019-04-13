package com.neu.best.dao;

import org.hibernate.HibernateException;


import com.neu.best.pojo.ElectronicItem;

public class ItemDAO extends DAO {
	
	
	public ElectronicItem addItem(ElectronicItem item)
			 {
		try {
			begin();
			System.out.println("inside car DAO");
			
			ElectronicItem i = new ElectronicItem();
			i.setPrice(item.getPrice());
			i.setDescription(item.getDescription());
			i.setImageSrc(item.getImageSrc());
			i.setItemBrand(item.getItemBrand());
			i.setMakeYear(item.getMakeYear());
			i.setModelNum(item.getModelNum());
		
			
			
			getSession().save(i);
			commit();
			return i;

		} catch (HibernateException e) {
			throw e;
		}
	}

}
