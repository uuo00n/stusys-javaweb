CREATE TABLE students
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(50)   NOT NULL,
    sex        ENUM('男', '女') NOT NULL,
    age        TINYINT UNSIGNED NOT NULL,
    weight     DECIMAL(5, 2) NOT NULL,
    height     DECIMAL(5, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


insert into students
values (2014511511, '张三', '男', 20, 70, 180, DEFAULT);
insert into students
values (2014511512, '李四', '男', 20, 70, 180, DEFAULT);
insert into students
values (2014511513, '王五', '男', 20, 70, 180, DEFAULT);
insert into students
values (2014511514, '赵六', '女', 21, 50, 180, DEFAULT);
insert into students
values (2014511515, '孙七', '女', 22, 51, 180, DEFAULT);