use produto;

select * from secao
go
select * from produto
go
select * from preco_produto 
go

/*Funções de linhas*/
select dsc_produto, len (dsc_produto) as 'Total de Caracteres'
from produto;
go 

select dsc_produto, lower (dsc_produto) as 'Nome Curso em Minúsculo'
from produto;
go

select dsc_produto,	upper (dsc_produto) as 'Nome Curso em Maiúsculo'
from produto;
go

select dsc_produto,	LEFT (dsc_produto, 3) as 'LEFT - Descrição Produto'
from produto;
go

select dsc_produto,	RIGHT (dsc_produto, 4) as 'RIGHT - Descrição Produto'
from produto;
go

select dsc_produto,	RIGHT (LTRIM(dsc_produto), 10) as 'RIGHT/LTRIM - Descrição Produto'
from produto;
go

select dsc_produto,	RIGHT (RTRIM(dsc_produto), 10) as 'RIGHT/RTRIM - Descrição Produto'
from produto;
go

/*Funções de Datas*/

select getdate()					as 'Data Atual';
go
select datepart(year,getdate())		as 'Ano Atual';
go
select datepart(month,getdate())	as 'Mês Atual';
go
select datepart(day,getdate())		as 'Dia Atual';
go
select datepart(hour,getdate())		as 'Hora Atual';
go
select datepart(minute,getdate())	as 'Minutos Atual';
go
select datepart(second,getdate())	as 'Segundo Atual';
go
select datepart (weekday,getdate())	as 'Dia da Semana Atual';
go
select datepart(year,dat_inivigencia) 'Ano da data de Vigência'
from preco_produto;
go
select datepart(month,dat_inivigencia) 'Mês da data de Vigência'
from preco_produto;
go
select datepart(day,dat_inivigencia) 'Dia da data de Vigência'
from preco_produto;
go
select datepart(dayofyear,dat_inivigencia) 'Dia do ano da data de vigência'
from preco_produto;
go
select datepart(week,dat_inivigencia) 'Semana da data de vigência'
from preco_produto;
go
select datediff(day,dat_inivigencia,getdate()) 'Dias corridos',getdate() 'Data atual',
					dat_inivigencia 'Data vigência Produto'
from preco_produto;
go

/*Andamento Universal*/

select round (45.925, 2)  as 'Arredondamento acima',
	   round (45.923, 2)  as 'Arredondamento para baixo',
	   round (45.923, 0)  as 'Arredondamento na 2ª casa de milhar',
	   round (45.923, 1)  as 'Arredondamento na centena',
	   round (44.923, -1)  as 'Arredondamento na milhar para abaixo',
	   round (45.923, -1)  as 'Arredondamento na minhar acima';
go

/*Funções de usuários de sistemas*/

select * from sysusers;
go
select USER_NAME();
go
select name FROM sysusers where name = USER_NAME(1);
go
select name from sysusers where name = USER_NAME(2);
go

/*Usuário logado no BD*/

select system_user;

declare @sys_usr char(30);
set @sys_usr = system_user;
select 'O usuário logado no BD é: ' + @sys_usr;

/*Suser_name ( [ server_user_id ] ) */

select SUSER_NAME()
select SUSER_SNAME(1)

