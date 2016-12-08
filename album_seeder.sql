use codeup_test_db;
TRUNCATE albums;
drop table if exists albums;
create table albums (artist VARCHAR(100),record VARCHAR(100),sales float);
insert into albums (artist, record, sales)
    values ('Michael Jackson','Thriller','46'),
        ('AC/DC','Back in Black','26.1'),
        ('Pink Floyd','The Dark Side of the Moon','24.2'),
        ('Whitney Houston','The Bodyguard','27.4'),
        ('Meat Loaf','Bat Out of Hell','20.6'),
        ('Eagles','Their Greatest Hits','32.2'),
        ('Bee Gees','Saturday Night Fever','20.6'),
        ('Fleetwood Mac','Rumours','27.9');






/*"Come On Over","Led Zeppelin IV","21","Bad","Jagged Little Pill","Falling into You","Sgt. Pepper's Lonely Hearts Club Band","Hotel California","Music Box","Dangerous","Dirty Dancing","Let's Talk About Love","1","Abbey Road","Born in the U.S.A","Brothers in Arms","Titanic","The Immaculate Collection","Metallica","Nevermind","The Wall","Supernatural","Appetite for Destruction");*/