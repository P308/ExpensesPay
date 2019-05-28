package main;

public class UserCheck {

	public String userCheck(String dept,String post){
		String forward = null;
		if(dept != null) {
			if(dept.equals("管理部")) {
				forward = "web/k_menu.jsp";
			}
		}
		if(post != null) {
			forward = "web/k_menu.jsp";
		}else {
			forward = "web/menu.jsp";
		}

		return forward;

}

}
