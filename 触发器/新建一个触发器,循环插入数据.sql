CREATE TRIGGER [XXX].[XXXX] /* 触发器名称 */
ON [XXX].[XXX].[XXX] /* 触发器创建到那个表 */
AFTER INSERT  /* 在插入前触发 */
AS
BEGIN
    SET NOCOUNT ON;
  DECLARE @RepeatCount int = 0
-- 关键1 --
  -- 声明要操纵的变量
  DECLARE @name1 smallint, @name2 smalldatetime, @name3 real;
-- 关键2 --
  DECLARE cur_insert cursor for select name1,name2,name3 from inserted;   /*声明游标并指明游标操作的对象*/
  open cur_insert;    /*打开游标*/
-- 关键3 --
  fetch next from cur_insert into @name1,@name2,@name3;   /*读取下一行*/
  while @@fetch_status=0
  BEGIN
    print '开始写入！';
        -- 关键4 --
      -- 插入数据到某张表
    INSERT [XXX].[XXX].[XXX] values(@name1,@name2,@name3);
    print '开始读取下一行！';
        -- 关键5 --
    fetch next from cur_insert into @name1,@name2,@name3;   /*读取下一行*/
  END
  /*关闭游标*/
  close cur_insert;
  deallocate cur_insert;
  print '写入完成！';
END
GO
