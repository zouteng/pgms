/**
 * 文件名称：TsRole.java
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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import com.sgm.util.JsonDateSerializer;

@Entity
@Table(name = "TS_ROLE", schema = "dbo", catalog = "pgms")
@SQLDelete(sql="UPDATE TS_ROLE SET ISDELETE = '1' WHERE ROLE_ID = ?")
@Where(clause="ISDELETE <> '1'")
public class TsRole extends BaseEntity implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7513279925005581734L;
	// Fields
	@GenericGenerator(name = "generator", strategy = "uuid.hex")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "ROLE_ID", unique = true, nullable = false)
	private String roleId;
	@Column(name = "NAME")
	private String name;
	@Column(name = "CODE")
	private String code;
	@Column(name = "DESCRIPTION")
	private String description;
	@Column(name = "CREATETIME", length = 23)
	private Date createtime;
	@Column(name = "ISDELETE")
	private Boolean isdelete;
	@Column(name = "VERSION")
	private Integer version;
	@Column(name = "STATE")
	private Integer state;
	@JsonIgnore
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY, mappedBy = "tsRoles")
	@Where(clause="ISDELETE <> '1'")
	private Set<TsUser> tsUsers = new HashSet<TsUser>(0);
	@JsonIgnore
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
	@Where(clause="ISDELETE <> '1'")
	@JoinTable(name = "TS_MENU_PERMISSION_ROLE", schema = "dbo", catalog = "pgms", joinColumns = { @JoinColumn(name = "ROLE_ID", nullable = false, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "MENU_PERMISSION_ID", nullable = false, updatable = false) })
	private Set<TsMenuPermission> tsMenuPermissions = new HashSet<TsMenuPermission>(
			0);
	@JsonIgnore
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
	@Where(clause="ISDELETE <> '1'")
	@JoinTable(name = "TS_ACTION_PERMISSION_ROLE", schema = "dbo", catalog = "pgms", joinColumns = { @JoinColumn(name = "ROLE_ID", nullable = false, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "ACTION_PERMISSION_ID", nullable = false, updatable = false) })
	private Set<TsActionPermission> tsActionPermissions = new HashSet<TsActionPermission>(
			0);

	// Constructors
	/** default constructor */
	public TsRole() {
	}

	/** full constructor */
	public TsRole(String name, String code, String description,
			Date createtime, Boolean isdelete, Integer version,
			Integer state, Set<TsUser> tsUsers,
			Set<TsMenuPermission> tsMenuPermissions,
			Set<TsActionPermission> tsActionPermissions) {
		this.name = name;
		this.code = code;
		this.description = description;
		this.createtime = createtime;
		this.isdelete = isdelete;
		this.version = version;
		this.state = state;
		this.tsUsers = tsUsers;
		this.tsMenuPermissions = tsMenuPermissions;
		this.tsActionPermissions = tsActionPermissions;
	}

	// Property accessors
	public String getRoleId() {
		return this.roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
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

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Set<TsUser> getTsUsers() {
		return this.tsUsers;
	}

	public void setTsUsers(Set<TsUser> tsUsers) {
		this.tsUsers = tsUsers;
	}

	public Set<TsMenuPermission> getTsMenuPermissions() {
		return this.tsMenuPermissions;
	}

	public void setTsMenuPermissions(Set<TsMenuPermission> tsMenuPermissions) {
		this.tsMenuPermissions = tsMenuPermissions;
	}

	public Set<TsActionPermission> getTsActionPermissions() {
		return this.tsActionPermissions;
	}

	public void setTsActionPermissions(
			Set<TsActionPermission> tsActionPermissions) {
		this.tsActionPermissions = tsActionPermissions;
	}
}