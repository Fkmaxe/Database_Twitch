CREATE TRIGGER usernameUpdate
BEFORE UPDATE ON `users` 
FOR EACH ROW
BEGIN
	IF CHAR_LENGTH(NEW.username) >=4 OR CHAR_LENGTH(NEW.username) <=25
    THEN SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT ='La valeur du pseudo doit être comprise entre 4 et 25 caractères';
	END IF;
END;