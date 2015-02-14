/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2013/8/12 23:53:36                           */
/*==============================================================*/


alter table t_email_file
   drop constraint fk_t_email__reference_t_email;

alter table t_post_file
   drop constraint fk_t_post_f_reference_t_post;

drop table t_datadic cascade constraints;

drop table t_email cascade constraints;

drop table t_email_file cascade constraints;

drop table t_menu cascade constraints;

drop table t_post cascade constraints;

drop table t_post_file cascade constraints;

drop table t_post_user cascade constraints;

drop table t_receiveemail cascade constraints;

drop table t_role cascade constraints;

drop table t_role_menu cascade constraints;

drop table t_status_time cascade constraints;

drop table t_tips cascade constraints;

drop table t_user cascade constraints;

drop table t_user_role cascade constraints;

/*==============================================================*/
/* Table: t_datadic                                             */
/*==============================================================*/
create table t_datadic  (
   did                  number(8)                       not null,
   dname                varchar2(40),
   dpid                 number(8),
   ddate                date,
   dupdateuser          varchar2(20),
   dupdatedate          date,
   disdel               number(1),
   constraint pk_t_datadic primary key (did)
);

/*==============================================================*/
/* Table: t_email                                               */
/*==============================================================*/

create table T_EMAIL
(
  id         NUMBER(8) not null,
  title      VARCHAR2(32),
  senddate   DATE,
  isfile     NUMBER(1),
  content    CLOB,
  nemailmode NUMBER(1)
)
;
comment on table T_EMAIL
  is '�����';
comment on column T_EMAIL.id
  is '�ʼ����';
comment on column T_EMAIL.title
  is '����';
comment on column T_EMAIL.senddate
  is '����ʱ��';
comment on column T_EMAIL.isfile
  is '�Ƿ��и��� 0û�и�����1�и���';
comment on column T_EMAIL.content
  is '�ʼ�����';
comment on column T_EMAIL.nemailmode
  is '�Ƿ��ѷ� 0 �ѷ��ʼ���1�ݸ�';
alter table T_EMAIL
  add constraint PK_T_EMAIL primary key (ID);


/*==============================================================*/
/* Table: t_email_file                                          */
/*==============================================================*/

create table T_EMAIL_FILE
(
  id      NUMBER(8) not null,
  emailid NUMBER(8),
  oldname VARCHAR2(32),
  newname VARCHAR2(80)
)
;
comment on table T_EMAIL_FILE
  is '�ʼ�������';
comment on column T_EMAIL_FILE.id
  is '�������';
comment on column T_EMAIL_FILE.emailid
  is '�����ʼ����';
comment on column T_EMAIL_FILE.oldname
  is 'ԭ������';
comment on column T_EMAIL_FILE.newname
  is '�¸�����';
alter table T_EMAIL_FILE
  add constraint PK_T_EMAIL_FILE primary key (ID);
alter table T_EMAIL_FILE
  add constraint FK_T_EMAIL_FILE foreign key (EMAILID)
  references T_EMAIL (ID);

/*==============================================================*/
/* Table: t_menu                                                */
/*==============================================================*/
create table t_menu  (
   menuid               number(8)                       not null,
   menuname             varchar2(50),
   link                 varchar2(120),
   pid                  number(8),
   addtime              date,
   updateuser           varchar2(30),
   updatetime           date,
   isdel                number(8),
   orderid              number(8),
   constraint pk_t_menu primary key (menuid)
);

comment on table t_menu is
'�˵���';

comment on column t_menu.menuid is
'�˵�ID';

comment on column t_menu.menuname is
'�˵�����';

comment on column t_menu.link is
'�˵�����';

comment on column t_menu.pid is
'����ID';

comment on column t_menu.addtime is
'���ʱ��';

comment on column t_menu.updateuser is
'��ӽ�ɫ���û�';

comment on column t_menu.updatetime is
'����ʱ��';

comment on column t_menu.isdel is
'�Ƿ�ɾ��';

comment on column t_menu.orderid is
'����ID';



/*==============================================================*/
/* Table: t_receiveemail                                        */
/*==============================================================*/
create table T_RECEIVEEMAIL
(
  username VARCHAR2(30) not null,
  emailid  NUMBER(8) not null,
  isread   NUMBER(1),
  isdel    NUMBER(1),
  issend   NUMBER(1)
)
;
comment on table T_RECEIVEEMAIL
  is '�������';
comment on column T_RECEIVEEMAIL.username
  is '�ռ��򷢼��û�';
comment on column T_RECEIVEEMAIL.emailid
  is '�ʼ����';
comment on column T_RECEIVEEMAIL.isread
  is '�Ƿ��Ѷ� 0δ����1�Ѷ�';
comment on column T_RECEIVEEMAIL.isdel
  is '�Ƿ�ɾ�� 0δɾ����1��ɾ��';
comment on column T_RECEIVEEMAIL.issend
  is '�Ƿ��Ƿ����� 0������ 1���ռ�';
alter table T_RECEIVEEMAIL
  add constraint PK_T_RECEIVEEMAIL primary key (USERNAME, EMAILID);


/*==============================================================*/
/* Table: t_role                                                */
/*==============================================================*/
create table t_role  (
   roleid               number(8)                       not null,
   rolename             varchar2(30),
   roleinfo             varchar2(200),
   addtime              date,
   updateuser           varchar2(30),
   updatetime           date,
   isdel                number(8),
   constraint pk_t_role primary key (roleid)
);

comment on table t_role is
'��ɫ��';

comment on column t_role.rolename is
'��ɫ����';

comment on column t_role.roleinfo is
'��ɫ����';

comment on column t_role.addtime is
'���ʱ��';

comment on column t_role.updatetime is
'����ʱ��';

comment on column t_role.isdel is
'�Ƿ�ɾ��(0δɾ��1��ɾ��)';

/*==============================================================*/
/* Table: t_role_menu                                           */
/*==============================================================*/
create table t_role_menu  (
   roleid               number(8)                       not null,
   menuid               number(8)                       not null,
   constraint pk_t_role_menu primary key (roleid, menuid)
);

comment on table t_role_menu is
'��ɫ�˵���';

comment on column t_role_menu.roleid is
'��ɫid';

comment on column t_role_menu.menuid is
'�˵�id';

/*==============================================================*/
/* Table: t_post                                                */
/*==============================================================*/
create table t_post  (
   postid               number(8)                       not null,
   suser                varchar2(30),
   stitle               varchar2(32),
   scontent             clob,
   begindate            date,
   enddate              date,
   nstatus              number(1),
   nisfile              number(1),
   addtime              date,
   updateuser           varchar(16),
   updatetime           date,
   constraint PK_T_POST primary key (postid)
);

comment on table t_post is
'�����';

comment on column t_post.postid is
'������';

comment on column t_post.suser is
'������';

comment on column t_post.stitle is
'�������';

comment on column t_post.scontent is
'��������';

comment on column t_post.begindate is
'��Чʱ��';

comment on column t_post.enddate is
'ʧЧʱ��';

comment on column t_post.nstatus is
'�������״̬ 0δ��ˣ�1ͨ����ˣ�2δͨ�����';

comment on column t_post.nisfile is
'�����Ƿ���� 0�����ڣ�1����';

comment on column t_post.addtime is
'����ʱ��';

comment on column t_post.updateuser is
'�޸���';

comment on column t_post.updatetime is
'�޸�ʱ��';

/*==============================================================*/
/* Table: t_post_file                                           */
/*==============================================================*/
create table t_post_file  (
   nid                  number(8)                       not null,
   postid               number(8),
   soldname             varchar(32),
   snewname             varchar(80),
   constraint PK_T_POST_FILE primary key (nid)
);

comment on table t_post_file is
'���渽����';

comment on column t_post_file.nid is
'�������';

comment on column t_post_file.soldname is
'����������';

comment on column t_post_file.snewname is
'����������';

/*==============================================================*/
/* Table: t_post_user                                           */
/*==============================================================*/
create table t_post_user  (
   suserid              number(8)                       not null,
   nisread              number(1),
   postid               number(8)                       not null,
   constraint PK_T_POST_USER primary key (suserid, postid)
);

comment on table t_post_user is
'�����û���';

comment on column t_post_user.suserid is
'�û��˺�';

comment on column t_post_user.nisread is
'�����Ƿ��Ѷ� 0δ����1�Ѷ�';

/*==============================================================*/
/* Table: t_status_time                                         */
/*==============================================================*/
create table t_status_time  (
   ntime                number(2),
   id                   number(8)                       not null,
   constraint PK_T_STATUS_TIME primary key (id)
);

comment on table t_status_time is
'�Զ����ʱ���';

comment on column t_status_time.ntime is
'�Զ����ʱ��';

/*==============================================================*/
/* Table: t_tips                                                */
/*==============================================================*/
create table t_tips  (
   tuserid              number(8)                       not null,
   tshowpost            number(1),
   tshowemail           number(1),
   tisshow              number(1),
   showtime             number(8),
   constraint pk_t_tips primary key (tuserid)
);

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
create table t_user  (
   userid               number(8)                       not null,
   username             varchar2(30),
   password             varchar2(30),
   realname             varchar2(30),
   deptno               number(8),
   jobno                number(8),
   regdate              date,
   sex                  varchar2(4),
   city                 varchar2(30),
   idcard               varchar2(20),
   telephone            varchar2(20),
   email                varchar2(50),
   mobilephone          varchar2(20),
   address              varchar2(200),
   married              number(8),
   freeze               number(8),
   constraint pk_t_user primary key (userid)
);

comment on table t_user is
'�û���';

comment on column t_user.username is
'�û���';

comment on column t_user.password is
'����';

comment on column t_user.realname is
'��ʵ����';

comment on column t_user.deptno is
'����ID';

comment on column t_user.jobno is
'ְ��ID';

comment on column t_user.regdate is
'ע��ʱ��';

comment on column t_user.sex is
'�Ա�(1��2Ů)';

comment on column t_user.city is
'����';

comment on column t_user.idcard is
'���֤��';

comment on column t_user.telephone is
'��ͥ�绰';

comment on column t_user.email is
'�����ʼ�';

comment on column t_user.mobilephone is
'�ֻ�����';

comment on column t_user.address is
'��ַ';

comment on column t_user.married is
'�Ƿ���1δ��2�ѻ�)';

comment on column t_user.freeze is
'�Ƿ񶳽�(1����0������';

/*==============================================================*/
/* Table: t_user_role                                           */
/*==============================================================*/
create table t_user_role  (
   userid               number(8)                       not null,
   roleid               number(8)                       not null,
   constraint pk_t_user_role primary key (userid, roleid)
);

comment on table t_user_role is
'�û���ɫ��';

alter table t_email_file
   add constraint fk_t_email__reference_t_email foreign key (id)
      references t_email (id);



create sequence seq_datadic;
create sequence seq_email;
create sequence seq_email_file;
create sequence seq_menu;
create sequence seq_post;
create sequence seq_post_file;
create sequence seq_role;
create sequence seq_tips;
create sequence seq_user;