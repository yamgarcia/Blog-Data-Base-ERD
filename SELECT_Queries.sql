/*
	 queries
*/

--1
SELECT post.title, tag.tag_name
FROM post
LEFT JOIN post_tag 
ON post.post_id = post_tag.post_id
JOIN tag
ON tag.tag_id = post_tag.tag_id
WHERE post_tag.tag_id = 6
GROUP BY post.title, tag.tag_name
ORDER BY title DESC

--2
SELECT post.title, tag.tag_name
FROM post
LEFT JOIN post_tag 
ON post.post_id = post_tag.post_id
JOIN tag
ON tag.tag_id = post_tag.tag_id
WHERE post.title = 'Mickey Mouse Cookies';

--3
SELECT post.title, COUNT(post_tag_id) AS 'Number of Tags'
FROM post
LEFT JOIN post_tag ON post.post_id = post_tag.post_id
GROUP BY post.title
ORDER BY COUNT(post_tag_id) DESC

--4
SELECT post.title, COUNT(post_tag_id) AS 'Number of Tags'
FROM post
LEFT JOIN post_tag ON post.post_id = post_tag.post_id
WHERE post.post_id NOT IN (SELECT post_tag.post_id FROM post_tag)
GROUP BY post.title

--5
SELECT tag_name, COUNT(post_tag.post_id) AS 'Number of Tags'
FROM tag
FULL OUTER JOIN post_tag ON tag.tag_id = post_tag.tag_id
GROUP BY tag_name
ORDER BY COUNT(post_tag.post_id) DESC

--6
SELECT post.post_id, post.title, person.first_name
FROM person
INNER JOIN post ON person.person_id = post.person_id
INNER JOIN read_post ON post.post_id = read_post.post_id
GROUP BY post.title, post.post_id, person.first_name


--7
SELECT post.post_id, post.title, person.first_name
FROM person
LEFT JOIN post ON person.person_id = post.person_id
LEFT JOIN read_post ON post.post_id = read_post.post_id
WHERE post.post_id NOT IN (SELECT read_post.post_id FROM read_post)
GROUP BY post.title, post.post_id, person.first_name

--8
SELECT post.post_id, post.title, person.first_name, post.created_date, post.last_modified_date
FROM post
LEFT JOIN person ON person.person_id = post.person_id
WHERE last_modified_date NOT IN (SELECT created_date FROM post)

--9
SELECT post_id, title, person.first_name 
FROM post 
LEFT JOIN person ON person.person_id = post.person_id 
WHERE post.post_id NOT IN (SELECT post_id FROM post_photo)

--10
SELECT title, COUNT(post_like_id) AS 'Number of Likes' 
FROM post 
FULL OUTER JOIN post_like ON post.post_id = post_like.post_id 
GROUP BY post.title ORDER BY COUNT(post_like_id) DESC

--11
SELECT TOP 1 person.first_name, person.last_name, COUNT(post_id) AS 'Number of Posts' 
FROM person 
FULL OUTER JOIN post ON post.person_id = person.person_id 
GROUP BY first_name, last_name ORDER BY 'Number of Posts' DESC;

SELECT TOP 1 person.first_name, person.last_name, COUNT(post_id) AS 'Number of Posts' 
FROM person 
FULL OUTER JOIN post ON post.person_id = person.person_id 
GROUP BY first_name, last_name ORDER BY 'Number of Posts';

--12
SELECT post.post_id, post.title, person.first_name AS 'author',
post_comment.comment, P.first_name AS 'commenter' 
FROM post 
INNER JOIN person ON person.person_id = post.person_id
LEFT JOIN post_comment ON post.post_id = post_comment.post_id
LEFT JOIN person AS P ON P.person_id = post_comment.person_id
WHERE post.post_id IN (SELECT post_id FROM post_photo)
ORDER BY post.post_id

--13
SELECT post.post_id, title, COUNT(DISTINCT read_post.post_id ) AS 'reads'
							,COUNT(DISTINCT post_like.post_id) AS 'likes'
							,COUNT(DISTINCT post_comment.post_id) AS 'comments'
FROM post
LEFT JOIN read_post ON post.post_id = read_post.post_id
LEFT JOIN post_like ON post.post_id = post_like.post_id
LEFT JOIN post_comment ON post.post_id = post_comment.post_id
GROUP BY post.post_id, title, read_post.post_id


/*
--13
SELECT post.post_id, title, (SELECT COUNT(DISTINCT read_post.post_id ) FROM read_post WHERE read_post.post_id IN (SELECT post.post_id FROM post)) AS 'reads'
							--,COUNT(DISTINCT post_like.post_id) AS 'likes'
							--,COUNT(DISTINCT post_comment.post_id) AS 'comments'
FROM post
--LEFT JOIN read_post ON post.post_id = read_post.post_id
--LEFT JOIN post_like ON post.post_id = post_like.post_id
--LEFT JOIN post_comment ON post.post_id = post_comment.post_id
GROUP BY post.post_id, title--, read_post.post_id
*/


--14
SELECT photo.photo_id, photo.caption, photo.file_name, 
(SELECT 'Profile Photo' WHERE person.profile_photo_id IN (SELECT photo_id FROM photo))  AS 'type' 
FROM photo
INNER JOIN person ON photo.photo_id = person.profile_photo_id
UNION ALL
SELECT photo.photo_id, photo.caption, photo.file_name, 
(SELECT 'Post Photo'  WHERE post.post_id IN (SELECT post_id FROM post_photo))  AS 'type' 
FROM photo
INNER JOIN post_photo ON photo.photo_id = post_photo.photo_id
INNER JOIN post ON post.post_id = post_photo.post_id


