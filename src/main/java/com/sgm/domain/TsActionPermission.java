/**
 * 文件名称：TsActionPermission.java
 * 当前版本：1.0
 * 作    者：zot
 * 完成日期：2013/10/30
 */
package com.sgm.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import com.sgm.util.JsonDateSerializer;

@Entity
@Table(name = "TS_ACTION_PERMISSION", schema = "dbo", catalog = "pgms")
@SQLDelete(sql = "UPDATE TS_ACTION_PERMISSION SET ISDELETE = '1' WHERE ACTION_PERMISSION_ID = ?")
@Where(clause = "ISDELETE <> '1'")
public class TsActionPermission extends BaseEntity implements
		java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2460178272746781294L;
	// Fields
	@GenericGenerator(name = "generator", strategy = "uuid.hex")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "ACTION_PERMISSION_ID", unique = true, nullable = false)
	private String actionPermissionId;
	@Column(name = "NAME")
	private String name;
	@Column(name = "CONTROLLER_NAME")
	private String controllerName;
	@Column(name = "DESCRIPTION")
	private String description;
	@Column(name = "CREATETIME", length = 23)
	private Date createtime;
	@Column(name = "ISDELETE")
	private Boolean isdelete;
	@Column(name = "VERSION")
	private Integer version;
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY, mappedBy = "tsActionPermissions")
	@Where(clause = "ISDELETE <> '1'")
	private Set<TsRole> tsRoles = new HashSet<TsRole>(0);

	// Constructors
	/** default constructor */
	public TsActionPermission() {
	}

	/** full constructor */
	public TsActionPermission(String name, String controllerName,
			String description, Date createtime, Boolean isdelete,
			Integer version, Set<TsRole> tsRoles) {
		this.name = name;
		this.controllerName = controllerName;
		this.description = description;
		this.createtime = createtime;
		this.isdelete = isdelete;
		this.version = version;
		this.tsRoles = tsRoles;
	}

	// Property accessors
	public String getActionPermissionId() {
		return this.actionPermissionId;
	}

	public void setActionPermissionId(String actionPermissionId) {
		this.actionPermissionId = actionPermissionId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getControllerName() {
		return this.controllerName;
	}

	public void setControllerName(String controllerName) {
		this.controllerName = controllerName;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@JsonSerialize(using = JsonDateSerializer.class)
	public Date getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Boolean getIsdelete() {
		return this.isdelete;
	}

	public void setIsdelete(Boolean isdelete) {
		this.isdelete = isdelete;
	}

	public Integer getVersion() {
		return this.version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Set<TsRole> getTsRoles() {
		return this.tsRoles;
	}

	public void setTsRoles(Set<TsRole> tsRoles) {
		this.tsRoles = tsRoles;
	}
}