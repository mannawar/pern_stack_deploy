CREATE DATABASE newsfeeds;

CREATE TABLE user1(
  user_id UUID DEFAULT uuid_generate_v4(),
  user_name VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL UNIQUE,
  user_password VARCHAR(255) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE newslistings(
  news_id SERIAL,
  user_id UUID,
  title VARCHAR(255),
  date_saved DATE NOT NULL DEFAULT CURRENT_DATE,
  description VARCHAR(255),  
  image VARCHAR(255),
  PRIMARY KEY (news_id),
  FOREIGN KEY (user_id) REFERENCES user1(user_id)
);




--insert users
INSERT INTO users (user_name, user_email, user_password) VALUES ('Mannawar', 'mannawar@gmail.com', 'secret');


