package com.itheima.box.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.junit.Test;

public class POITest {

	//使用POI解析Excel文件
//	@Test
	public void test() throws IOException{
		String file="G:\\javabook\\BOS\\BOS-day05\\BOS-day05\\资料\\分区导入测试数据.xls";
		//包装一个Excel对象
		HSSFWorkbook workbook=new HSSFWorkbook(new FileInputStream(new File(file)));
		//读取文件中第一个sheet标签页
		HSSFSheet hssfSheet=workbook.getSheetAt(0);
		//遍历标签页中所有的行
		for(Row row:hssfSheet){
			for(Cell cell:row){
				String stringCellValue=cell.getStringCellValue();
				System.out.print(stringCellValue+"\t");
			}
			System.out.println();
		}
	}
	
}
