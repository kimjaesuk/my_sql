select 
	menu_code,
	menu_name,
	menu_price
	from tbl_menu
	order by menu_price DESC; -- asc : 오름 차순정렬 , desc: 내림차순 정렬 
	
	-- Order by 절을 사용하여 결과 집합의 여러 열로 정렬
	
	select 
		menu_code,
		menu_name,
		menu_price
		from tbl_menu
		order by
			menu_price desc,
			menu_name asc;
		
-- 메뉴 코드,이름, 메뉴 코드 곱하기 가격을 화면에 코드 기준으로 정렬해주세요--
-- 정렬의 기준은 코드의 오름차순으로 정렬해주세요		
	
	select 
		menu_code,
		menu_name,
		menu_code * menu_price
		from tbl_menu
		order by menu_code asc;
	--  
	
	select 
		field('C','A,''B','C')
		
	select 
		field(orderable_status,'n','y')
		from tbl_menu;
	
	select 
		category_cord ,
		catagory_name ,
		ret_category_code
		from tbl_category
		order by ref_category_code is null desc;
		
