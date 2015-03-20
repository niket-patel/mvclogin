CREATE  TABLE users (
  username VARCHAR(45) NOT NULL ,
  PASSWORD VARCHAR(60) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username));
 
CREATE TABLE user_roles (
  user_role_id INT(11) NOT NULL AUTO_INCREMENT,
  username VARCHAR(45) NOT NULL,
  ROLE VARCHAR(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (ROLE,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));
 
INSERT INTO users(username,PASSWORD,enabled)
VALUES ('adminuser','$2a$10$04TVADrR6/SPLBjsK0N30.Jf5fNjBugSACeGv1S69dZALR7lSov0y', TRUE);
INSERT INTO users(username,PASSWORD,enabled)
VALUES ('guestuser','$2a$10$04TVADrR6/SPLBjsK0N30.Jf5fNjBugSACeGv1S69dZALR7lSov0y', TRUE);
 
INSERT INTO user_roles (username, ROLE)
VALUES ('adminuser', 'ROLE_USER');
INSERT INTO user_roles (username, ROLE)
VALUES ('adminuser', 'ROLE_ADMIN');
INSERT INTO user_roles (username, ROLE)
VALUES ('guestuser', 'ROLE_USER');