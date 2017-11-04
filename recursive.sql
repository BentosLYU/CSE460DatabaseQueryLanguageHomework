	/*1.1
    I run just one single "Insert into" statement to insert only one value at a time,
    I did not run this altogether
    I run only only one value at a time*/
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('ATL', 'ORD', 1000);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('BUF', 'ORD', 1500);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('BUF', 'JFK', 300);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('JFK', 'ORD', 200);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('JFK', 'LAX', 600);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('BUF', 'LAX', 2000);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('LAX', 'LAS', 500);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('JFK', 'CLT', 150);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('JFK', 'MIA', 300);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('BUF', 'BOS', 150);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('DTW', 'BUF', 200);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('LAX', 'SEA', 100);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('DTW', 'IAH', 800);
    INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('IAH', 'EWR', 870);
/*1.2*/    
WITH RECURSIVE r AS ( 
	SELECT * FROM flight WHERE Origin = 'BUF'
	union ALL 
	SELECT flight.Origin, flight.Destination, flight.Cost+r.Cost FROM flight, r WHERE flight.Origin = r.Destination
) 
SELECT Origin, Destination, min(Cost) FROM r
group by Origin, Destination;

/*1.3 After I run
INSERT INTO public.flight(
	origin, destination, cost)
	VALUES ('SEA', 'LAX', 150);
    This script, then I run the script in 1.2, it won't terminate and running.
    There is also a value that the origin is LAX and destination is SEA,
    In the new value, the origin is SEA and the destination is the LAX
    Which will make the data cycle and the query won't terminate.*/