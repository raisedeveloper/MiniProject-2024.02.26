package project.entity;

public class Equipment {
	private int inum;
	private String name;
	
	public Equipment() {}
	
	public Equipment(int inum, String name) {
		this.inum = inum;
		this.name = name;
	}


	public int getInum() {
		return inum;
	}


	public void setInum(int inum) {
		this.inum = inum;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	@Override
	public String toString() {
		return "Equipment [inum=" + inum + ", name=" + name + "]";
	}
}
