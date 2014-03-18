/**
 * 文件名称：TsDepartment.java
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
import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.hibernate.annotations.GenericGenerator;
import com.sgm.util.JsonDateSerializer;

@Entity
@Table(name = "TS_DEPARTMENT", schema = "dbo", catalog = "pgms")
public class TsDepartment extends BaseEntity implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -4641837029012480174L;
	// Fields
	@GenericGenerator(name = "generator", strategy = "uuid.hex")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "DEPARTMENT_ID", unique = true, nullable = false)
	private String departmentId;
	@Column(name = "NAME")
	private String name;
	@Column(name = "CODE")
	private String code;
	@Column(name = "DESCRIPTION")
	private String description;
	@Column(name = "INPUT_CODE2")
	private String inputCode2;
	@Column(name = "INPUT_CODE1")
	private String inputCode1;
	@Column(name = "INPUT_CODE3")
	private String inputCode3;
	@Column(name = "CREATETIME", length = 23)
	private Date createtime;
	@Column(name = "ISDELETE")
	private Boolean isdelete;
	@Column(name = "VERSION")
	private Integer version;
	@JsonIgnore
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY, mappedBy = "tsDepartments")
	private Set<TsUser> tsUsers = new HashSet<TsUser>(0);

	// Constructors
	/** default constructor */
	public TsDepartment() {
	}

	/** full constructor */
	public TsDepartment(String name, String code, String description,
			String inputCode2, String inputCode1, String inputCode3,
			Date createtime, Boolean isdelete, Integer version,
			Set<TsUser> tsUsers) {
		this.name = name;
		this.code = code;
		this.description = description;
		this.inputCode2 = inputCode2;
		this.inputCode1 = inputCode1;
		this.inputCode3 = inputCode3;
		this.createtime = createtime;
		this.isdelete = isdelete;
		this.version = version;
		this.tsUsers = tsUsers;
	}

	// Property accessors
	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getInputCode2() {
		return inputCode2;
	}

	public void setInputCode2(String inputCode2) {
		this.inputCode2 = inputCode2;
	}

	public String getInputCode1() {
		return inputCode1;
	}

	public void setInputCode1(String inputCode1) {
		this.inputCode1 = inputCode1;
	}

	public String getInputCode3() {
		return inputCode3;
	}

	public void setInputCode3(String inputCode3) {
		this.inputCode3 = inputCode3;
	}
	
	@JsonSerialize(using = JsonDateSerializer.class)
	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Boolean getIsdelete() {
		return isdelete;
	}

	public void setIsdelete(Boolean isdelete) {
		this.isdelete = isdelete;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Set<TsUser> getTsUsers() {
		return tsUsers;
	}

	public void setTsUsers(Set<TsUser> tsUsers) {
		this.tsUsers = tsUsers;
	}
}