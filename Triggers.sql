CREATE TABLE teachers(
id INT Primary key,
name VARCHAR(25),
subject VARCHAR(20),
experiene INT,
salary Decimal(10,2)
);

INSERT INTO  teachers (name,subject,experience,salary)
values('Liya jose','Physics',12, 70000),
('Abin Mathew','Biology',2, 40000),
('Arya krishna','English',8, 85000),
('Ramya haridas','Geography',9,62000),
('Liya jose','History',7, 60000),
('Rekha nair','Chemistry',10, 80000),
('Krishna kripa','Science',4, 55000),
('Anila varma','Maths',5, 65000);

DELIMITER #
CREATE TRIGGER before_inser_teacher
AFTER INSERT ON teachers
FOR EACH ROW
BEGIN
  if new.salary < 0 then 
  signal sqlstate '45000'
  set message_text = 'salary cannot be negative';
  END IF;
  END #
  DELIMITER;
  

DELIMITER #
CREATE TRIGGER after_insert_teacher
AFTER INSERT ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, log_timestamp)
    VALUES (NEW.id, 'INSERT', CURRENT_TIMESTAMP);
END  #
DELIMITER ;

DELIMITER #

CREATE TRIGGER before_delete_teacher
BEFORE DELETE ON teachers
FOR EACH ROW
BEGIN
    IF OLD.experience > 10 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete a teacher with more than 10 years of experience';
    END IF;
END #
DELIMITER ;


DELIMITER #
CREATE TRIGGER after_delete_teacher
AFTER DELETE ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, log_timestamp)
    VALUES (OLD.id, 'DELETE', CURRENT_TIMESTAMP);
END #
DELIMITER ;


  
  






