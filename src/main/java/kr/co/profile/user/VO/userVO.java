package kr.co.profile.user.VO;

import java.util.Date;

public class userVO {

	private int userNo,userPhone;
	private String userName,userId,userPassword,userEmail,basicAddress,userAddressDetail,zip,userSkill;
	private boolean useCookie;
	private String sessionId;
	private Date sessionLimit;
	
	public String getSessionId() {
		return sessionId;
	}
	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	public Date getSessionLimit() {
		return sessionLimit;
	}
	public void setSessionLimit(Date sessionLimit) {
		this.sessionLimit = sessionLimit;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(int userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
	public String getBasicAddress() {
		return basicAddress;
	}
	public void setBasicAddress(String basicAddress) {
		this.basicAddress = basicAddress;
	}
	public String getUserAddressDetail() {
		return userAddressDetail;
	}
	public void setUserAddressDetail(String userAddressDetail) {
		this.userAddressDetail = userAddressDetail;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getUserSkill() {
		return userSkill;
	}
	public void setUserSkill(String userSkill) {
		this.userSkill = userSkill;
	}
	
	
	@Override
	public String toString() {
		return "userVO [userNo=" + userNo + ", userPhone=" + userPhone + ", userName=" + userName + ", userId=" + userId
				+ ", userPassword=" + userPassword + ", userEmail=" + userEmail + ", basicAddress=" + basicAddress
				+ ", userAddressDetail=" + userAddressDetail + ", zip=" + zip + ", userSkill=" + userSkill
				+ ", useCookie=" + useCookie + ", sessionId=" + sessionId + ", sessionLimit=" + sessionLimit + "]";
	}
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
	
}
