if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TS_ACTION_PERMISSION_ROLE') and o.name = 'FK_TS_ACTIO_REFERENCE_TS_ACTIO')
alter table dbo.TS_ACTION_PERMISSION_ROLE
   drop constraint FK_TS_ACTIO_REFERENCE_TS_ACTIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TS_ACTION_PERMISSION_ROLE') and o.name = 'FK_TS_ACTIO_REFERENCE_TS_ROLE')
alter table dbo.TS_ACTION_PERMISSION_ROLE
   drop constraint FK_TS_ACTIO_REFERENCE_TS_ROLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TS_DEPARTMENT_USER') and o.name = 'FK_TS_DEPAR_REFERENCE_TS_USER')
alter table dbo.TS_DEPARTMENT_USER
   drop constraint FK_TS_DEPAR_REFERENCE_TS_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TS_DEPARTMENT_USER') and o.name = 'FK_TS_DEPAR_REFERENCE_TS_DEPAR')
alter table dbo.TS_DEPARTMENT_USER
   drop constraint FK_TS_DEPAR_REFERENCE_TS_DEPAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TS_DICTIONARY') and o.name = 'FK_TS_DICTI_REFERENCE_TS_DICCA')
alter table dbo.TS_DICTIONARY
   drop constraint FK_TS_DICTI_REFERENCE_TS_DICCA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TS_MENU_PERMISSION_ROLE') and o.name = 'FK_TS_MENU__REFERENCE_TS_MENU_')
alter table dbo.TS_MENU_PERMISSION_ROLE
   drop constraint FK_TS_MENU__REFERENCE_TS_MENU_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TS_MENU_PERMISSION_ROLE') and o.name = 'FK_TS_MENU__REFERENCE_TS_ROLE')
alter table dbo.TS_MENU_PERMISSION_ROLE
   drop constraint FK_TS_MENU__REFERENCE_TS_ROLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TS_ROLE_USER') and o.name = 'FK_TS_ROLE__REFERENCE_TS_USER')
alter table dbo.TS_ROLE_USER
   drop constraint FK_TS_ROLE__REFERENCE_TS_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TS_ROLE_USER') and o.name = 'FK_TS_ROLE__REFERENCE_TS_ROLE')
alter table dbo.TS_ROLE_USER
   drop constraint FK_TS_ROLE__REFERENCE_TS_ROLE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TM_ACCESSCONTROLSETTINGS')
            and   type = 'U')
   drop table dbo.TM_ACCESSCONTROLSETTINGS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TM_DEVICEMANAGEMENT')
            and   type = 'U')
   drop table dbo.TM_DEVICEMANAGEMENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TM_ENTERPRISESCUSTOMERS')
            and   type = 'U')
   drop table dbo.TM_ENTERPRISESCUSTOMERS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TM_INFORMATION')
            and   type = 'U')
   drop table dbo.TM_INFORMATION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TM_OILPRICES')
            and   type = 'U')
   drop table dbo.TM_OILPRICES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TM_PRICEMANAGE')
            and   type = 'U')
   drop table dbo.TM_PRICEMANAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TM_PROJECTINFO')
            and   type = 'U')
   drop table dbo.TM_PROJECTINFO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TM_ROADINFOMATION')
            and   type = 'U')
   drop table dbo.TM_ROADINFOMATION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TM_TESTSPECIFICATION')
            and   type = 'U')
   drop table dbo.TM_TESTSPECIFICATION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_ACTION_LOGS')
            and   type = 'U')
   drop table dbo.TS_ACTION_LOGS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_ACTION_PERMISSION')
            and   type = 'U')
   drop table dbo.TS_ACTION_PERMISSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_ACTION_PERMISSION_ROLE')
            and   type = 'U')
   drop table dbo.TS_ACTION_PERMISSION_ROLE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_DEPARTMENT')
            and   type = 'U')
   drop table dbo.TS_DEPARTMENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_DEPARTMENT_USER')
            and   type = 'U')
   drop table dbo.TS_DEPARTMENT_USER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_DICCATEGORYD')
            and   type = 'U')
   drop table dbo.TS_DICCATEGORYD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_DICTIONARY')
            and   type = 'U')
   drop table dbo.TS_DICTIONARY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_MENU_PERMISSION')
            and   type = 'U')
   drop table dbo.TS_MENU_PERMISSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_MENU_PERMISSION_ROLE')
            and   type = 'U')
   drop table dbo.TS_MENU_PERMISSION_ROLE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_ROLE')
            and   type = 'U')
   drop table dbo.TS_ROLE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_ROLE_USER')
            and   type = 'U')
   drop table dbo.TS_ROLE_USER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TS_USER')
            and   type = 'U')
   drop table dbo.TS_USER
go


/*==============================================================*/
/* User: dbo                                                    */
/*==============================================================*/


/*==============================================================*/
/* Table: TM_ACCESSCONTROLSETTINGS                              */
/*==============================================================*/
create table dbo.TM_ACCESSCONTROLSETTINGS (
   SETTINGS_ID          nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   AREA                 nvarchar(50)         null,
   CONTROLNUMBER        nvarchar(50)         collate Chinese_PRC_CI_AS null,
   CONTROLSTATUS_ID     nvarchar(36)         collate Chinese_PRC_CI_AS null,
   ISSAMECARIN          bit                  ,
   CARCOUNT             int                  ,
   DEFAULTROAD_ID       nvarchar(36)         collate Chinese_PRC_CI_AS null,
   CREATOR              varchar(24)          null,
   CREATETIME           datetime             null,
   VERSION              int                  null,
   ISDELETE             bit                  null,
   constraint PK_SETTING primary key (SETTINGS_ID)
         on "PRIMARY"
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TM_DEVICEMANAGEMENT                                   */
/*==============================================================*/
create table dbo.TM_DEVICEMANAGEMENT (
   DEVICE_ID            nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   DEVICETYPE_ID        nvarchar(36)         collate Chinese_PRC_CI_AS null,
   DEVICESTATUS_ID      nvarchar(36)         collate Chinese_PRC_CI_AS null,
   INOUTTYPE            bit                  ,
   INUSECARID           nvarchar(36)         collate Chinese_PRC_CI_AS null,
   CREATOR              varchar(24)          null,
   CREATETIME           datetime             null,
   VERSION              int                  null,
   ISDELETE             bit                  null,
   constraint PK_DEVICE primary key (DEVICE_ID)
         on "PRIMARY"
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TM_ENTERPRISESCUSTOMERS                               */
/*==============================================================*/
create table dbo.TM_ENTERPRISESCUSTOMERS (
   ENTERPRISES_ID       nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   CHINESENAME          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   ENGLISHNAME          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   ADDRESS              nvarchar(255)        collate Chinese_PRC_CI_AS null,
   COUNTRY              nvarchar(255)        collate Chinese_PRC_CI_AS null,
   ZIPCODE              nvarchar(36)         collate Chinese_PRC_CI_AS null,
   TEL                  nvarchar(36)         collate Chinese_PRC_CI_AS null,
   FAX                  nvarchar(36)         collate Chinese_PRC_CI_AS null,
   DEPOSITBANK          nvarchar(36)         collate Chinese_PRC_CI_AS null,
   ACCOUNTS             nvarchar(36)         null,
   TYPE_ID              nvarchar(36)         null,
   RELATION_ID          nvarchar(36)         null,
   NUMBER               nvarchar(255)        null,
   CREATOR              varchar(24)          null,
   CREATETIME           datetime             null,
   VERSION              int                  null,
   ISDELETE             bit                  null,
   constraint PK_ENTERPRISE primary key (ENTERPRISES_ID)
         on "PRIMARY"
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TM_INFORMATION                                        */
/*==============================================================*/
create table dbo.TM_INFORMATION (
   INFORMATION_ID       nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   LEVEL                bit                  ,
   TARGET               nvarchar(36)         collate Chinese_PRC_CI_AS null,
   SCREEN               bit                  ,
   PERIODOFVALIDAITY    nvarchar(255)        collate Chinese_PRC_CI_AS null,
   UNIT_ID              nvarchar(36)         collate Chinese_PRC_CI_AS null,
   ISSUER               nvarchar(36)         collate Chinese_PRC_CI_AS null,
   ISSUTIME             datetime             ,
   CONTENT              nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CREATOR              varchar(24)          null,
   CREATETIME           datetime             null,
   VERSION              int                  null,
   ISDELETE             bit                  null,
   constraint PK_INFORMATION primary key (INFORMATION_ID)
         on "PRIMARY"
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TM_OILPRICES                                          */
/*==============================================================*/
create table dbo.TM_OILPRICES (
   OIL_ID               nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   OILTYPE_ID           nvarchar(255)        collate Chinese_PRC_CI_AS null,
   OILPRICE             nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CUTDAY               datetime             null,
   CUTTIME              datetime             null,
   UPDATERPEOPLE_ID     nvarchar(36)         collate Chinese_PRC_CI_AS null,
   UPDATETIME           datetime             ,
   CREATOR              varchar(24)          null,
   CREATETIME           datetime             null,
   VERSION              int                  null,
   ISDELETE             bit                  null,
   constraint PK_OIL primary key (OIL_ID)
         on "PRIMARY"
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TM_PRICEMANAGE                                        */
/*==============================================================*/
create table dbo.TM_PRICEMANAGE (
   PRICE_ID             nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   PRICEPROJECT_ID      nvarchar(36)         collate Chinese_PRC_CI_AS null,
   PRICEPROJECTSUBCLASS_ID nvarchar(36)         collate Chinese_PRC_CI_AS null,
   CUSTOMTYPE_ID        nvarchar(36)         collate Chinese_PRC_CI_AS null,
   WBSNUMBER            nvarchar(50)         collate Chinese_PRC_CI_AS null,
   ACTIVITYTYPE         nvarchar(50)         collate Chinese_PRC_CI_AS null,
   PRICEUNIT            nvarchar(50)         collate Chinese_PRC_CI_AS null,
   PRICE                nvarchar(36)         collate Chinese_PRC_CI_AS null,
   CREATOR              varchar(24)          null,
   CREATETIME           datetime             null,
   VERSION              int                  null,
   ISDELETE             bit                  null,
   constraint PK_PRICE primary key (PRICE_ID)
         on "PRIMARY"
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TM_PROJECTINFO                                        */
/*==============================================================*/
create table dbo.TM_PROJECTINFO (
   PROJECT_ID           nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   OWNEDENTERPRISES_ID  nvarchar(255)        collate Chinese_PRC_CI_AS null,
   NUMBER               nvarchar(255)        null,
   MANAGE_NAME          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   BUDGET               nvarchar(255)        collate Chinese_PRC_CI_AS null,
   COORDINATOR_NAME     nvarchar(255)        collate Chinese_PRC_CI_AS null,
   COORDINATOR_TEL      nvarchar(255)        collate Chinese_PRC_CI_AS null,
   COORDINATOR_MAIL     nvarchar(255)        collate Chinese_PRC_CI_AS null,
   STATUS_ID            nvarchar(36)         collate Chinese_PRC_CI_AS null,
   TYPE_ID              nvarchar(36)         collate Chinese_PRC_CI_AS null,
   AGREEMENTTYPE_ID     nvarchar(36)         null,
   STARTTIME            datetime             null,
   ENDTIME              datetime             null,
   CREATOR              varchar(24)          null,
   CREATETIME           datetime             null,
   VERSION              int                  null,
   ISDELETE             bit                  null,
   constraint PK_TM_PROJECTINFO primary key (PROJECT_ID)
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TM_ROADINFOMATION                                     */
/*==============================================================*/
create table dbo.TM_ROADINFOMATION (
   ROAD_ID              nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   CHINESENAME          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   ENGLISHNAME          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   LEVEL_ID             nvarchar(255)        collate Chinese_PRC_CI_AS null,
   PARENTROAD_ID        nvarchar(255)        collate Chinese_PRC_CI_AS null,
   SAFERULES_ID         nvarchar(36)         collate Chinese_PRC_CI_AS null,
   STATUS               nvarchar(36)         collate Chinese_PRC_CI_AS null,
   ISSAMECAR            nvarchar(36)         collate Chinese_PRC_CI_AS null,
   CARCOUNTS            nvarchar(36)         null,
   CREATOR              varchar(24)          null,
   CREATETIME           datetime             null,
   VERSION              int                  null,
   ISDELETE             bit                  null,
   constraint PK_ROAD primary key (ROAD_ID)
         on "PRIMARY"
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TM_TESTSPECIFICATION                                  */
/*==============================================================*/
create table dbo.TM_TESTSPECIFICATION (
   SPECIFICATION_ID     nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   SPECIFICATIONNAME    nvarchar(255)        collate Chinese_PRC_CI_AS null,
   SCOPE                nvarchar(255)        collate Chinese_PRC_CI_AS null,
   ROAD_ID              nvarchar(36)         collate Chinese_PRC_CI_AS null,
   LENGTH               nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CONTENT              nvarchar(255)        collate Chinese_PRC_CI_AS null,
   ROADSTATUS_ID        nvarchar(36)         collate Chinese_PRC_CI_AS null,
   CREATOR              varchar(24)          null,
   CREATETIME           datetime             null,
   VERSION              int                  null,
   ISDELETE             bit                  null,
   constraint PK_SPECIFICATION primary key (SPECIFICATION_ID)
         on "PRIMARY"
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_ACTION_LOGS                                        */
/*==============================================================*/
create table dbo.TS_ACTION_LOGS (
   ID                   int                  identity(1, 1),
   USERNAME             nvarchar(24)         collate Chinese_PRC_CI_AS null,
   CONTROLLER           nvarchar(100)        collate Chinese_PRC_CI_AS null,
   ACTION_NAME          nvarchar(100)        collate Chinese_PRC_CI_AS null,
   TERMIN_ID            nvarchar(36)         collate Chinese_PRC_CI_AS null,
   DESCRIPTION          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CREATE_TIME          datetime             null,
   VERSION              int                  null,
   CREATOR              nvarchar(24)         collate Chinese_PRC_CI_AS null,
   ISDELETE             bit                  null,
   constraint PK_TS_ACTION_LOGS primary key (ID)
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_ACTION_PERMISSION                                  */
/*==============================================================*/
create table dbo.TS_ACTION_PERMISSION (
   ACTION_PERMISSION_ID nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   NAME                 nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CONTROLLER_NAME      nvarchar(255)        collate Chinese_PRC_CI_AS null,
   DESCRIPTION          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CREATETIME           datetime             null,
   ISDELETE             bit                  null,
   VERSION              int                  null,
   constraint PK_TS_ACTION_PERMISSION primary key (ACTION_PERMISSION_ID)
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_ACTION_PERMISSION_ROLE                             */
/*==============================================================*/
create table dbo.TS_ACTION_PERMISSION_ROLE (
   ACTION_PERMISSION_ID nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   ROLE_ID              nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   constraint PK_TS_ACTION_PERMISSION_ROLE primary key (ACTION_PERMISSION_ID, ROLE_ID)
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_DEPARTMENT                                         */
/*==============================================================*/
create table dbo.TS_DEPARTMENT (
   DEPARTMENT_ID        nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   NAME                 nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CODE                 nvarchar(255)        collate Chinese_PRC_CI_AS null,
   DESCRIPTION          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   INPUT_CODE2          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   INPUT_CODE1          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   INPUT_CODE3          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CREATETIME           datetime             null,
   ISDELETE             bit                  null,
   VERSION              int                  null,
   constraint PK_TS_DEPARTMENT primary key (DEPARTMENT_ID)
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_DEPARTMENT_USER                                    */
/*==============================================================*/
create table dbo.TS_DEPARTMENT_USER (
   DEPARTMENT_ID        nvarchar(36)         collate Chinese_PRC_CI_AS null,
   USER_ID              nvarchar(36)         collate Chinese_PRC_CI_AS null
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_DICCATEGORYD                                       */
/*==============================================================*/
create table dbo.TS_DICCATEGORYD (
   DICCATEGORY_ID       varchar(36)          collate Chinese_PRC_CI_AS not null,
   NAME                 varchar(255)         collate Chinese_PRC_CI_AS null,
   TREE_CODE            varchar(255)         collate Chinese_PRC_CI_AS null,
   DESCRIPTION          varchar(255)         collate Chinese_PRC_CI_AS null,
   PARENT_ID            varchar(36)          collate Chinese_PRC_CI_AS null,
   LEAF                 bit                  null,
   CREATETIME           datetime             null,
   ISDELETE             bit                  null,
   VERSION              int                  null,
   NODE_LEVEL           int                  null,
   INDEX_FIELD          int                  null,
   constraint PK_TS_DICCATEGORYD primary key (DICCATEGORY_ID)
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_DICTIONARY                                         */
/*==============================================================*/
create table dbo.TS_DICTIONARY (
   DICTIONARY_ID        varchar(36)          collate Chinese_PRC_CI_AS not null,
   DICCATEGORY_ID       varchar(36)          collate Chinese_PRC_CI_AS null,
   NAME                 varchar(255)         collate Chinese_PRC_CI_AS null,
   CODE                 varchar(255)         collate Chinese_PRC_CI_AS null,
   DESCRIPTION          varchar(255)         collate Chinese_PRC_CI_AS null,
   INPUT_CODE2          varchar(255)         collate Chinese_PRC_CI_AS null,
   INPUT_CODE1          varchar(255)         collate Chinese_PRC_CI_AS null,
   INPUT_CODE3          varchar(255)         collate Chinese_PRC_CI_AS null,
   INDEX_FIELD          int                  null,
   CREATETIME           datetime             null,
   ISDELETE             bit                  null,
   VERSION              int                  null,
   constraint PK_TS_DICTIONARY primary key (DICTIONARY_ID)
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_MENU_PERMISSION                                    */
/*==============================================================*/
create table dbo.TS_MENU_PERMISSION (
   MENU_PERMISSION_ID   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   ACTION_NAME          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CONTROLLER_NAME      nvarchar(255)        collate Chinese_PRC_CI_AS null,
   DESCRIPTION          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   ICON1                nvarchar(255)        collate Chinese_PRC_CI_AS null,
   ICON2                nvarchar(255)        collate Chinese_PRC_CI_AS null,
   NAME                 nvarchar(255)        collate Chinese_PRC_CI_AS null,
   PARENT_ID            nvarchar(36)         collate Chinese_PRC_CI_AS null,
   TREE_CODE            nvarchar(255)        collate Chinese_PRC_CI_AS null,
   LEAF                 bit                  null,
   URL                  nvarchar(255)        collate Chinese_PRC_CI_AS null,
   ISEXTPAGE            bit                  null,
   INDEX_FIELD          int                  null,
   CREATETIME           datetime             null,
   ISDELETE             bit                  null,
   VERSION              int                  null,
   NODE_LEVEL           int                  null,
   constraint PK_TS_MENU_PERMISSION primary key (MENU_PERMISSION_ID)
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_MENU_PERMISSION_ROLE                               */
/*==============================================================*/
create table dbo.TS_MENU_PERMISSION_ROLE (
   MENU_PERMISSION_ID   nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   ROLE_ID              nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   constraint PK_TS_MENU_PERMISSION_ROLE primary key (MENU_PERMISSION_ID, ROLE_ID)
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_ROLE                                               */
/*==============================================================*/
create table dbo.TS_ROLE (
   ROLE_ID              nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   NAME                 nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CODE                 nvarchar(255)        collate Chinese_PRC_CI_AS null,
   DESCRIPTION          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CREATETIME           datetime             null,
   ISDELETE             bit                  null,
   VERSION              int                  null,
   STATE                int                  null,
   constraint PK_TS_ROLE primary key (ROLE_ID)
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_ROLE_USER                                          */
/*==============================================================*/
create table dbo.TS_ROLE_USER (
   ROLE_ID              nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   USER_ID              nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   constraint PK_TS_ROLE_USER primary key (ROLE_ID, USER_ID)
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: TS_USER                                               */
/*==============================================================*/
create table dbo.TS_USER (
   USER_ID              nvarchar(36)         collate Chinese_PRC_CI_AS not null,
   NAME                 nvarchar(255)        collate Chinese_PRC_CI_AS null,
   LOGIN_NAME           nvarchar(255)        collate Chinese_PRC_CI_AS null,
   PWD                  nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CODE                 nvarchar(255)        collate Chinese_PRC_CI_AS null,
   DESCRIPTION          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   INPUT_CODE2          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   INPUT_CODE1          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   INPUT_CODE3          nvarchar(255)        collate Chinese_PRC_CI_AS null,
   CREATETIME           datetime             null,
   ISDELETE             bit                  null,
   VERSION              int                  null,
   STATE                int                  null,
   constraint PK_TS_USER primary key (USER_ID)
         on "PRIMARY"
)
on "PRIMARY"
go

alter table dbo.TS_ACTION_PERMISSION_ROLE
   add constraint FK_TS_ACTIO_REFERENCE_TS_ACTIO foreign key (ACTION_PERMISSION_ID)
      references dbo.TS_ACTION_PERMISSION (ACTION_PERMISSION_ID)
go

alter table dbo.TS_ACTION_PERMISSION_ROLE
   add constraint FK_TS_ACTIO_REFERENCE_TS_ROLE foreign key (ROLE_ID)
      references dbo.TS_ROLE (ROLE_ID)
go

alter table dbo.TS_DEPARTMENT_USER
   add constraint FK_TS_DEPAR_REFERENCE_TS_USER foreign key (USER_ID)
      references dbo.TS_USER (USER_ID)
go

alter table dbo.TS_DEPARTMENT_USER
   add constraint FK_TS_DEPAR_REFERENCE_TS_DEPAR foreign key (DEPARTMENT_ID)
      references dbo.TS_DEPARTMENT (DEPARTMENT_ID)
go

alter table dbo.TS_DICTIONARY
   add constraint FK_TS_DICTI_REFERENCE_TS_DICCA foreign key (DICCATEGORY_ID)
      references dbo.TS_DICCATEGORYD (DICCATEGORY_ID)
go

alter table dbo.TS_MENU_PERMISSION_ROLE
   add constraint FK_TS_MENU__REFERENCE_TS_MENU_ foreign key (MENU_PERMISSION_ID)
      references dbo.TS_MENU_PERMISSION (MENU_PERMISSION_ID)
go

alter table dbo.TS_MENU_PERMISSION_ROLE
   add constraint FK_TS_MENU__REFERENCE_TS_ROLE foreign key (ROLE_ID)
      references dbo.TS_ROLE (ROLE_ID)
go

alter table dbo.TS_ROLE_USER
   add constraint FK_TS_ROLE__REFERENCE_TS_USER foreign key (USER_ID)
      references dbo.TS_USER (USER_ID)
go

alter table dbo.TS_ROLE_USER
   add constraint FK_TS_ROLE__REFERENCE_TS_ROLE foreign key (ROLE_ID)
      references dbo.TS_ROLE (ROLE_ID)
go
