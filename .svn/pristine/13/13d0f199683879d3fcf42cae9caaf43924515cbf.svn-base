/**
 * 文件名称：TsActionLogs.java
 * 当前版本：1.0
 * 作    者：zot
 * 完成日期：2013/10/30
 */
package com.sgm.domain;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import com.sgm.util.JsonDateSerializer;

@Entity
@Table(name = "TS_ACTION_LOGS", schema = "dbo", catalog = "pgms")
public class TsActionLogs extends BaseEntity implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1104303063398471695L;
	// Fields
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	private Integer id;
	@Column(name = "USERNAME")
	private String username;
	@Column(name = "CONTROLLER")
	private String controller;
	@Column(name = "ACTION_NAME")
	private String actionName;
	@Column(name = "TERMIN_ID")
	private String terminId;
	@Column(name = "DESCRIPTION")
	private String description;
	@Column(name = "CREATE_TIME", length = 23)
	private Date createTime;
	@Column(name = "VERSION")
	private Integer version;
	@Column(name = "CREATOR")
	private String creator;
	@Column(name = "ISDELETE")
	private Boolean isdelete;

	// Constructors
	/** default constructor */
	public TsActionLogs() {
	}

	/** full constructor */
	public TsActionLogs(String username, String controller, String actionName,
			String terminId, String description, Date createTime,
			Integer version, String creator, Boolean isdelete) {
		this.username = username;
		this.controller = controller;
		this.actionName = actionName;
		this.terminId = terminId;
		this.description = description;
		this.createTime = createTime;
		this.version = version;
		this.creator = creator;
		this.isdelete = isdelete;
	}

	// Property accessors
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getController() {
		return controller;
	}

	public void setController(String controller) {
		this.controller = controller;
	}

	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public String getTerminId() {
		return terminId;
	}

	public void setTerminId(String terminId) {
		this.terminId = terminId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@JsonSerialize(using = JsonDateSerializer.class)
	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public Boolean getIsdelete() {
		return isdelete;
	}

	public void setIsdelete(Boolean isdelete) {
		this.isdelete = isdelete;
	}
}