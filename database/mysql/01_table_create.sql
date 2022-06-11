-- author: cairuoyu
-- github: https://github.com/cairuoyu/flutter_admin_resource
-- Host: cairuoyu.com    Database: flutter_admin
-- ------------------------------------------------------
-- Server version	8.0.20

create table article
(
    id           varchar(36)  not null
        primary key,
    title        varchar(254) null,
    title_sub    varchar(254) null,
    author       varchar(36)  null,
    status       varchar(20)  null,
    publish_time varchar(20)  null,
    order_by     int          null,
    create_time  datetime     null,
    update_time  datetime     null,
    creater_id   varchar(36)  null,
    update_id    varchar(36)  null,
    file_url     varchar(254) null
);

create table dept
(
    id          varchar(36)  not null
        primary key,
    name        varchar(254) null,
    name_short  varchar(254) null,
    pid         varchar(36)  null,
    header_id   varchar(36)  null,
    fun         varchar(2)   null,
    remark      varchar(254) null,
    order_by    int          null,
    create_time datetime     null,
    update_time datetime     null,
    creater_id  varchar(36)  null,
    update_id   varchar(36)  null
);

create table dict
(
    id          varchar(36) not null
        primary key,
    code        varchar(45) null,
    name        varchar(45) null,
    create_time datetime    null,
    update_time datetime    null,
    creater_id  varchar(45) null,
    state       char        null
);

create table dict_item
(
    id          varchar(36) not null
        primary key,
    dict_id     varchar(36) null,
    code        varchar(45) null,
    name        varchar(45) null,
    create_time datetime    null,
    update_time datetime    null,
    creater_id  varchar(36) null
);

create table file
(
    id          varchar(36)  not null
        primary key,
    bid         varchar(36)  null,
    name        varchar(200) null,
    path        varchar(200) null,
    type        varchar(45)  null,
    size        int          null,
    create_time datetime     null,
    creater_id  varchar(36)  null
);

create table image
(
    id          varchar(36)  not null
        primary key,
    title       varchar(145) null,
    category_id varchar(36)  null,
    thumbs      int          null,
    memo        varchar(245) null,
    url         varchar(245) null,
    create_time datetime     null,
    creater_id  varchar(36)  null
);

create table menu
(
    id           varchar(36)  not null
        primary key,
    name         varchar(254) null,
    name_en      varchar(254) null,
    icon         varchar(45)  null,
    pid          varchar(254) null,
    url          varchar(254) null,
    module       varchar(254) null,
    remark       varchar(254) null,
    create_time  datetime     null,
    update_time  datetime     null,
    order_by     int          null,
    subsystem_id varchar(36)  null
);

create table message
(
    id               varchar(36)                         not null
        primary key,
    title            varchar(200)                        null,
    content          varchar(2000)                       null,
    state            varchar(1)                          null,
    comment_count    int                                 null,
    appreciate_count int                                 null,
    creater_id       varchar(36)                         null,
    create_time      timestamp default CURRENT_TIMESTAMP null,
    update_time      timestamp                           null
);

create table message_replay
(
    id          varchar(36)   not null
        primary key,
    message_id  varchar(36)   null,
    content     varchar(1000) null,
    create_time datetime      null,
    creater_id  varchar(36)   null
);

create table person
(
    id          varchar(254) not null
        primary key,
    user_id     varchar(254) null,
    nick_name   varchar(254) null,
    avatar_url  varchar(254) null,
    gender      varchar(254) null,
    country     varchar(254) null,
    province    varchar(254) null,
    city        varchar(254) null,
    name        varchar(254) null,
    school      varchar(254) null,
    major       varchar(254) null,
    birthday    varchar(254) null,
    entrance    varchar(254) null,
    hometown    varchar(254) null,
    memo        varchar(254) null,
    dept_id     varchar(254) null,
    create_time datetime     null,
    update_time datetime     null
);

create table role
(
    id          varchar(36)  not null
        primary key,
    name        varchar(145) null,
    name_en     varchar(145) null,
    create_time datetime     null,
    creater_id  varchar(45)  null,
    update_time datetime     null
);

create table role_menu
(
    menu_id     varchar(45) not null,
    role_id     varchar(45) not null,
    create_time datetime    null,
    create_id   varchar(45) null,
    primary key (menu_id, role_id)
);

create table role_user
(
    user_id     varchar(45) not null,
    role_id     varchar(45) not null,
    create_time datetime    null,
    create_id   varchar(45) null,
    primary key (user_id, role_id)
);

create table s_area_age_gender
(
    id       text null,
    area     text null,
    age      int  null,
    age_g1   int  null,
    age_g2   int  null,
    age1     int  null,
    age1_g1  int  null,
    age1_g2  int  null,
    age2     int  null,
    age2_g1  int  null,
    age2_g2  int  null,
    age3     int  null,
    age3_g1  int  null,
    age3_g2  int  null,
    age4     int  null,
    age4_g1  int  null,
    age4_g2  int  null,
    age5     int  null,
    age5_g1  int  null,
    age5_g2  int  null,
    age6     int  null,
    age6_g1  int  null,
    age6_g2  int  null,
    age7     int  null,
    age7_g1  int  null,
    age7_g2  int  null,
    age8     int  null,
    age8_g1  int  null,
    age8_g2  int  null,
    age9     int  null,
    age9_g1  int  null,
    age9_g2  int  null,
    age10    int  null,
    age10_g1 int  null,
    age10_g2 int  null,
    age11    int  null,
    age11_g1 int  null,
    age11_g2 int  null,
    age12    int  null,
    age12_g1 int  null,
    age12_g2 int  null,
    age13    int  null,
    age13_g1 int  null,
    age13_g2 int  null,
    age14    int  null,
    age14_g1 int  null,
    age14_g2 int  null,
    age15    int  null,
    age15_g1 int  null,
    age15_g2 int  null,
    age16    int  null,
    age16_g1 int  null,
    age16_g2 int  null,
    age17    int  null,
    age17_g1 int  null,
    age17_g2 int  null,
    age18    int  null,
    age18_g1 int  null,
    age18_g2 int  null,
    age19    int  null,
    age19_g1 int  null,
    age19_g2 int  null,
    age20    int  null,
    age20_g1 int  null,
    age20_g2 int  null,
    age21    int  null,
    age21_g1 int  null,
    age21_g2 int  null,
    age22    int  null,
    age22_g1 int  null,
    age22_g2 int  null
);

create table setting_default_tab
(
    id           varchar(36)  not null
        primary key,
    name         varchar(254) null,
    name_en      varchar(254) null,
    icon         varchar(45)  null,
    user_id      varchar(36)  null,
    url          varchar(254) null,
    module       varchar(254) null,
    remark       varchar(254) null,
    order_by     int          null,
    subsystem_id varchar(36)  null,
    create_time  datetime     null,
    update_time  datetime     null
);

create table subsystem
(
    id          varchar(36)  not null
        primary key,
    code        varchar(45)  null,
    name        varchar(200) null,
    url         varchar(200) null,
    order_by    varchar(500) null,
    remark      varchar(500) null,
    state       char         null,
    create_time datetime     null,
    update_time datetime     null,
    creater_id  varchar(36)  null,
    update_id   varchar(36)  null
);

create table sys_log
(
    id             varchar(254) not null comment '日志ID'
        primary key,
    user_id        varchar(254) null comment '用户名字',
    user_ip        varchar(254) null comment '用户IP',
    request_class  varchar(254) null comment '请求方法',
    request_method varchar(254) null comment '请求方法',
    request_desc   varchar(254) null comment '方法描述',
    create_time    datetime     null
);

create table user
(
    id          varchar(254) not null
        primary key,
    user_name   varchar(254) null,
    password    varchar(254) null,
    create_time datetime     null,
    update_time datetime     null,
    face        text         null
);

create table user_info
(
    id          varchar(254) not null
        primary key,
    user_id     varchar(254) null,
    user_name   varchar(245) null,
    nick_name   varchar(254) null,
    avatar_url  varchar(254) null,
    gender      varchar(254) null,
    country     varchar(254) null,
    province    varchar(254) null,
    city        varchar(254) null,
    name        varchar(254) null,
    school      varchar(254) null,
    major       varchar(254) null,
    birthday    varchar(20)  null,
    entrance    varchar(254) null,
    hometown    varchar(254) null,
    memo        varchar(254) null,
    dept_id     varchar(254) null,
    create_time datetime     null,
    update_time datetime     null
);

create table video
(
    id          varchar(36)  not null
        primary key,
    title       varchar(145) null,
    category_id varchar(36)  null,
    thumbs      int          null,
    memo        varchar(245) null,
    url         varchar(245) null,
    create_time datetime     null,
    creater_id  varchar(36)  null
);

