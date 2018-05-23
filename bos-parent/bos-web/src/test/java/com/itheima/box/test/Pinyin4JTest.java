package com.itheima.box.test;

import org.junit.Test;

import net.sourceforge.pinyin4j.PinyinHelper;

public class Pinyin4JTest {

	@Test
	public void test(){
		String pro="河北省";
		String city="石家庄";
		//简码 HBSJZ
		//城市编码shijiazhuang
		pro=pro.substring(0, pro.length()-1);
	}
}
