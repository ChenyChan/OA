insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(1,'ʡ��',0,sysdate,'�����1',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(2,'����',0,sysdate,'�����2',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(3,'ְ��',0,sysdate,'�����3',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(4,'ɽ��ʡ',1,sysdate,'�����1',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(5,'����ʡ',1,sysdate,'�����1',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(6,'����ʡ',1,sysdate,'�����1',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(7,'������',2,sysdate,'�����2',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(8,'���ڲ�',2,sysdate,'�����2',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(9,'������Դ��',2,sysdate,'�����2',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(10,'�߻���',2,sysdate,'�����2',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(11,'���ž���',3,sysdate,'�����3',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(12,'��Ŀ����',3,sysdate,'�����3',sysdate,0);
insert into t_datadic(did,dname,dpid,ddate,dupdateuser,dupdatedate,disdel) values(13,'��Ŀ�鳤',3,sysdate,'�����3',sysdate,0);

Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'���˹���','���˵���������',0,sysdate,'admin',sysdate,0,1);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'���˹���','���˵���������',0,sysdate,'admin',sysdate,0,2);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'ϵͳ����','���˵���������',0,sysdate,'admin',sysdate,0,3);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'�������','���˵���������',0,sysdate,'admin',sysdate,0,4);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'�ڲ��ʼ�','���˵���������',0,sysdate,'admin',sysdate,0,5);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'�޸�����','oa/user!updatepwdview',1,sysdate,null,sysdate,0,7);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'������Ϣ�޸�','oa/user!onlyUpdateview',1,sysdate,null,sysdate,0,8);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'�鿴����','post/postAction!postlist',2,sysdate,null,sysdate,0,9);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'��ɫ����','oa/rolelist!view',3,sysdate,null,sysdate,0,10);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'�˵�����','oa/menulist!view',3,sysdate,null,sysdate,0,11);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'�����ֵ�','jsp/datadic/showData.jsp',3,sysdate,null,sysdate,0,12);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'�û�����','oa/userlist!view',3,sysdate,null,sysdate,0,13);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'д��','email/emailAction!drafts.action',5,sysdate,null,sysdate,0,20);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'������','email/emailAction!emaillist.action?type=1',5,sysdate,null,sysdate,0,14);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'�ռ���','email/emailAction!emaillist.action?type=2',5,sysdate,null,sysdate,0,15);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'�ݸ���','email/emailAction!emaillist.action?type=0',5,sysdate,null,sysdate,0,16);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'������','email/emailAction!emaillist.action?type=3',5,sysdate,null,sysdate,0,17);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'�������','post/postAction!shenghepost',4,sysdate,null,sysdate,0,18);
Insert into T_MENU (MENUID,MENUNAME,LINK,PID,ADDTIME,updateuser,updatetime,ISDEL,ORDERID) values (seq_menu.nextval,'���洦��','post/postAction!postmanage',4,sysdate,null,sysdate,0,19);



Insert into T_ROLE (ROLEID,ROLENAME,roleinfo,addtime,updateuser,updatetime,ISDEL) values (seq_role.nextval,'��������Ա','ӵ������Ȩ��',sysdate,'admin',sysdate,0);
Insert into T_ROLE (ROLEID,ROLENAME,roleinfo,addtime,updateuser,updatetime,ISDEL) values (seq_role.nextval,'����Ա','ϵͳ����',sysdate,'admin',sysdate,0);

Insert into T_ROLE_MENU (RoleID,MenuID) values (1,1);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,2);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,3);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,4);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,5);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,6);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,7);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,8);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,9);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,10);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,11);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,12);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,13);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,14);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,15);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,16);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,17);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,18);
Insert into T_ROLE_MENU (RoleID,MenuID) values (1,19);
Insert into T_ROLE_MENU (RoleID,MenuID) values (2,1);
Insert into T_ROLE_MENU (RoleID,MenuID) values (2,2);
Insert into T_ROLE_MENU (RoleID,MenuID) values (2,3);
Insert into T_ROLE_MENU (RoleID,MenuID) values (2,4);
Insert into T_ROLE_MENU (RoleID,MenuID) values (2,5);
Insert into T_ROLE_MENU (RoleID,MenuID) values (2,6);
Insert into T_ROLE_MENU (RoleID,MenuID) values (2,10);
Insert into T_ROLE_MENU (RoleID,MenuID) values (2,11);
Insert into T_ROLE_MENU (RoleID,MenuID) values (2,12);
Insert into T_ROLE_MENU (RoleID,MenuID) values (2,13);

Insert into T_USER(userid,username,password,realname,deptno,jobno,regdate,sex,city,idcard,telephone,
 email,mobilephone,address,married,freeze) values(seq_user.nextval,'superadmin','123','admin',12,7,
sysdate,'1','����','35052419910511105x','0591-88888888','18950499748@163.com','18950499748','����','0','0');
Insert into T_USER(userid,username,password,realname,deptno,jobno,regdate,sex,city,idcard,telephone,
 email,mobilephone,address,married,freeze) values(seq_user.nextval,'lin','123','admin',13,8,
sysdate,'1','����','35052419910511105x','0591-88888888','18950499748@163.com','18950499748','����','0','0');

insert into t_user_role(userid,roleid) values (1,1);
insert into t_user_role(userid,roleid) values (2,1);
insert into t_user_role(userid,roleid) values (1,2);
insert into t_user_role(userid,roleid) values (2,2);

insert into t_tips values(1,1,1,1,1000);
insert into t_tips values(2,1,1,1,1000);

insert into T_STATUS_TIME (NTIME, ID)
values (3, 1);


commit;

