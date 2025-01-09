create SCHEMA IF NOT EXISTS school_of_it_2025;

drop table school_of_it_2025.table_samples;

create TABLE school_of_it_2025.table_samples (
   
    value INT NOT NULL
);


insert into school_of_it_2025.table_samples(VALUE)
select 
* from pg_catalog.generate_series(1,1000) ;

select * from school_of_it_2025.table_samples
order by RANDOM() limit 100;





