/*
Data Store: LMS LMses
Created: 2019-12-05T11:43:50.876Z
By: root
Appian Version: 19.4.43.0
Target Database: MySQL 5.7.18
Database Driver: MySQL Connector Java mysql-connector-java-5.1.47 ( Revision: fe1903b1ecb4a96a917f7ed3190d80c049b1de29 )
*/

/* UPDATE DDL */
/* DROP AND CREATE DDL */
/* WARNING: The DDL commented out below will drop and re-create all tables.
    alter table `qckapp_lms_join_book_id` 
        drop 
        foreign key lmslms_bookid;

    alter table `qckapp_lms_join_book_id` 
        drop 
        foreign key FK53242CA02BA3D583;

    alter table `qckapp_lms_main` 
        drop 
        foreign key lmslms_priority;

    alter table `qckapp_lms_main` 
        drop 
        foreign key lmslms_status;

    drop table if exists `qckapp_lms_activity`;

    drop table if exists `qckapp_lms_book_id`;

    drop table if exists `qckapp_lms_join_book_id`;

    drop table if exists `qckapp_lms_main`;

    drop table if exists `qckapp_lms_priority`;

    drop table if exists `qckapp_lms_status`;

    create table `qckapp_lms_activity` (
        `id` integer not null auto_increment,
        `recordid` integer,
        `who` varchar(255),
        `action` varchar(255),
        `details` VARCHAR(4000),
        `when` datetime,
        primary key (`id`)
    ) ENGINE=InnoDB;

    create table `qckapp_lms_book_id` (
        `id` integer not null auto_increment,
        `value` varchar(255),
        `order` integer,
        `active` boolean,
        primary key (`id`)
    ) ENGINE=InnoDB;

    create table `qckapp_lms_join_book_id` (
        `book_id` integer not null,
        `inv_book_id` integer
    ) ENGINE=InnoDB;

    create table `qckapp_lms_main` (
        `id` integer not null auto_increment,
        `book_name` varchar(255),
        `status` integer,
        `priority` integer,
        `studentname` varchar(255),
        `folderid` integer,
        `createdby` varchar(255),
        `createdon` datetime,
        `updatedby` varchar(255),
        `updatedon` datetime,
        primary key (`id`)
    ) ENGINE=InnoDB;

    create table `qckapp_lms_priority` (
        `id` integer not null auto_increment,
        `value` varchar(255),
        `order` integer,
        `active` boolean,
        primary key (`id`)
    ) ENGINE=InnoDB;

    create table `qckapp_lms_status` (
        `id` integer not null auto_increment,
        `value` varchar(255),
        `order` integer,
        `active` boolean,
        primary key (`id`)
    ) ENGINE=InnoDB;

    alter table `qckapp_lms_join_book_id` 
        add index lmslms_bookid (`inv_book_id`), 
        add constraint lmslms_bookid 
        foreign key (`inv_book_id`) 
        references `qckapp_lms_book_id` (`id`);

    alter table `qckapp_lms_join_book_id` 
        add index FK53242CA02BA3D583 (`book_id`), 
        add constraint FK53242CA02BA3D583 
        foreign key (`book_id`) 
        references `qckapp_lms_main` (`id`);

    alter table `qckapp_lms_main` 
        add index lmslms_priority (`priority`), 
        add constraint lmslms_priority 
        foreign key (`priority`) 
        references `qckapp_lms_priority` (`id`);

    alter table `qckapp_lms_main` 
        add index lmslms_status (`status`), 
        add constraint lmslms_status 
        foreign key (`status`) 
        references `qckapp_lms_status` (`id`);
*/
