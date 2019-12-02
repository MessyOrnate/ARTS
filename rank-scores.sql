# Write your MySQL query statement below
select s1.score,
(select count(*)+1 
from (select distinct score from Scores) s2 
where s2.score>s1.score) as Rank 
from Scores s1 order by Rank

CREATE DATABASE `bpc_company_setting` CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci';
use bpc_commpany_setting;
CREATE TABLE `account_num_limits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `p_co_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `num_limit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '账号数量',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `udx_p_co_id` (`p_co_id`) USING BTREE COMMENT '公司ID唯一'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='账号数量限制';

CREATE TABLE `entity_attribute_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '实体规则ID',
  `p_co_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公司ID',
  `last_updated_by` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次修改人的p_uid',
  `entity_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '实体类型 1客户实体(client)  2职位实体(position)',
  `rules` text NOT NULL COMMENT '实体规则 格式json',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次修改时间',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `udx_p_co_id_entity_type` (`p_co_id`,`entity_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='公司实体配置规则';