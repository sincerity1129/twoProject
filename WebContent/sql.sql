drop table budong_member

create table budong_member(
	id varchar2(10),
	pw varchar2(15),
	name varchar2(10)
)

select * from budong_member

insert into budong_member values('123','123','123')
insert into budong_member values('smart','123','smart')
insert into budong_member values('admin','admin','admin')


select * from BUDONG_MEMBER

alert delete budong_member where id = 'smhrd'

drop table junwall

create table junwall(
	junwall_num number,
	dong_name varchar2(50),
	build_year number,
	deposit varchar2(10),
	loyer varchar2(10),
	apt_name varchar2(100),
	year number,
	month number,
	day number,
	apt_size number,
	floor number
)

drop table maemae

create table maemae(
	maemae_num number,
	dong_name varchar2(50),
	price varchar2(10),
	build_year number,
	apt_name varchar2(100),
	year number,
	month number,
	day number,
	apt_size number,
	floor number
)

create table e_school(
	school_name varchar2(100),
	address varchar2(200),
	dong varchar2(20)
);

drop table e_school;


insert into e_school values('각화초등학교','광주광역시 북구 각화대로39번길 10', '각화동');
insert into e_school values('건국초등학교','광주광역시 북구 첨단연신로108번길 86', '신용동');
insert into e_school values('경양초등학교','광주광역시 북구 북문대로98번길 20', '운암동');
insert into e_school values('계수초등학교','광주광역시 서구 상무시민로 51', '치평동');
insert into e_school values('고실초등학교','광주광역시 광산구 풍영로 300', '장덕동');
insert into e_school values('광림초등학교','광주광역시 서구 하남대로 710번길 19', '동천동');
insert into e_school values('광주계림초등학교','광주광역시 동구 중앙로 320', '계림동');
insert into e_school values('광주광천초등학교','광주광역시 서구 월산로 266', '농성동');
insert into e_school values('광주교육대학교광주부설초등학교','광주광역시 북구 필문대로 55', '풍향동');
insert into e_school values('광주극락초등학교','광주광역시 서구 상무버들로54번길5', '유촌동');
insert into e_school values('광주남초등학교','광주광역시 동구 지원로5번길 20', '소태동');
insert into e_school values('광주농성초등학교','광주광역시 남구 금화로 481번길 7', '월산동');
insert into e_school values('광주대성초등학교','광주광역시 남구 서동로 2번길 8', '서동');
insert into e_school values('광주동산초등학교','광주광역시 동구 준법로 16', '지산동');
insert into e_school values('광주동운초등학교','광주광역시 북구 북문대로8번길 21', '운암동');
insert into e_school values('광주동초등학교','광주광역시 북구 석곡로 527', '망월동');
insert into e_school values('광주동초등학교충효분교장','광주광역시 북구 충효샘길 14-30', '충효동');
insert into e_school values('광주문화초등학교','광주광역시 북구 군왕로 135', '두암동');
insert into e_school values('광주방림초등학교','광주광역시 남구 큰방림길 20', '방림동');
insert into e_school values('광주백운초등학교','광주광역시 남구 독립로 51', '백운동');
insert into e_school values('광주봉주초등학교','광주광역시 남구 봉주길 32', '주월동');
insert into e_school values('광주북초등학교','광주광역시 북구 하서로 985', '효령동');
insert into e_school values('광주산수초등학교','광주광역시 동구 산수길 28', '산수동');
insert into e_school values('광주삼육초등학교','광주광역시 남구 회서로 30', '주월동');
insert into e_school values('광주상무초등학교','광주광역시 서구 금호운천길 67', '금호동');
insert into e_school values('광주서림초등학교','광주광역시 북구 서림로 113', '임동');
insert into e_school values('광주서산초등학교','광주광역시 북구 우치로 263', '오치동');
insert into e_school values('광주서석초등학교','광주광역시 동구 제봉로82번길 26', '서석동');
insert into e_school values('광주서초등학교','광주광역시 서구 화운로 194번길 6', '화정동');
insert into e_school values('광주송원초등학교','광주광역시 남구 송암로73', '송하동');
insert into e_school values('광주수창초등학교','광주광역시 북구 금남로 99', '북동');
insert into e_school values('광주양동초등학교','광주광역시 서구 경열로 121번길 5', '양동');
insert into e_school values('광주양산초등학교','광주광역시 북구 연양로 33', '양산동');
insert into e_school values('광주용봉초등학교','광주광역시 북구 서암대로144번길 11', '용봉동');
insert into e_school values('광주용산초등학교','광주광역시 동구 화산로 334', '용산동');
insert into e_school values('광주우산초등학교','광주광역시 북구 서방로63번길 67', '우산동');
insert into e_school values('광주운암초등학교','광주광역시 북구 서강로 79-14', '운암동');
insert into e_school values('광주월산초등학교','광주광역시 남구 월산로 116번길 6', '월산동');
insert into e_school values('광주장원초등학교','광주광역시 동구 무등로 533', '산수동');
insert into e_school values('광주제석초등학교','광주광역시 남구 봉선로 51번길 14', '주월동');
insert into e_school values('광주중앙초등학교','광주광역시 동구 제봉로 167', '궁동');
insert into e_school values('광주중흥초등학교','광주광역시 북구 경양로197번길 25', '중흥동');
insert into e_school values('광주지산초등학교','광주광역시 북구 하서로 637', '지산동');
insert into e_school values('광주풍향초등학교','광주광역시 북구 군왕로51번길77', '풍향동');
insert into e_school values('광주학강초등학교','광주광역시 남구 양림로 92', '양림동');
insert into e_school values('광주학운초등학교','광주광역시 동구 의재로 181', '운림동');
insert into e_school values('광주화정초등학교','광주광역시 서구 월드컵4강로146번길10', '화정동');
insert into e_school values('광주효덕초등학교','광주광역시 남구 화산로7', '진월동');
insert into e_school values('광주효동초등학교','광주광역시 북구 서양로 99', '중흥동');
insert into e_school values('금구초등학교','광주광역시 광산구 임방울대로165번길60', '운남동');
insert into e_school values('금당초등학교','광주광역시 서구 풍암중앙로 83', '풍암동');
insert into e_school values('금부초등학교','광주광역시 서구 금화로 115번길 22', '금호동');
insert into e_school values('금호초등학교','광주광역시 서구 금부로95번길 26-11', '쌍촌동');
insert into e_school values('대반초등학교','광주광역시 광산구 사암로340번길 19', '월곡동');
insert into e_school values('대자초등학교','광주광역시 북구 대자로 5', '운암동');
insert into e_school values('대촌중앙초등학교','광주광역시 남구 고싸움로152번길 1', '지석동');
insert into e_school values('도산초등학교','광주광역시 광산구 송정외로 6', '도산동');
insert into e_school values('동곡초등학교','광주광역시 광산구 동곡로 151-17', '하산동');
insert into e_school values('동림초등학교','광주광역시 북구 동림용산로 7', '동림동');
insert into e_school values('두암초등학교','광주광역시 북구 참판로 130', '두암동');
insert into e_school values('마재초등학교','광주광역시 서구 마재로27', '금호동');
insert into e_school values('마지초등학교','광주광역시 광산구 목련로 219번길 104', '운남동');
insert into e_school values('만호초등학교','광주광역시 서구 금화로 53', '금호동');
insert into e_school values('매곡초등학교','광주광역시 북구 초당로 25', '매곡동');
insert into e_school values('목련초등학교','광주광역시 광산구 목련로 153번길 20', '운남동');
insert into e_school values('무등초등학교','광주광역시 북구 면앙로 99', '우산동');
insert into e_school values('무학초등학교','광주광역시 남구 월지길 7', '월성동');
insert into e_school values('문산초등학교','광주광역시 북구 문산로 66', '문흥동');
insert into e_school values('문우초등학교','광주광역시 북구 능안로 7', '문흥동');
insert into e_school values('문정초등학교','광주광역시 북구 대천로169번길 7', '문흥동');
insert into e_school values('문흥중앙초등학교','광주광역시 북구 문산로 17', '문흥동');
insert into e_school values('문흥초등학교','광주광역시 북구 면앙로 19', '문흥동');
insert into e_school values('미산초등학교','광주광역시 광산구 첨단중앙로 181번길 70', '월계동');
insert into e_school values('본량초등학교','광주광역시 광산구 용진로 323번지', '남산동');
insert into e_school values('본촌초등학교','광주광역시 북구 본촌택지로30번길 22', '본촌동');
insert into e_school values('봉산초등학교','광주광역시 광산구 산월로 57', '산월동');
insert into e_school values('봉선초등학교','광주광역시 남구 봉선 중앙로 118길 4', '봉선동');
insert into e_school values('불로초등학교','광주광역시 남구 제석로 80번길58-5', '불로동');
insert into e_school values('비아초등학교','광주광역시 광산구 비아동원촌길 19-20', '비아동');
insert into e_school values('빛고을초등학교','광주광역시 서구 동천로7', '동천동');
insert into e_school values('빛여울초등학교','광주광역시 남구 효천중앙로 4', '임암동');
insert into e_school values('산월초등학교','광주광역시 광산구 산월로 9번길 36', '월계동');
insert into e_school values('산정초등학교','광주광역시 광산구 목련로 22번길 11', '산정동');
insert into e_school values('살레시오초등학교','광주광역시 서구 전평길 40-1', '매월동');
insert into e_school values('삼각초등학교','광주광역시 북구 송해로 21', '삼각동');
insert into e_school values('삼도초등학교','광주광역시 광산구 용진로 9', '도덕동');
insert into e_school values('삼정초등학교','광주광역시 북구 밤실로208번길 55', '두암동');
insert into e_school values('새별초등학교','광주광역시 광산구 풍영로 125', '흑성동');
insert into e_school values('서광초등학교','광주광역시 서구 상무오월로38번길 36', '쌍촌동');
insert into e_school values('서일초등학교','광주광역시 북구 설죽로 590', '일곡동');
insert into e_school values('선운초등학교','광주광역시 광산구 선운중앙로 11', '선암동');
insert into e_school values('선창초등학교','광주광역시 광산구 신창로 35번길 67', '신가동');
insert into e_school values('성덕초등학교','광주광역시 광산구 풍영로 313번지', '장덕동');
insert into e_school values('성진초등학교','광주광역시 서구 학생독립로 16', '화정동');
insert into e_school values('송우초등학교','광주광역시 광산구 사암로 158번길49(1593-1)', '우산동');
insert into e_school values('송정동초등학교','광주광역시 광산구 사암로 27번길 58', '송정동');
insert into e_school values('송정서초등학교','광주광역시 광산구 상무대로 114', '도산동');
insert into e_school values('송정중앙초등학교','광주광역시 광산구 어등대로 653번길 90', '소촌동');
insert into e_school values('송정초등학교','광주광역시 광산구 송도로 208번길 25', '도산동');
insert into e_school values('송학초등학교','광주광역시 서구 눌재로 408', '세하동');
insert into e_school values('수문초등학교','광주광역시 광산구 신창로 105번길 9', '신창동');
insert into e_school values('수완초등학교','광주광역시 광산구 장덕로 143', '수완동');
insert into e_school values('신가초등학교','광주광역시 광산구 신가로 40번길 21', '신가동');
insert into e_school values('신암초등학교','광주광역시 서구 풍암2로 56', '풍암동');
insert into e_school values('신용초등학교','광주광역시 북구 첨단연신로 232-10', '신용동');
insert into e_school values('신창초등학교','광주광역시 광산구 신창로 162번길 10', '신창동');
insert into e_school values('양지초등학교','광주광역시 북구 자라봉로63번길 16', '양산동');
insert into e_school values('어등초등학교','광주광역시 광산구 월곡 산정로 50', '우산동');
insert into e_school values('어룡초등학교','광주광역시 광산구 소촌로 122', '소촌동');
insert into e_school values('연제초등학교','광주광역시 북구 하서로229번길 47', '양산동');
insert into e_school values('염주초등학교','광주광역시 서구 염화로 134번길 28', '화정동');
insert into e_school values('영천초등학교','광주광역시 광산구 목련로 123', '월곡동');
insert into e_school values('오정초등학교','광주광역시 북구 대천로55', '오치동');
insert into e_school values('오치초등학교','광주광역시 북구 설죽로 290', '오치동');
insert into e_school values('용두초등학교','광주광역시 북구 임방울대로1041번길 25', '신용동');
insert into e_school values('용주초등학교','광주광역시 북구 용주로 15', '용봉동');
insert into e_school values('운남초등학교','광주광역시 광산구 하남대로 248-22', '운남동');
insert into e_school values('운리초등학교','광주광역시 서구 풍암운리로 23번길 5', '풍암동');
insert into e_school values('운천초등학교','광주광역시 서구 치평로 59', '치평동');
insert into e_school values('월계초등학교','광주광역시 광산구 첨단내촌로 83', '월계동');
insert into e_school values('월곡초등학교','광주광역시 광산구 월곡산정로 107', '월곡동');
insert into e_school values('월봉초등학교','광주광역시 광산구 산월로 101', '산월동');
insert into e_school values('유덕초등학교','광주광역시 서구 상무버들로 16번길 6-10', '유촌동');
insert into e_school values('유안초등학교','광주광역시 남구 봉선로 175번길 16', '봉선동');
insert into e_school values('유촌초등학교','광주광역시 서구 내방로 153', '쌍촌동');
insert into e_school values('율곡초등학교','광주광역시 동구 밤실로 142', '산수동');
insert into e_school values('은빛초등학교','광주광역시 광산구 수완로 33번길 11', '수완동');
insert into e_school values('일곡초등학교','광주광역시 북구 설죽로 530', '일곡동');
insert into e_school values('일동초등학교','광주광역시 북구 일곡택지로 45', '일곡동');
insert into e_school values('일신초등학교','광주광역시 북구 일곡마을로 187', '일곡동');
insert into e_school values('임곡초등학교','광주광역시 광산구 하림길 26', '임곡동');
insert into e_school values('장덕초등학교','광주광역시 광산구 수등로 27', '장덕동');
insert into e_school values('장산초등학교','광주광역시 남구 회서로 27', '주월동');
insert into e_school values('정암초등학교','광주광역시 광산구 첨단과기로 104', '월계동');
insert into e_school values('조봉초등학교','광주광역시 남구 봉선로 144번길 8', '봉선동');
insert into e_school values('주월초등학교','광주광역시 서구 화운로 36', '주월동');
insert into e_school values('지한초등학교','광주광역시 동구 남계길 37', '내남동');
insert into e_school values('진남초등학교','광주광역시 남구 효우로 60번길 12', '노대동');
insert into e_school values('진만초등학교','광주광역시 광산구 목련로394번길 40-10', '신가동');
insert into e_school values('진월초등학교','광주광역시 남구 광복마을 4길 40', '진월동');
insert into e_school values('진제초등학교','광주광역시 남구 서문대로 654번길 45', '진월동');
insert into e_school values('첨단초등학교','광주광역시 광산구 임방울대로727-20', '월곡동');
insert into e_school values('치평초등학교','광주광역시 서구 상무평화로 43', '치평동');
insert into e_school values('큰별초등학교','광주광역시 광산구 수등로 115', '신가동');
insert into e_school values('태봉초등학교','광주광역시 북구 청계로 33', '용봉동');
insert into e_school values('평동초등학교','광주광역시 광산구 평동로 741', '옥동');
insert into e_school values('풍암초등학교','광주광역시 서구 풍암중앙로 8', '풍암동');
insert into e_school values('풍영초등학교','광주광역시 광산구 수등로 258번길 53', '신가동');
insert into e_school values('하남중앙초등학교','광주광역시 광산구 산정로 6번길 21-20', '월곡동');
insert into e_school values('하남초등학교','광주광역시 광산구 하남대로 54번길 10', '하남동');
insert into e_school values('하백초등학교','광주광역시 북구 하백로5번길 10', '매곡동');
insert into e_school values('한울초등학교','광주광역시 북구 유림로160번길 15', '동림동');
insert into e_school values('화개초등학교','광주광역시 서구 화개 중앙로 48', '금호동');
insert into e_school values('화정남초등학교','광주광역시 서구 염화로 37', '화정동');
insert into e_school values('효광초등학교','광주광역시 서구 광천2길 33번길', '광천동');
insert into e_school values('효천초등학교','광주광역시 남구 효우2로 70번길', '정자동');

select * from E_SCHOOL;

