use joins;
select * from marks;
select * from students;

select * from marks where score > 80;

-- Single Column Index
create index idx_1 on marks(score);
-- Create a quick lookup structure for the score column in the marks table.
select * from marks where score > 80;

-- Multi-column (Composite) Index
create index idx_2 on marks(score, subject);
select * from marks where score > 80 and subject = 'math';

show index from marks;

DROP INDEX idx_1 ON marks;
DROP INDEX idx_2 ON marks;

/*
Creating index enchances the performance of reading operations of sql tables but sometimes it may reduce the performance of writing operations.
Indexes are essential for performance, but overusing them or indexing the wrong columns can actually hurt performance. 
Use them wisely based on how your data is queried.
*/