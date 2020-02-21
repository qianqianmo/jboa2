package com.accp.jboa.pojo;

public class Position {

	private Integer positionId;
	private String positionName;

	public Integer getPositionId() {
		return positionId;
	}

	public void setPositionId(Integer positionId) {
		this.positionId = positionId;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public Position() {
		super();
	}

	public Position(Integer positionId, String positionName) {
		super();
		this.positionId = positionId;
		this.positionName = positionName;
	}

}
