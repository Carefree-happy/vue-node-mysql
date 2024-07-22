/* 1. 创建数据库 */
mysql -u root -p

CREATE DATABASE test_db;
/* 2. 使用创建的数据库 */
USE test_db;
/* 3. 创建数据表 user */
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL
);

/* 以上可以新增删除一个数据 */

/* 4. 插入数据的 SQL 语句 */
/* 代码中已经定义了插入数据的 SQL 语句： */

INSERT INTO user (name, age) VALUES (?, ?);
/* 在 MySQL 命令行中可以执行具体的插入操作（假设插入一个用户 John，年龄 30）： */

INSERT INTO user (name, age) VALUES ('John', 30);
/* 5. 查询数据的 SQL 语句
代码中也已经定义了查询数据的 SQL 语句： */

SELECT * FROM user WHERE name LIKE '%?%';
/* 在 MySQL 命令行中可以执行具体的查询操作（假设查询名字中包含 John 的用户）： */

SELECT * FROM user WHERE name LIKE '%John%';

/* 完整操作流程示例
在 MySQL 命令行中，完整的操作流程如下： */

/* -- Step 1: 创建数据库 */
CREATE DATABASE test_db;

/* -- Step 2: 使用创建的数据库 */
USE test_db;

/* -- Step 3: 创建数据表 */
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL
);

/* -- Step 4: 插入数据 */
INSERT INTO user (name, age) VALUES ('John', 30);
INSERT INTO user (name, age) VALUES ('Jane', 25);

/* -- Step 5: 查询数据 */
SELECT * FROM user WHERE name LIKE '%John%';
SELECT * FROM user WHERE name LIKE '%Jane%';