
/*
	Inserting Data
*/
-- insert photo 
SET IDENTITY_INSERT photo ON
INSERT INTO photo (photo_id, file_name, created_date, caption)
VALUES
(1 ,'barbara_profile.jpg', '2019-06-15', 'Barbara''s profile'),
(2, 'img_9203710.jpg', '2019-06-15', 'James'' Profile'),
(3, 'dcim_38118385.jpg', '2019-06-15', 'Mary'),
(4, 'knitting.jpg', '2019-06-15', 'Knitted Touques'),
(5, 'img_28391910488.jpg', '2019-06-15', 'Richard'),
(6, 'img_21838392835.jpg', '2019-06-15', 'Mickey Mouse Cookies'),
(7, 'img_38201884043.jpg', '2019-06-15', 'So cute!'),
(8, 'img_28320384855.jpg', '2019-06-15', 'Smiling already!'),
(9, 'rainbow.jpg', '2019-06-15', 'Rainbow Quilt'),
(10, 'stereo1.jpg', '2019-06-15', 'Front Panel'),
(11, 'stereo2.jpg', '2019-06-15', 'Bass Speakers Installed'),
(12, 'new_shed.jpg', '2019-06-15', 'Shed inside empty'),
(13, 'rose.jpg', '2019-06-15', 'Rose'),
(14, 'putter.jpg', '2019-06-15', 'Putter'),
(15, 'nine-iron.jpg', '2019-06-15', '9 Iron'),
(16, 'driver.jpg', '2019-06-15', 'Driver')
SET IDENTITY_INSERT photo OFF;

--insert person
SET IDENTITY_INSERT person ON
INSERT INTO person(person_id, first_name, last_name, email, password_hash, profile_photo_id) 
VALUES
(1, 'Barbara', 'Hodge', 'b.hodge@company.com', PWDENCRYPT('P@ssword!'), 1),
(2, 'James', 'Buckles', 'j.buckles@company.com', PWDENCRYPT('Awesome8'), 2),
(3, 'Natalie', 'Wilhite', 'bestest.forever@example.com', PWDENCRYPT('CakeIsBest'), NULL),
(4, 'Mary', 'Barnett', 'lifeisahighway@example.com', PWDENCRYPT('goGOgo'), 3),
(5, 'Richard', 'Tipton', 'tippertapper266602@gmail.com', PWDENCRYPT('tiptap'), 5)
SET IDENTITY_INSERT person OFF;

--insert post
SET IDENTITY_INSERT post ON
INSERT INTO post(post_id, title, description, created_date, last_modified_date, person_id)
VALUES
(1, 'Mickey Mouse Cookies', 'I found this great recipe for sugar cookies and a new Mickey Mouse cookie cutter.', '2019-04-14', '2019-04-15', 1),
(2, 'Touques for infants', 'I''m knitting touques for our grandchild that should be born soon!', '2019-02-15', '2019-02-16', 3),
(3, 'Our newest family member!', 'Congratulations to our daughter on their new bundle of joy! Theresa May - Born March 3, 2019.', '2019-03-04', '2019-03-04', 3),
(4, 'Rainbow Quilt', 'Beautiful new rainbow quilt for our newest granddaughter.', '2019-03-29', '2019-04-01', 3),
(5, 'New Car Stereo and Speakers', 'Best Bass Ever! You can hear me from 5 blocks away!', '2019-05-09', '2019-05-09', 2),
(6, 'Garden Shed', 'New garden shed has room for the lawn mowers and all our garden tools.', '2019-05-22', '2019-05-22', 2),
(7, 'Great way to hang pictures', 'It''s simple and cost effective!', '2019-04-27', '2019-04-27', 4),
(8, 'Beautiful colour, beautiful smell', 'Found a great place to buy the best roses!', '2019-04-14', '2019-04-16', 4),
(9, 'Set of golf clubs for sale', 'A friend of mine is selling his set of clubs before he moves to Saskatchewan.', '2019-05-12', '2019-05-15', 2),
(10, 'Change your own oil, save hundreds!', 'Mechanics are too expensive, and it''s not that hard to do it yourself.', '2019-02-22', '2019-02-22', 2),
(11, 'Awesome Floor Mats', 'Keep your car clean with these awesome car mats!', '2019-03-03', '2019-03-03', 2)
SET IDENTITY_INSERT post OFF;

--insert post_photo
SET IDENTITY_INSERT post_photo ON
INSERT INTO post_photo(post_photo_id, post_id, photo_id)
VALUES
(1, 1, 6),
(2, 2, 4),
(3, 3, 8),
(4, 3, 7),
(5, 4, 9),
(6, 5, 11),
(7, 5, 10),
(8, 6, 12),
(9, 8, 13),
(10, 9, 15),
(11, 9, 16),
(12, 9, 14)
SET IDENTITY_INSERT post_photo OFF;

-- post_like
SET IDENTITY_INSERT post_like ON
INSERT INTO post_like(post_like_id, post_id, person_id)
VALUES
(1, 1, 3),
(2, 2, 4),
(3, 3, 1),
(4, 3, 2),
(5, 3, 4),
(6, 3, 5),
(7, 5, 5),
(8, 9, 5)
SET IDENTITY_INSERT post_like OFF;

-- read_post
SET IDENTITY_INSERT read_post ON
INSERT INTO read_post(read_post_id, post_id, person_id, created_date)
VALUES
(1, 1, 4, DEFAULT),
(2, 1, 3, DEFAULT),
(3, 2, 4, DEFAULT),
(4, 3, 1, DEFAULT),
(5, 3, 2, DEFAULT),
(6, 3, 4, DEFAULT),
(7, 3, 5, DEFAULT),
(8, 4, 1, DEFAULT),
(9, 5, 5, DEFAULT),
(10, 6, 1, DEFAULT),
(11, 6, 5, DEFAULT),
(12, 7, 1, DEFAULT),
(13, 9, 5, DEFAULT),
(14, 10, 5, DEFAULT),
(15, 11, 1, DEFAULT)
SET IDENTITY_INSERT read_post OFF;

-- post_comment
SET IDENTITY_INSERT post_comment ON
INSERT INTO post_comment(post_comment_id, post_id, person_id, comment, created_date)
VALUES
(1, 1, 3, 'I''m going to try those myself! - Natalie', DEFAULT ),
(2, 3, 1, 'Congratulations! - Barbara,', DEFAULT ),
(3, 3, 2, 'How does it feel to be a grandma? - James', DEFAULT ),
(4, 4, 1, 'Can you make me one next? - Barbara', DEFAULT ),
(5, 6, 1, 'What colour are you going to paint your shed? - Barbara', DEFAULT ),
(6, 9, 5, 'I need a good set of club; I''ll take them! - Richard', DEFAULT )
SET IDENTITY_INSERT post_comment OFF;

-- tag
SET IDENTITY_INSERT tag ON
INSERT INTO tag (tag_id, tag_name)
VALUES
(1, 'music'),
(2, 'shopping'),
(3, 'baking'),
(4, 'cooking'),
(5, 'crafts'),
(6, 'DIY'),
(7, 'cars'),
(8, 'home repair'),
(9, 'sports');
SET IDENTITY_INSERT tag OFF;

-- post_tag
SET IDENTITY_INSERT post_tag ON
INSERT INTO post_tag (post_tag_id, post_id, tag_id)
VALUES

(1, 1, 3),
(2, 1, 4),
(3, 1, 5),
(4, 2, 5),
(5, 2, 6),
(6, 4, 5),
(7, 4, 6),
(8, 5, 7),
(9, 5, 6),
(10, 6, 6),
(11, 6, 8),
(12, 7, 8),
(13, 9, 9),
(14, 10, 6),
(15, 10, 7),
(16, 11, 7);

SET IDENTITY_INSERT post_tag OFF;