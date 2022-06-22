package com.jw.DbUtil;

import java.util.ArrayList;

public class CategoryBean {
	

	private String 	num;
	private String		parentNum;
	private int		hierarchyLevel;
	private String 	name;
	ArrayList<CategoryBean> childBeans = new ArrayList<CategoryBean>();
	
	public CategoryBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CategoryBean(String num, String parentNum, int hierarchyLevel, String name) {
		super();
		this.num = num;
		this.parentNum = parentNum;
		this.hierarchyLevel = hierarchyLevel;
		this.name = name;
		childBeans = null;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getParentNum() {
		return parentNum;
	}
	public void setParentNum(String parentNum) {
		this.parentNum = parentNum;
	}
	public int getHierarchyLevel() {
		return hierarchyLevel;
	}
	public void setHierarchyLevel(int hierarchyLevel) {
		this.hierarchyLevel = hierarchyLevel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void addChild(CategoryBean cb)
	{
		childBeans.add(cb);
	}
	public ArrayList<CategoryBean> getChild()
	{
		return childBeans;
	}
	public CategoryBean findChildBean(String num)
	{
		for (CategoryBean cb : childBeans) {
			if(cb.getNum().equals(num))
			{
				return cb;
			}
		}
		 return null;
	}
	
}
