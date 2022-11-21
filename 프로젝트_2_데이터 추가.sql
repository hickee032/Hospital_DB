
--직급 데이터 추가
insert into rank_T values('R001','교수');
insert into rank_T values('R002','임상강사');
insert into rank_T values('R003','전문의');
insert into rank_T values('R004','레지던트');
insert into rank_T values('R005','간호부장');
insert into rank_T values('R006','간호과장');
insert into rank_T values('R007','수간호사');
insert into rank_T values('R008','간호사');

--진료과 데이터 추가
insert into medi_dep_T values('M001','피부과');
insert into medi_dep_T values('M002','소아과');
insert into medi_dep_T values('M003','정형외과');
insert into medi_dep_T values('M004','치과');
insert into medi_dep_T values('M005','안과');

--의사 데이터 추가
insert into doc_T values('D001','고영호','남',random_call,'730906-1831367','M001','R001');
insert into doc_T values('D002','손장현','남',random_call,'700424-1324670','M002','R002');
insert into doc_T values('D003','정형균','남',random_call,'810515-1836048','M001','R003');
insert into doc_T values('D004','권아름','여',random_call,'870911-2847542','M003','R004');
insert into doc_T values('D005','박용호','남',random_call,'850310-1340839','M004','R001');
insert into doc_T values('D006','임가연','여',random_call,'830415-2331791','M005','R002');
insert into doc_T values('D007','최규환','남',random_call,'870603-1627590','M005','R003');
insert into doc_T values('D008','이성주','남',random_call,'741002-1540391','M002','R004');
insert into doc_T values('D009','손슬기','여',random_call,'721010-2687072','M003','R001');
insert into doc_T values('D010','백지현','여',random_call,'751115-2786475','M004','R002');
insert into doc_T values('D011','주천광','남',random_call,'780222-1856678','M004','R003');
insert into doc_T values('D012','박경록','남',random_call,'801007-1439511','M001','R004');
insert into doc_T values('D013','남항우','남',random_call,'791015-1347010','M001','R001');
insert into doc_T values('D014','유호철','남',random_call,'741028-1140522','M002','R002');
insert into doc_T values('D015','한경수','남',random_call,'740216-1554811','M003','R003');
insert into doc_T values('D016','박성화','남',random_call,'790723-1535791','M002','R004');
insert into doc_T values('D017','성강훈','남',random_call,'731118-1714635','M004','R001');
insert into doc_T values('D018','채향석','남',random_call,'840321-1114086','M005','R002');
insert into doc_T values('D019','허재','남',random_call,'770907-1317874','M002','R003');
insert into doc_T values('D020','김지언','여',random_call,'720912-2700374','M001','R004');
insert into doc_T values('D021','도진국','남',random_call,'740123-1474658','M003','R001');
insert into doc_T values('D022','석정임','여',random_call,'750903-2480342','M004','R002');
insert into doc_T values('D023','박재한','남',random_call,'710107-1932024','M002','R003');
insert into doc_T values('D024','권오대','남',random_call,'730727-1403987','M004','R004');
insert into doc_T values('D025','도영록','남',random_call,'780726-1511826','M003','R001');
insert into doc_T values('D026','박정아','여',random_call,'830924-2368442','M005','R002');
insert into doc_T values('D027','심동현','남',random_call,'790920-1885712','M001','R003');
insert into doc_T values('D028','최정윤','여',random_call,'740924-2991990','M002','R004');
insert into doc_T values('D029','김성규','남',random_call,'731003-1988562','M004','R001');
insert into doc_T values('D030','이화정','여',random_call,'790210-2268193','M003','R002');

-- 간호사 데이터 추가
-- 간호부장

insert into nur_T VALUES('N301','장원영','여',random_call,'700214-2590937','M001','R005');
insert into nur_T VALUES('N302','안유진','여',random_call,'780907-2768077','M002','R005');
insert into nur_T VALUES('N303','카리나','여',random_call,'751016-2169845','M003','R005');
insert into nur_T VALUES('N304','윈터','여',random_call,'790824-2478821','M004','R005');
insert into nur_T VALUES('N305','카리나','여',random_call,'840902-2353997','M005','R005');

-- 간호과장

insert into nur_T VALUES('N306','유재석','남',random_call,'791128-1552697','M001','R006');
insert into nur_T VALUES('N307','정은지','여',random_call,'870513-2479235','M002','R006');
insert into nur_T VALUES('N308','강호동','남',random_call,'850804-1514358','M003','R006');
insert into nur_T VALUES('N309','성시경','남',random_call,'880919-1409576','M004','R006');
insert into nur_T VALUES('N310','조세호','남',random_call,'850909-1424738','M005','R006');

-- 수간호사

insert into nur_T VALUES('N311','이지은','여',random_call,'870220-2137730','M001','R007');
insert into nur_T VALUES('N312','윤하','여',random_call,'890417-2718324','M002','R007');
insert into nur_T VALUES('N313','정형돈','남',random_call,'870506-1448494','M003','R007');
insert into nur_T VALUES('N314','정채연','여',random_call,'770105-2129799','M004','R007');
insert into nur_T VALUES('N315','정준하','남',random_call,'760720-1243065','M005','R007');

-- 간호사

insert into nur_T VALUES('N316','지수','여',random_call,'880121-2927544','M001','R008');
insert into nur_T VALUES('N317','차은우','남',random_call,'910522-1892565','M002','R008');
insert into nur_T VALUES('N318','이석훈','남',random_call,'870813-1693853','M003','R008');
insert into nur_T VALUES('N319','김진호','남',random_call,'880211-1367541','M004','R008');
insert into nur_T VALUES('N320','김태연','여',random_call,'940212-2135279','M005','R008');
insert into nur_T VALUES('N321','홍길동','남',random_call,'740902-1165724','M001','R008');
insert into nur_T VALUES('N322','이순신','남',random_call,'941114-1591016','M002','R008');
insert into nur_T VALUES('N323','윤종신','남',random_call,'941114-1106322','M003','R008');
insert into nur_T VALUES('N324','에일리','여',random_call,'900207-2234138','M004','R008');
insert into nur_T VALUES('N325','솔라','여',random_call,'860127-2230212','M005','R008');
insert into nur_T VALUES('N326','박명수','남',random_call,'900827-1659621','M001','R008');
insert into nur_T VALUES('N327','노홍철','남',random_call,'950404-1581022','M002','R008');
insert into nur_T VALUES('N328','김범수','남',random_call,'950624-1770707','M003','R008');
insert into nur_T VALUES('N329','강동원','남',random_call,'930703-1320397','M004','R008');
insert into nur_T VALUES('N330','이서진','남',random_call,'780529-1901374','M005','R008');

--예약 데이터 추가

insert into res_T values('RE001','21/01/22','홍성근','0109461457','M001'); 
insert into res_T values('RE002','22/02/10','조동호','0109461457','M001'); 
insert into res_T values('RE003','21/02/11','최영하','0105496272','M001');
insert into res_T values('RE004','21/06/29','이은만','0107815142','M002'); 
insert into res_T values('RE005','21/07/08','장민선','01073555423','M003'); 
insert into res_T values('RE006','21/09/02','정은미','01046767665','M005');
insert into res_T values('RE007','21/09/14','성진호','01013712882','M005'); 
insert into res_T values('RE008','21/09/15','문으뜸','01065565255','M002'); 
insert into res_T values('RE009','21/11/07','전형진','01070885289','M004');
insert into res_T values('RE010','22/01/22','홍국표','01057474484','M001');
insert into res_T values('RE011','22/02/02','황성길','01067235693','M003'); 
insert into res_T values('RE012','22/03/09','설시윤','01082815192','M004'); 
insert into res_T values('RE013','22/04/12','박정욱','01011985149','M004'); 
insert into res_T values('RE014','22/05/16','정미라','01036512745','M001');
insert into res_T values('RE015','22/06/26','정미경','01099282939','M004'); 
insert into res_T values('RE016','22/08/10','김차왕','01019593303','M001');
insert into res_T values('RE017','22/08/13','김규병','01012544084','M001'); 
insert into res_T values('RE018','22/08/25','고재영','0104824409','M004');
insert into res_T values('RE019','22/11/02','김준수','01040507000','M003');
insert into res_T values('RE020','22/11/10','김명주','01069486703','M002');


--환자 데이터 추가

insert into pat_T values('P001','구청회','44','남','01026221305','790316-1876584',NULL,'D020','N316');
insert into pat_T values('P002','고재영','50','남','0104824409','720211-1864366','RE018','D010','N329');
insert into pat_T values('P003','김규병','37','남','01012544084','850129-1316513','RE017','D013','N316');
insert into pat_T values('P004','김명주','31','남','01069486703','911110-1754209','RE020','D023','N317');
insert into pat_T values('P005','김슬기','37','여','01085674175','850609-2319208',NULL,'D025','N319');
insert into pat_T values('P006','한아름','34','여','01086266338','880405-2675034','RE001','D003','N319');
insert into pat_T values('P007','김준수','59','남','01040507000','630821-1772441','RE019','D030','N318');
insert into pat_T values('P008','최영하','40','남','0105496272','820319-1390533','RE003','D027','N317');
insert into pat_T values('P009','김차왕','30','남','01019593303','920205-1191676','RE016','D013','N330');
insert into pat_T values('P010','조동호','29','남','01025076046','931014-1969770','RE002','D023','N320');
insert into pat_T values('P011','박정욱','29','여','01011985149','930703-1118035','RE013','D024','N321');
insert into pat_T values('P012','정영진','60','남','01060298218','620126-1270868',NULL,'D018','N319');
insert into pat_T values('P013','박지훈','54','남','01056122085','680305-1894549',NULL,'D019','N313');
insert into pat_T values('P014','정미라','35','여','01036512745','870708-2182730','RE014','D013','N328');
insert into pat_T values('P015','이윤모','42','남','01081145057','801023-1317506','RE001','D021','N318');
insert into pat_T values('P016','정미경','58','여','01099282939','640913-2469810','RE015','D017','N327');
insert into pat_T values('P017','이은만','34','여','0107815142','880222-2682960','RE004','D016','N311');
insert into pat_T values('P018','임재희','48','여','01030535400','740712-2504079',NULL,'D020','N320');
insert into pat_T values('P019','이종학','57','남','0105997240','650921-1379344',NULL,'D010','N326');
insert into pat_T values('P021','소다름','60','여','01068598415','621125-2929139',NULL,'D008','N319');
insert into pat_T values('P022','임동석','44','남','0108755816','780517-1860171','RE001','D013','N322');
insert into pat_T values('P023','전형진','53','690305-1990415','남','01070885289','RE009','D022','N323');
insert into pat_T values('P024','최민혁','37','850715-1693986','남','01094019689',NULL,'D021','N319');
insert into pat_T values('P025','이재환','51','710627-1555536','남','01041837236',NULL,'D028','N312');
insert into pat_T values('P026','홍국표','48','740729-2283941','여','01057474484','RE010','D020','N328');
insert into pat_T values('P027','김진우','37','850316-1749514','남','01011942728',NULL,'D002','N321');
insert into pat_T values('P028','홍성근','49','730807-1352343','남','0109461457','RE001','D001','N324');
insert into pat_T values('P029','김잔디','39','830808-2411789','여','01011406657',NULL,'D030','N325');
insert into pat_T values('P030','황성길','61','610113-1811945','남','01067235693','RE011','D030','N327');
insert into pat_T values('P031','김봉균','38','860327-1757905','남','01092143302',NULL,'D005','N319');
insert into pat_T values('P032','장민선','44','781111-2387742','여','01073555423','RE005','D004','N329');
insert into pat_T values('P033','송현수','42','760720-2745337','여','01058495491',NULL,'D007','N319');
insert into pat_T values('P034','설시윤','43','750622-1130730','남','01082815192','RE012','D010','N323');
insert into pat_T values('P035','정은미','51','711012-2173384','여','01046767665','RE006','D006','N325');
insert into pat_T values('P036','윤병수','32','900209-1267932','남','01076181694',NULL,'D011','N322');
insert into pat_T values('P037','정연숙','45','770210-2742372','여','01014969917',NULL,'D025','N330');
insert into pat_T values('P038','양한길','41','810317-1495860','남','01093479399',NULL,'D009','N315');
insert into pat_T values('P039','문으뜸','52','700701-2177525','여','01065565255','RE008','D008','N324');
insert into pat_T values('P040','성진호','56','660917-2758295','여','01013712882','RE007','D018','N326');


