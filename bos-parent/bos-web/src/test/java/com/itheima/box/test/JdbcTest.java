package com.itheima.box.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import org.junit.Test;

public class JdbcTest {

	@Test
	public void test() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection=DriverManager.getConnection("jdbc:mysql:///bos32?characterEncoding=UTF-8", "xiaolizi", "ermazi");
		Statement statement = connection.createStatement();
		statement.execute("insert INTO t_user  (id,username,password) VALUE (2,'李四','12312')");
		statement.close();
		connection.close();
	}
}
