create table smoothscan_uniform (a double precision, b text) with (fillfactor=25);


create table smoothscan_linear (a double precision, b text) with (fillfactor=25);

create table smoothscan_linear_1 (a double precision, b text) with (fillfactor=25);

create table smoothscan_linear_10 (a double precision, b text) with (fillfactor=25);

create table smoothscan_linear_100 (a double precision, b text) with (fillfactor=25);

create table smoothscan_linear_500 (a double precision, b text) with (fillfactor=25);


create table smoothscan_cyclic (a double precision, b text) with (fillfactor=25);

create table smoothscan_cyclic_1 (a double precision, b text) with (fillfactor=25);

create table smoothscan_cyclic_10 (a double precision, b text) with (fillfactor=25);

create table smoothscan_cyclic_100 (a double precision, b text) with (fillfactor=25);

create table smoothscan_cyclic_500 (a double precision, b text) with (fillfactor=25);


with x as (select 1000 * random() AS x from generate_series(1,ROWS) s(i))
insert into smoothscan_uniform select x, sha256(x::text::bytea) from x;


with x as (select 1000 * (i::double precision / ROWS) AS x from generate_series(1,ROWS) s(i))
insert into smoothscan_linear select x, sha256(x::text::bytea) from x;

with x as (select 1000 * (i::double precision / ROWS) AS x from generate_series(1,ROWS) s(i))
insert into smoothscan_linear_1 select x + random_normal(0, 1), sha256(x::text::bytea) from x;

with x as (select 1000 * (i::double precision / ROWS) AS x from generate_series(1,ROWS) s(i))
insert into smoothscan_linear_10 select x + random_normal(0, 10), sha256(x::text::bytea) from x;

with x as (select 1000 * (i::double precision / ROWS) AS x from generate_series(1,ROWS) s(i))
insert into smoothscan_linear_100 select x + random_normal(0, 100), sha256(x::text::bytea) from x;

with x as (select 1000 * (i::double precision / ROWS) AS x from generate_series(1,ROWS) s(i))
insert into smoothscan_linear_500 select x + random_normal(0, 500), sha256(x::text::bytea) from x;


with x as (select 1000 * (mod(i,(ROWS/CYCLES))::double precision / (ROWS/CYCLES)) AS x from generate_series(1,ROWS) s(i))
insert into smoothscan_cyclic select x, sha256(x::text::bytea) from x;

with x as (select 1000 * (mod(i,(ROWS/CYCLES))::double precision / (ROWS/CYCLES)) AS x from generate_series(1,ROWS) s(i))
insert into smoothscan_cyclic_1 select x + random_normal(0, 1), sha256(x::text::bytea) from x;

with x as (select 1000 * (mod(i,(ROWS/CYCLES))::double precision / (ROWS/CYCLES)) AS x from generate_series(1,ROWS) s(i))
insert into smoothscan_cyclic_10 select x + random_normal(0, 10), sha256(x::text::bytea) from x;

with x as (select 1000 * (mod(i,(ROWS/CYCLES))::double precision / (ROWS/CYCLES)) AS x from generate_series(1,ROWS) s(i))
insert into smoothscan_cyclic_100 select x + random_normal(0, 100), sha256(x::text::bytea) from x;

with x as (select 1000 * (mod(i,(ROWS/CYCLES))::double precision / (ROWS/CYCLES)) AS x from generate_series(1,ROWS) s(i))
insert into smoothscan_cyclic_500 select x + random_normal(0, 500), sha256(x::text::bytea) from x;


create index on smoothscan_uniform (a);


create index on smoothscan_linear (a);

create index on smoothscan_linear_1 (a);

create index on smoothscan_linear_10 (a);

create index on smoothscan_linear_100 (a);

create index on smoothscan_linear_500 (a);


create index on smoothscan_cyclic (a);

create index on smoothscan_cyclic_1 (a);

create index on smoothscan_cyclic_10 (a);

create index on smoothscan_cyclic_100 (a);

create index on smoothscan_cyclic_500 (a);

vacuum analyze;

checkpoint;
