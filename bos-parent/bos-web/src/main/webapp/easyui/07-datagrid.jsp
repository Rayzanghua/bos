<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>message</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#mytable').datagrid({
		//定义标题行所有的列
		columns:[[
			{title:'编号',field:'id',checkbox:true},
			{title:'姓名',field:'name'},
			{title:'年龄',field:'age'},
			{title:'地址',field:'id'}
		]],
		//指定数据表格发送ajax请求的地址
		 url:'${pageContext.request.contextPath }/json/datagrid_data.json',
		 //行号
		rownumbers:true,
		//单选是否
		singleSelect:true, 
		//定义工具栏
		toolbar:[
			{text:'添加',iconCls:'icon-add',
				        	 //为按钮绑定单击事件
				        	 handler:function(){
				        	 	alert('add...');
				         	 }},
			{text:'删除',iconCls:'icon-remove',
				        	 //为按钮绑定单击事件
				        	 handler:function(){
				        	 	alert('del...');
				         	 }},
	        {text:'修改',iconCls:'icon-edit'},
	        {text:'查询',iconCls:'icon-search'}
		], 
		//显示分页条
		pagination:true,
		pageList:[3,5,7,10] 
	});
});
</script>
<body>
	<!-- 将静态HTML渲染为datagrid样式  -->
	<table class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="filed:'id'">编号</th>
				<th data-options="filed:'name'">姓名</th>
				<th data-options="filed:'age'">年龄</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th>001</th>
				<th>小米</th>
				<th>32</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th>002</th>
				<th>小王</th>
				<th>62</th>
			</tr>
		</thead>
	</table>

	<!-- 方式二：发送ajax请求获取json数据创建datagrid -->
	<table data-options="url:'${pageContext.request.contextPath }/json/datagrid_data.json'" 
			class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'id'">编号</th>
				<th data-options="field:'name'">姓名</th>
				<th data-options="field:'age'">年龄</th>
			</tr>
		</thead>
	</table>
	
	<!-- 方式三：发送ajax请求获取json数据创建datagrid -->
	<table id="mytable">
	</table>
</body>
</head>
</html>