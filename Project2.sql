-- 1.1
insert into flight values('ATL', 'ORD', 1000);
insert into flight values('BUF', 'ORD', 1500);
insert into flight values('BUF', 'JFK', 300);
insert into flight values('JFK', 'ORD', 200);
insert into flight values('JFK', 'LAX', 600);
insert into flight values('BUF', 'LAX', 2000);
insert into flight values('LAX', 'LAS', 500);
insert into flight values('JFK', 'CLT', 150);
insert into flight values('JFK', 'MIA', 300);
insert into flight values('BUF', 'BOS', 150);
insert into flight values('DTW', 'BUF', 200);
insert into flight values('LAX', 'SEA', 100);
insert into flight values('DTW', 'IAH', 800);
insert into flight values('IAH', 'EWR', 870);

--1.2
WITH RECURSIVE r AS ( 
	SELECT * FROM flight WHERE Origin = 'BUF'
	union ALL 
	SELECT flight.Origin, flight.Destination, flight.Cost+r.Cost FROM flight, r WHERE flight.Origin = r.Destination
) 
SELECT Origin, Destination, min(Cost) FROM r
group by Origin, Destination;

--1.3
insert into flight values('SEA', 'LAX', 870);

-- 2.1
select *
from student
where sno not in (
	select sno
	from enroll, course
	where dept='CSE'
);

-- 2.2
select student.sno, GPA
from student left join (
	select sno, sum(grade)as GPA
	from enroll
	group by sno
) t on student.sno = t.sno

-- 2.3
select dept, count(*) as numCourse
from course
where cno in (
	select t1.cno
	from (
		select course.cno, sum(case when course.dept=student.dept then 1 else -1 end) as num
		from enroll, student, course
		where enroll.sno = student.sno
			and enroll.cno = course.cno
		group by course.cno
	) as t1
	where num <= 0
) as t2
group by dept





