\c textual_analysis;

create table articles (id SERIAL PRIMARY KEY,
             title varchar(300),
             authors varchar(500),
             source_title varchar(300),
             doi varchar(200),
             document_type varchar(100),
             summary varchar(8000),
             keywords varchar(2000),
             editor varchar(300),
             number_of_citation_wos varchar(100),
             number_of_citation_general varchar(100),
             number_of_references_citated varchar(100),
             citation_last_180_days varchar(100),
             citation_since_2013 varchar(100),
             filename varchar(1000));