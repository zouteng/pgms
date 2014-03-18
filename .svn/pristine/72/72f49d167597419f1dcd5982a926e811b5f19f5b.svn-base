/**
 * 文件名称：TmOilprices.java
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
@Table(name = "TM_OILPRICES", schema = "dbo", catalog = "pgms")
@SQLDelete(sql="UPDATE TM_OILPRICES SET ISDELETE = '1' WHERE OIL_ID = ?")
@Where(clause="ISDELETE <> '1'")
public class TmOilprices extends BaseEntity implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7088584293267406028L;
	// Fields
	@GenericGenerator(name = "generator", strategy = "uuid.hex")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "OIL_ID", unique = true, nullable = false)
	private String oilId;
	@Column(name = "OILTYPE_ID")
	private String oiltypeId;
	@Column(name = "OILPRICE")
	private String oilprice;
	@Column(name = "CUTDAY", length = 23)
	private Date cutday;
	@Column(name = "CUTTIME", length = 23)
	private Date cuttime;
	@Column(name = "UPDATERPEOPLE_ID")
	private String updaterpeopleId;
	@Column(name = "UPDATETIME", length = 23)
	private Date updatetime;
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
	public TmOilprices() {
	}

	/** full constructor */
	public TmOilprices(String oiltypeId, String oilprice, Date cutday,
			Date cuttime, String updaterpeopleId, Date updatetime,
			String creator, Date createtime, Integer version,
			Boolean isdelete) {
		this.oiltypeId = oiltypeId;
		this.oilprice = oilprice;
		this.cutday = cutday;
		this.cuttime = cuttime;
		this.updaterpeopleId = updaterpeopleId;
		this.updatetime = updatetime;
		this.creator = creator;
		this.createtime = createtime;
		this.version = version;
		this.isdelete = isdelete;
	}

	// Property accessors
	public String getOilId() {
		return this.oilId;
	}

	public void setOilId(String oilId) {
		this.oilId = oilId;
	}

	public String getOiltypeId() {
		return this.oiltypeId;
	}

	public void setOiltypeId(String oiltypeId) {
		this.oiltypeId = oiltypeId;
	}

	public String getOilprice() {
		return this.oilprice;
	}

	public void setOilprice(String oilprice) {
		this.oilprice = oilprice;
	}

	@JsonSerialize(using = JsonDateSerializer.class)
	public Date getCutday() {
		return this.cutday;
	}

	public void setCutday(Date cutday) {
		this.cutday = cutday;
	}

	@JsonSerialize(using = JsonDateSerializer.class)
	public Date getCuttime() {
		return this.cuttime;
	}

	public void setCuttime(Date cuttime) {
		this.cuttime = cuttime;
	}

	public String getUpdaterpeopleId() {
		return this.updaterpeopleId;
	}

	public void setUpdaterpeopleId(String updaterpeopleId) {
		this.updaterpeopleId = updaterpeopleId;
	}

	@JsonSerialize(using = JsonDateSerializer.class)
	public Date getUpdatetime() {
		return this.updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	public String getCreator() {
		return this.creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	@JsonSerialize(using = JsonDateSerializer.class)
	public Date getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Integer getVersion() {
		return this.version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Boolean getIsdelete() {
		return this.isdelete;
	}

	public void setIsdelete(Boolean isdelete) {
		this.isdelete = isdelete;
	}
}