do
$$
-- ensure user role
	begin
		if not exists(select * from pg_roles where rolname = 'baget') then
			create role baget with password 'baget' login;
		end if;
	end;
$$;

-- kill all active connections to baget database so recreation is possible
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'baget'
	AND pid <> pg_backend_pid();

-- drop existing baget database
drop database if exists baget;
-- create new baget database
create database baget with owner baget;