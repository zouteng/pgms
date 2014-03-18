/**
 * 文件名称：EasyuiDataGridJson.java
 * 文件标识：见配置管理计划书
 * 摘         要: 后台向前台返回JSON，用于easyui的datagrid
 * 当前版本：1.0
 * 作          者：zot
 * 完成日期：2013/11/19
 */
package com.sgm.dto;

import java.util.List;

public class EasyuiDataGridJson implements java.io.Serializable {

	private Long total;// 总记录数
	private List rows;// 每行记录
	private List footer;

	public Long getTotal() {
		return total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public List getRows() {
		return rows;
	}

	public void setRows(List rows) {
		this.rows = rows;
	}

	public List getFooter() {
		return footer;
	}

	public void setFooter(List footer) {
		this.footer = footer;
	}

}
