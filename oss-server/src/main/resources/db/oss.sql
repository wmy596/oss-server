--
-- 由SQLiteStudio v3.2.1 产生的文件 周二 8月 27 18:33:09 2019
--
-- 文本编码：System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- 表：oss_app_info
CREATE TABLE "oss_app_info" (
  "id" text NOT NULL,
  "name" text,
  "code" TEXT,
  "intro" TEXT,
  "dev_id" TEXT,
  "create_time" TEXT,
  "use_space" TEXT,
  "use_space_str" TEXT,
  PRIMARY KEY ("id")
);
INSERT INTO oss_app_info (id, name, code, intro, dev_id, create_time, use_space, use_space_str) VALUES ('e76d82e2976743719bc72ea83aa5292d', 'wokd', 'ssss', 'sdfs ', '9f7bd5e7a1a74e199de2ca4ed77aba2f', '2019-08-27 18:27:56', '0', '0kb');

-- 表：oss_developer
CREATE TABLE oss_developer (
    id            TEXT    NOT NULL,
    appid         TEXT,
    appsecret     TEXT,
    email         TEXT,
    create_time   TEXT,
    tel           TEXT,
    intro         TEXT,
    status        TEXT,
    use_space     INTEGER,
    name          TEXT,
    use_space_str TEXT,
    PRIMARY KEY (
        id
    )
);
INSERT INTO oss_developer (id, appid, appsecret, email, create_time, tel, intro, status, use_space, name, use_space_str) VALUES ('9f7bd5e7a1a74e199de2ca4ed77aba2f', 'oss766m3e', '2ggos392', 'wy@qq.com', '2019-08-27 18:27:41', '13800138000', '水电费是否', '0', 0, '发达的', '0kb');

-- 表：oss_information
CREATE TABLE "oss_information" (
  "id" text NOT NULL,
  "root" TEXT,
  "invoking_root" TEXT,
  "nginx_log_path" TEXT,
  "create_time" TEXT,
  "modified_time" TEXT,
  PRIMARY KEY ("id")
);
INSERT INTO oss_information (id, root, invoking_root, nginx_log_path, create_time, modified_time) VALUES ('5b8b7a2d1aa4414f95a2338aba9571d7', '/home/material/', 'http://192.168.0.7/', '/usr/local/nginx/logs/access.log', '2018-06-17 10:41:41', '2018-06-17 10:45:31');

-- 表：oss_item_info
CREATE TABLE "oss_item_info" (
  "id" text NOT NULL,
  "title" TEXT,
  "code" TEXT,
  "create_time" TEXT,
  "intro" TEXT,
  PRIMARY KEY ("id")
);

-- 表：oss_material_info
CREATE TABLE "oss_material_info" (
  "id" text NOT NULL,
  "original_name" TEXT,
  "store_path" TEXT,
  "url" TEXT,
  "user_id" text,
  "type" TEXT,
  "byte_str" TEXT,
  "len" integer,
  "create_time" TEXT,
  "last_modified_time" TEXT NOT NULL,
  PRIMARY KEY ("id", "last_modified_time")
);

-- 表：oss_sys_user
CREATE TABLE "oss_sys_user" (
  "id" text NOT NULL,
  "username" TEXT,
  "password" TEXT,
  "create_time" TEXT,
  "intro" TEXT,
  PRIMARY KEY ("id")
);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
