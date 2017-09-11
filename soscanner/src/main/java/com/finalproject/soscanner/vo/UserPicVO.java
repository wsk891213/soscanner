package com.finalproject.soscanner.vo;

public class UserPicVO {
	private int up_no;
	private int u_uno;
	private String u_sysName;
	private String u_path;
	
	
	public int getUp_no() {
		return up_no;
	}
	public void setUp_no(int up_no) {
		this.up_no = up_no;
	}
	public int getU_uno() {
		return u_uno;
	}
	public void setU_uNo(int u_uno) {
		this.u_uno = u_uno;
	}
	public String getU_sysName() {
		return u_sysName;
	}
	public void setU_sysName(String u_sysName) {
		this.u_sysName = u_sysName;
	}
	public String getU_path() {
		return u_path;
	}
	public void setU_path(String u_path) {
		this.u_path = u_path;
	}
	@Override
	public String toString() {
		return "UserPicVO [up_no=" + up_no + ", u_uNo=" + u_uno + ", u_sysName=" + u_sysName + ", u_path=" + u_path
				+ "]";
	}
	
	
}
