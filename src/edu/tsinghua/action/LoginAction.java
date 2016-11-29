package edu.tsinghua.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.tsinghua.biz.UserBiz;
import edu.tsinghua.entity.User;

public class LoginAction extends ActionSupport implements SessionAware,ModelDriven<User>{

	/**
	 *  Ù–‘
	 * */
	User user=new User();
	UserBiz userBiz;
	Map<String, Object> session;
	
	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	public UserBiz getUserBiz() {
		return userBiz;
	}



	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}



	public String login(){
		User u=userBiz.login(user);
		session.put("user", u);
		if(u==null){
			return LOGIN;
		}else if (u.getIsAdmin()==1) {
			return "success1";
		}else if (u.getIsAdmin()==0) {
			return "success";
		}else{
			return LOGIN;
		}
		
		
	}
	
	
	
	@Override
	public User getModel() {
		return user;
	}



	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.session=arg0;
	}
	
}
