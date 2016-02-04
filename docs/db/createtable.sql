CREATE TABLE "RPT_SDC_TOPO_INFO" (
  "TOPO_ID" bigint,
  "CURRENT_COUNT" bigint DEFAULT NULL,
  "CURRENT_APPEND_CNT" bigint DEFAULT NULL,
  "CURRENT_APPEND_SIZE" bigint DEFAULT NULL,
  "CURRENT_COST_TIME" bigint DEFAULT NULL,
  "INSERT_TIME" datetime DEFAULT NULL,
  "IP" varchar(32) DEFAULT NULL,
  "HOST" varchar(32) DEFAULT NULL,
   PRIMARY KEY ("TOPO_ID")
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "CFG_COVER_SCENARIOS" (
  "COVER_SCENARIOS_ID" varchar(64),
  "COVER_SCENARIOS" varchar(64) DEFAULT NULL,
  "REDIS_TABLENAME" varchar(64) DEFAULT NULL,
  "IN_USE" varchar(2) DEFAULT NULL,
  "IS_CONFIGURED" varchar(2) DEFAULT NULL,
  "SQL" varchar(1024) DEFAULT NULL,
   PRIMARY KEY ("COVER_SCENARIOS_ID")
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "cfg_base_station_info" (
  "CITY" varchar(64) DEFAULT NULL,
  "COUNTY" varchar(64) DEFAULT NULL,
  "CI" varchar(32) DEFAULT NULL,
  "CI_NAME" varchar(64) DEFAULT NULL,
  "COVER_SCENARIOS" varchar(64) DEFAULT NULL,
  "LONGITUDE" varchar(128) DEFAULT NULL,
  "LATITUDE" varchar(128) DEFAULT NULL,
  "SECTOR_TYPE" varchar(64) DEFAULT NULL,
  "STATION_NAME" varchar(128) DEFAULT NULL,
  "MACHINE_ROOM_ADDR" varchar(128) DEFAULT NULL,
  "STATION_LONGITUDE" varchar(128) DEFAULT NULL,
  "STATION_LATITUDE" varchar(128) DEFAULT NULL,
  "LAC" varchar(32) DEFAULT NULL,
  "STATUS" varchar(32) DEFAULT NULL
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "cfg_custom_group_collect_info" (
  "FILE_NAME" varchar(128) DEFAULT NULL,
  "records" int(11) DEFAULT NULL,
  "IS_FINISH" int(11) DEFAULT NULL,
  "OPER_TIME" datetime DEFAULT NULL,
  "active_id" varchar(128) DEFAULT NULL
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "cfg_event_first_class" (
  "CLASS_CODE" varchar(12) NOT NULL,
  "CLASS_LEVEL" int(1) DEFAULT NULL,
  "CLASS_PARENT" varchar(12) DEFAULT NULL,
  "CLASS_NAME" varchar(128) DEFAULT NULL,
  "IN_USE" int(1) DEFAULT NULL,
  "SOURCE_ID" varchar(12) DEFAULT NULL,
  PRIMARY KEY ("CLASS_CODE")
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "cfg_event_second_class" (
  "CLASS_CODE" varchar(12) NOT NULL,
  "CLASS_LEVEL" int(1) DEFAULT NULL,
  "CLASS_PARENT" int(5) DEFAULT NULL,
  "CLASS_NAME" varchar(128) DEFAULT NULL,
  "IN_USE" int(1) DEFAULT NULL,
  PRIMARY KEY ("CLASS_CODE")
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "cfg_sale_active" (
  "active_id" varchar(128) NOT NULL,
  "step_id" varchar(128) DEFAULT NULL,
  "usergroup_id" varchar(128) DEFAULT NULL,
  "usergroup_refresh" int(11) DEFAULT NULL,
  "area_id" varchar(128) DEFAULT NULL,
  "is_capture" int(11) DEFAULT NULL,
  "active_opp_id" varchar(128) DEFAULT NULL,
  "rule_exprs" varchar(4096) DEFAULT NULL,
  "request_content" varchar(10922) DEFAULT NULL,
  "request_time" datetime DEFAULT NULL,
  "REQUEST_TIMESTAMP" text,
  PRIMARY KEY ("active_id")
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "cfg_sale_active_rule" (
  "active_id" varchar(128) DEFAULT NULL,
  "rule_instance_id" varchar(128) DEFAULT NULL,
  "rule_id" varchar(128) DEFAULT NULL,
  "event_id" varchar(128) DEFAULT NULL,
  "param_exprs" varchar(4096) DEFAULT NULL,
  "param_exprs_detail" varchar(4096) DEFAULT NULL
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "cfg_sale_active_rule_param" (
  "active_id" varchar(128) DEFAULT NULL,
  "rule_instance_id" varchar(128) DEFAULT NULL,
  "param_id" varchar(128) DEFAULT NULL,
  "oper_id" varchar(128) DEFAULT NULL,
  "param_value" varchar(128) DEFAULT NULL
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "cfg_source_data" (
  "SOURCE_ID" varchar(12) NOT NULL,
  "SOURCE_NAME" varchar(128) DEFAULT NULL,
  "SOURCE_DESC" varchar(128) DEFAULT NULL,
  "FIELDS_LIST" varchar(1024) DEFAULT NULL,
  "FIELD_DELIMITER" varchar(8) DEFAULT NULL,
  "FIELDS_SIZE" int(5) DEFAULT NULL,
  "KEY_FIELD_INDEX" int(5) DEFAULT NULL,
  "KEY_FIELD" varchar(32) DEFAULT NULL,
  "INSTANCE" varchar(4096) DEFAULT NULL,
  PRIMARY KEY ("SOURCE_ID")
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "inf_active_opp" (
  "MON_NUM" varchar(6) DEFAULT NULL,
  "CHANCE_ID" varchar(16) DEFAULT NULL,
  "EVENT_TYPE" int(5) DEFAULT NULL,
  "USER_ID" varchar(16) DEFAULT NULL,
  "MSISDN" varchar(16) DEFAULT NULL,
  "USERGROUP_ID" varchar(30) DEFAULT NULL,
  "ACTIVE_ID" varchar(45) DEFAULT NULL,
  "STEP_ID" varchar(64) DEFAULT NULL,
  "ACTIVE_OPP_ID" varchar(16) DEFAULT NULL,
  "RULE_ID" varchar(15) DEFAULT NULL,
  "RULE_INSTANCE_ID" varchar(20) DEFAULT NULL
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "inf_atom_event" (
  "STAT_DATE" int(8) DEFAULT NULL,
  "OPER_TYPE" int(1) DEFAULT NULL,
  "EVENT_ID" varchar(12) NOT NULL,
  "EVENT_NAME" varchar(100) DEFAULT NULL,
  "EVENT_CLS" varchar(12) DEFAULT NULL,
  "EVENT_CLS_NAME" varchar(200) DEFAULT NULL,
  "EVENT_S_CLS" varchar(12) DEFAULT NULL,
  "EVENT_S_CLS_NAME" varchar(200) DEFAULT NULL,
  "EVENT_DESC" varchar(800) DEFAULT NULL,
  "TRI_PERIOD" int(1) DEFAULT NULL,
  "SOURCE_ID" varchar(12) DEFAULT NULL,
  "CAPTURE_FIELD" varchar(128) DEFAULT NULL,
  "EXPRESSION" varchar(256) DEFAULT NULL,
  "EXPRESSION_PARAM" varchar(256) DEFAULT NULL,
  "IS_REALIZE" int(1) DEFAULT NULL,
  "IN_USE" int(1) DEFAULT NULL,
  PRIMARY KEY ("EVENT_ID")
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "inf_atom_event_para" (
  "STAT_DATE" int(8) DEFAULT NULL,
  "OPER_TYPE" varchar(1) DEFAULT NULL,
  "EVNET_PARA_ID" varchar(12) NOT NULL,
  "EVNET_PARA_NAME" varchar(120) DEFAULT NULL,
  "EVENT_ID" varchar(12) DEFAULT NULL,
  "OPER_ID" varchar(120) DEFAULT NULL,
  "PARA_TYPE" varchar(12) DEFAULT NULL,
  "DICTIONARY_ID" varchar(50) DEFAULT NULL,
  "CONTROL_TYPE" int(1) DEFAULT NULL,
  PRIMARY KEY ("EVNET_PARA_ID")
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "inf_atom_event_para_dict" (
  "STAT_DATE" int(8) DEFAULT NULL,
  "OPER_TYPE" varchar(1) DEFAULT NULL,
  "DICTIONARY_ID" varchar(15) DEFAULT NULL,
  "DICTIONARY_NAME" varchar(50) DEFAULT NULL,
  "DICTIONARY_VALUE_ID" varchar(15) NOT NULL,
  "DICTIONARY_VALUE_NAME" varchar(200) DEFAULT NULL,
  "DICTIONARY_VALUE" varchar(4000) DEFAULT NULL,
  "DICTIONARY_VALUE_UNIT" varchar(15) DEFAULT NULL,
  PRIMARY KEY ("DICTIONARY_VALUE_ID")
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';

CREATE TABLE "rpt_record_sale_active" (
  "active_id" varchar(128) DEFAULT NULL,
  "original_timestamp" varchar(32) DEFAULT NULL,
  "deal_time" varchar(64) DEFAULT NULL,
  "insert_time" datetime
) ENGINE=EXPRESS REPLICATED  DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace';
