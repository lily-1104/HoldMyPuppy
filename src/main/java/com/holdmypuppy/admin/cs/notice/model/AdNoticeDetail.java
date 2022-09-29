package com.holdmypuppy.admin.cs.notice.model;

import com.holdmypuppy.admin.login.model.Admin;

public class AdNoticeDetail {
	
	// Admin 정보
	private Admin admin;
	
	// Notice 정보
	private AdNotice adNotice;
	
	
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public AdNotice getAdNotice() {
		return adNotice;
	}

	public void setAdNotice(AdNotice adNotice) {
		this.adNotice = adNotice;
	}
	
}
