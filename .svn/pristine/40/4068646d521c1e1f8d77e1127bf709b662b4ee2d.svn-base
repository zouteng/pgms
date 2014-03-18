/**
 * 文件名称：TmProjectinfo.java
 * 当前版本：1.0
 * 作    者：zot
 * 完成日期：2013/10/30
 */
package com.sgm.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import com.sgm.util.JsonDateSerializer;

@Entity
@Table(name = "TM_PROJECTINFO", schema = "dbo", catalog = "pgms")
@SQLDelete(sql="UPDATE TM_PROJECTINFO SET ISDELETE = '1' WHERE PROJECT_ID = ?")
@Where(clause="ISDELETE <> '1'")
public class TmProjectinfo extends BaseEntity implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6945974592946134637L;
	// Fields
	@GenericGenerator(name = "generator", strategy = "assigned")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "PROJECT_ID", unique = true, nullable = false)
	private String projectId;
	@Column(name = "OWNEDENTERPRISES_ID")
	private String ownedenterprisesId;
	@Column(name = "NUMBER")
	private String number;
	@Column(name = "MANAGE_NAME")
	private String manageName;
	@Column(name = "BUDGET")
	private String budget;
	@Column(name = "COORDINATOR_NAME")
	private String coordinatorName;
	@Column(name = "COORDINATOR_TEL")
	private String coordinatorTel;
	@Column(name = "COORDINATOR_MAIL")
	private String coordinatorMail;
	@Column(name = "STATUS_ID")
	private String statusId;
	@Column(name = "TYPE_ID")
	private String typeId;
	@Column(name = "AGREEMENTTYPE_ID")
	private String agreementtypeId;
	@Column(name = "STARTTIME", length = 23)
	private Date starttime;
	@Column(name = "ENDTIME", length = 23)
	private Date endtime;
	@Column(name = "CREATOR", length = 24)
	private String creator;
	@Column(name = "CREATETIME", length = 23)
	private Date createtime;
	@Column(name = "VERSION")
	private Integer version;
	@Column(name = "ISDELETE")
	private Boolean isdelete;

	// Constructors
	/** default constructor */
	public TmProjectinfo() {
	}

	/** full constructor */
	public TmProjectinfo(String ownedenterprisesId, String number,
			String manageName, String budget, String coordinatorName,
			String coordinatorTel, String coordinatorMail, String statusId,
			String typeId, String agreementtypeId, Date starttime,
			Date endtime, String creator, Date createtime,
			Integer version, Boolean isdelete) {
		this.ownedenterprisesId = ownedenterprisesId;
		this.number = number;
		this.manageName = manageName;
		this.budget = budget;
		this.coordinatorName = coordinatorName;
		this.coordinatorTel = coordinatorTel;
		this.coordinatorMail = coordinatorMail;
		this.statusId = statusId;
		this.typeId = typeId;
		this.agreementtypeId = agreementtypeId;
		this.starttime = starttime;
		this.endtime = endtime;
		this.creator = creator;
		this.createtime = createtime;
		this.version = version;
		this.isdelete = isdelete;
	}

	// Property accessors
	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	public String getOwnedenterprisesId() {
		return ownedenterprisesId;
	}

	public void setOwnedenterprisesId(String ownedenterprisesId) {
		this.ownedenterprisesId = ownedenterprisesId;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getManageName() {
		return manageName;
	}

	public void setManageName(String manageName) {
		this.manageName = manageName;
	}

	public String getBudget() {
		return budget;
	}

	public void setBudget(String budget) {
		this.budget = budget;
	}

	public String getCoordinatorName() {
		return coordinatorName;
	}

	public void setCoordinatorName(String coordinatorName) {
		this.coordinatorName = coordinatorName;
	}

	public String getCoordinatorTel() {
		return coordinatorTel;
	}

	public void setCoordinatorTel(String coordinatorTel) {
		this.coordinatorTel = coordinatorTel;
	}

	public String getCoordinatorMail() {
		return coordinatorMail;
	}

	public void setCoordinatorMail(String coordinatorMail) {
		this.coordinatorMail = coordinatorMail;
	}

	public String getStatusId() {
		return statusId;
	}

	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}

	public String getTypeId() {
		return typeId;
	}

	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

	public String getAgreementtypeId() {
		return agreementtypeId;
	}

	public void setAgreementtypeId(String agreementtypeId) {
		this.agreementtypeId = agreementtypeId;
	}

	@JsonSerialize(using = JsonDateSerializer.class)
	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	@JsonSerialize(using = JsonDateSerializer.class)
	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public Date getCreatetime() {
		return createtime;
	}

	@JsonSerialize(using = JsonDateSerializer.class)
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Boolean getIsdelete() {
		return isdelete;
	}

	public void setIsdelete(Boolean isdelete) {
		this.isdelete = isdelete;
	}
}