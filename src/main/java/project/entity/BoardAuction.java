package project.entity;

import java.time.LocalDate;

public class BoardAuction { 		// 경매 게시판
	private LocalDate applTime; // 신청 시간
	private String nickName; 		// 닉네임
	private String processTitle; 	// 제목
	private int avgPrice; 			// 평균 가격
	private int numOfCompany; 		// 업체 수
	private int process; 		// 진행 사항 - 3가지

	public BoardAuction() {
	}

	public BoardAuction(LocalDate applTime, String nickName, String processTitle, int avgPrice, int numOfCompany,
			int process) {
		this.applTime = applTime;
		this.nickName = nickName;
		this.processTitle = processTitle;
		this.avgPrice = avgPrice;
		this.numOfCompany = numOfCompany;
		this.process = process;
	}

	public BoardAuction(String nickName, String processTitle) {
		super();
		this.nickName = nickName;
		this.processTitle = processTitle;
	}

	@Override
	public String toString() {
		return "BoardAuction [applTime=" + applTime + ", nickName=" + nickName + ", processTitle=" + processTitle
				+ ", avgPrice=" + avgPrice + ", numOfCompany=" + numOfCompany + ", process=" + process + "]";
	}

	public LocalDate getApplTime() {
		return applTime;
	}

	public void setApplTime(LocalDate applTime) {
		this.applTime = applTime;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getProcessTitle() {
		return processTitle;
	}

	public void setProcessTitle(String processTitle) {
		this.processTitle = processTitle;
	}

	public int getAvgPrice() {
		return avgPrice;
	}

	public void setAvgPrice(int avgPrice) {
		this.avgPrice = avgPrice;
	}

	public int getNumOfCompany() {
		return numOfCompany;
	}

	public void setNumOfCompany(int numOfCompany) {
		this.numOfCompany = numOfCompany;
	}

	public int getProcess() {
		return process;
	}

	public void setProcess(int process) {
		this.process = process;
	}

}