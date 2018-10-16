package kr.or.kosta.jsp;
/**
* javaBean
*/
public class Account {

	static{
		System.out.println("Account클래스 초기화 블럭 실행입니다:)");
	}

	public static final String bankName = "하나은행";
	
	private String accountNum;
	private String accountOwner;
	private int passwd;
	private long restMoney;

	public Account(){
		this(null, null);
	}

	public Account(String accountNum, String accountOwner){
		this(accountNum, accountOwner, 0, 0);
	}

	public Account(String accountNum, String accountOwner, int passwd, long restMoney){
		this.accountNum = accountNum;
		this.accountOwner = accountOwner;
		this.passwd = passwd;
		this.restMoney = restMoney;
	}

	//setter/ getter 메소드
	public void setAccountNum(String accountNum){
		this.accountNum = accountNum;
	}
	public String getAccountNum(){
		return accountNum;
	}

	public void setAccountOwner(String accountOwner){
		this.accountOwner = accountOwner;
	}
	public String getAccountOwner(){
		return accountOwner;
	}

	public void setPasswd(int passwd){
		this.passwd = passwd;
	}
	public int getPasswd(){
		return passwd;
	}

	public void setRestMoney(long restMoney){
		this.restMoney = restMoney;
	}	

	public long getRestMoney(){
		return restMoney;
	}

	
	//인스턴스 메소드
	long deposit(long money) {
		restMoney+=money;
		return restMoney;
	}

	long withdraw(long money) {
		restMoney-=money;
		return restMoney;
	}


	boolean checkPasswd(int pw){
		return passwd == pw;
	}
	
	//출력해주는
	//오버라이딩 한거였어용
	@Override
	public String toString() { 
		return getAccountNum()+"\t"+getAccountOwner()+"\t****\t"+getRestMoney();
	}

	//미션준거 해보기
//	public boolean equals(Account obj) {
//		return this.toString().equals(obj.toString());
//	}
	
	@Override
	public boolean equals(Object obj) {
		boolean eq = false;
		if(obj instanceof Account) {
			eq = toString().equals(obj.toString());
		}
		return eq;
	}
		
}
