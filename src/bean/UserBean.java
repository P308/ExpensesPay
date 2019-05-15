package bean;
import java.io.Serializable;

public class UserBean implements Serializable{

//	private static final long serialVersionUID = 1L;
	//private属性で変数を宣言
	private String id;
	private String name;
	private String auth;

//	それぞれのsetter getterをセット
	public void setId(String id) {
		this.id = id;
	}
	public String getId() {
		return this.id;
	}

	public void setName(String name ) {
		this.name = name;
	}
	public String getName() {
		return this.name;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getAuth() {
		return this.auth;
	}
}
