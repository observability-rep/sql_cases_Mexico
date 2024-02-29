-- PLEASE CREATE dml for two databases on your own. Create DATABASE ................
--amids alt_case_num are some '' and for that reason some (around 90) records from case_document_data are not 
--assigned to any alt_case_num, cannot be migrated.


with 
cte1 (id1) as 
		(select  c.id from Source.dbo.user_doc_fields a 
		inner join Source.dbo.case_document_data b 
			on a.id = b.userdocumentfieldid -- where b.data like 'correspondence'
		inner join Source.dbo.case_document_list c
			on b.tablistid=c.id
		inner join Source.dbo.cases d
			on c.casesid=d.id
			where a.field_title = 'Category' 
			and b.data in ('correspondence', 'medical request', 'notice letters', 'settlement negotiations')
		),
----------------------------------------------------------------------------------------------------
cte2 (a,b,c,d,e) as
	(
	select  b.id,c.id,b.userdocumentfieldid, b.data, d.alt_case_num from Source.dbo.case_document_data b 
	inner join Source.dbo.case_document_list c 
	on b.tablistid= c.id 
	inner join Source.dbo.cases d
	on c.casesid= d.id
	where c.id = any (select * from cte1)
	),				
-----------------------------------------------------------------------------------------------------
cte4 as
	(
	Select			x.b as b,--x.c,x.a,
					x.e as e,
					case 
						when x.d like 'Notes%' then x.d
					end as 'Notes'	
					from cte2 x 	
	),
------------------------------------------------------------------------------------------------------
cte5 as
	(
	Select			x.b as b,--x.c,x.a,
					x.e as e,
					case	
						when x.d like '[1,2][0-9][0-9][0-9]-[0,1]%' then x.d
					end as 'DateAddad'
					from cte2 x 	
	),
-------------------------------------------------------------------------------------------------------
cte6 as
	(
	Select			x.b as b,--x.c,x.a,
					x.e as e,
					case	
						when x.d like '\\Server%' 
						then substring(x.d,(Select 2+patindex('%[e,t,s]\____.pdf',x.d)),len(x.d))+'#'+x.d
					end as 'FilePath'
					from cte2 x 	
	),
---------------------------------------------------------------------------------------------------
cte7 (a,b,c,d,e) as
	(
	
	select cte4.b,cte4.e,cte4.Notes,cte5.DateAddad,cte6.FilePath 
		from cte4 left join cte5 on cte4.b =cte5.b inner join cte6 on cte5.b=cte6.b
		where 
		(cte4.Notes is not null and cte5.DateAddad is not null and cte6.FilePath is not null) 
		--and cte4.b is not null
		--and cte4.b like '0E266EA2-534A-414A-94C6-00010EECCC38' 
		--and cte4.e like '19-000112'
	),
--select * from cte7 --where cte7.e like '4B6C.pdf#\\Server2\CaseFiles\\Correspondence\4B6C.pdf'
---------------------------------------------------------------------------------------------------
cte9 (o,a,b,c,d) as
	(
	select  distinct dest.CaseId ,
		replace(b,' ',''),
		c,
		cast(d as date),
		e 
		from cte7 inner join Dest.dbo.CaseTable dest 
		on cte7.b=dest.[File #]
		where replace(b,' ','') not like ''
	except
	select	x.CaseId as CaseID,
		replace(cast(x.[File #] as varchar(max)),' ',''), 
		cast(y.Description as varchar(max)), 
		cast(y.Date as date), 
		cast(y.Link as varchar(max)) 
		from Dest.dbo.CaseTable x 
		inner join Dest.dbo.Correspondence y on x.CaseId = y.CaseId
)
----------------------------------------------------------------------------------------------
INSERT into Dest.dbo.Correspondence (CaseId, Description,Date,Link)
select	CAST(x.o as int), 
		cast(x.b as nvarchar(25)),
		cast(x.c as datetime), 
		cast(x.d as ntext)
		from cte9 x 

--select * from dest.dbo.Correspondence
--truncate table dest.dbo.correspondence