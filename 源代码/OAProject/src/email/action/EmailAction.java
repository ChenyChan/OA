package email.action;


import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.struts2.ServletActionContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pojo.TEmail;
import pojo.TReceiveemail;
import pojo.TUser;

import com.opensymphony.xwork2.ActionSupport;

import email.dao.TEmailDAO;
import email.service.inf.EmailServiceInf;

public class EmailAction extends ActionSupport{
	private TEmail email;
	private EmailServiceInf emailService;
	private List<File> emailFile;
	private List<String> emailFileFileName;
	private int type = 0;//状态  0：草稿箱   1：已发送    2：收件箱     3：垃圾箱    4 ：彻底删除
	private String receiveUserNames;
	private List<Integer> checkbox;
	private List<String> users;
	
	
	
	public List<String> getUsers() {
		return users;
	}

	public void setUsers(List<String> users) {
		this.users = users;
	}

	public List<Integer> getCheckbox() {
		return checkbox;
	}

	public void setCheckbox(List<Integer> checkbox) {
		this.checkbox = checkbox;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getReceiveUserNames() {
		return receiveUserNames;
	}

	public void setReceiveUserNames(String receiveUserNames) {
		this.receiveUserNames = receiveUserNames;
	}

	public EmailServiceInf getEmailService() {
		return emailService;
	}
	
	public List<File> getEmailFile() {
		return emailFile;
	}

	public void setEmailFile(List<File> emailFile) {
		this.emailFile = emailFile;
	}

	public List<String> getEmailFileFileName() {
		return emailFileFileName;
	}

	public void setEmailFileFileName(List<String> emailFileFileName) {
		this.emailFileFileName = emailFileFileName;
	}

	public void setEmailService(EmailServiceInf emailService) {
		this.emailService = emailService;
	}

	public TEmail getEmail() {
		return email;
	}

	public void setEmail(TEmail email) {
		this.email = email;
	}
	@Override
	public String execute() throws Exception {
		/*TUser user = new TUser();
		user.setUsername("111");
		ServletActionContext.getRequest().getSession().setAttribute("user", user);*/
		emailService.getUnreadCount();
		return SUCCESS;
	}
	public String add() throws Exception {
		
		emailService.save(email, type, emailFile, emailFileFileName, receiveUserNames);
		emailService.getUnreadCount();
		return "tolist";
	}
	public String update() throws Exception {
		emailService.update(email, type, emailFile, emailFileFileName, receiveUserNames);
		emailService.getUnreadCount();
		return "tolist";
	}
	public String read() throws Exception {
		TReceiveemail receiveemail = emailService.getReceiveemail(email.getId());
		
		ServletActionContext.getRequest().setAttribute("receiveEmail", receiveemail);
		if(receiveemail.getIssend()){
			receiveUserNames = emailService.getReceiveUserNames(email.getId());
		}else{
			receiveUserNames = emailService.getSendUserName(email.getId());
		}
		return "read";
	}
	public String drafts() throws Exception {
		if(email!=null && email.getId()>0){
			email = emailService.getReceiveemail(email.getId()).getId().getEmail();
			receiveUserNames = emailService.getReceiveUserNames(email.getId());
		}
		
		
		
		return "addemail";
	}
	//改变邮件状态  删除和还原
	public String delete() throws Exception {
		//获取当前登录用户名
		//
		//String userName = "222";
		
		emailService.setIsDel(email.getId(), type);
		emailService.getUnreadCount();
		return SUCCESS;
	}
	//批量改变邮件状态  删除和还原
		public String deleteByList() throws Exception {
			for (int emailid : checkbox) {
				emailService.setIsDel(emailid, type);				
			}
			return "turnlist";
		}
	
	public String emaillist() throws Exception {
	
		emailService.emailList(type);
		return "emaillist";
	}
	public String json() throws Exception{
		users = emailService.getUserNameList();
		/*for(int i=1;i<100;i++){
			users.add("用户"+i);			
		}*/		
		return "json";
	}
	public String emailForward() throws Exception{
		
		TEmail emailOld = emailService.getReceiveemail(email.getId()).getId().getEmail();
		email = new TEmail();
		email.setTitle("(转发)" + emailOld.getTitle());
		email.setContent(emailOld.getContent());		
		return "addemail";
	}
	
	
	/**
	 * Ajax 删除附件
	 */
	public String ajaxDeleteFile() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		int fileid = Integer.parseInt(request.getParameter("fileid"));
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		if(emailService.deleteFile(fileid)){
			out.println("1");
		}else{
			out.println("0");
		}
		out.flush();
		out.close();
		
		return NONE;
	}
	
	

}
