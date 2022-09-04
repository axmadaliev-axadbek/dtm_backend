-- SELECT * from regions;

INSERT INTO regions (region_name) VALUES 
('Andijan Viloyati' ),
('Bukhara Viloyati' ),
('Fergana Viloyati' ),
('Jizzakh Viloyati' ),
('Karakalpakstan Respublikasi' ),
('Namangan Viloyati' ),
('Navoiy Viloyati' ),
('Qashqadaryo Viloyati' ),
('Samarqand Viloyati' ),
('Sirdaryo Viloyati' ),
('Surxondaryo Viloyati' ),
('Tashkent Shaxri' ), 
('Tashkent Viloyati'), 
('Xorazm Viloyati' );




-- SELECT * from users;

INSERT into users(username,fullname, contact,  region, gender, password ) VALUES
('salim',  'aliev salim', '9989311111', '1',  'male', crypt('55', gen_salt('bf')));



insert into subjects(subject_name) values 
('Matematika'),  
('Ingliz tili'),
('Fizika'),
('Biologiya'),  
('Kimyo'); 

-- SELECT * from universities;

insert into universities(university_name, region_id) values 
('Toshkent axborot texnologiyala universiteti', '12'), 
('Toshkent tibbiyot akademiyasi', '12'), 
('Toshkent Moliya Instituti', '12'), 
('Ozbekiston Milliy Universiteti', '12'), 
('Nukus pediatriya tibbiyot instituti', '5'); 


-- SELECT * from faculties;

create table faculties(
    faculty_id serial PRIMARY key,
    faculty_name text not null,
    first_subject  INT references subjects(subject_id) not null,
    second_subject  INT references subjects(subject_id) not null,
    grant_count int not null,
    contract_count int not null,
    grant_score decimal(4, 1) not null,
    contract_score decimal(4, 1) not null,
    university_id  INT references universities(university_id)  not null
);


insert into faculties(grant_count, contract_count ,faculty_name, first_subject, second_subject, grant_score, contract_score, university_id) values 
( '20', '48', 'Axborot xavfsizligi', '1', '3',  '56', '30', 1),
( '25', '50', 'Dasturiy injiniring', '1', '3',  '55', '37', 1),
( '15','45','Kiberxavfsizlik injiniringi','1', '3',   '60.5', '35.7',1),
( '30','65','Sun''iy intellekt', '1', '3',  '59.5', '23.9', 1 ),

('20', '48', 'Davolash fakulteti', '5', '4',  '58', '34',2 ),
('25', '50', 'Tibbiy pedagogika fakulteti', '5', '4',  '165', '30', 2),
('15','45',  'Tibbiy-biologik fakulteti','5', '4',   '58.5', '36', 2),
('30','65',  'Biotibbiyot muhandisligi fakulteti', '5', '4', '163.5',  '26.5',  2),

( '25', '50', 'Moliya va moliyaviy texnologiyalar', '1', '2',  '58.5', '140', 3),
( '20', '45', 'Bank ishi va Audit', '1', '2',   '58', '27', 3),
( '24', '52',  'Elektron tijorat',  '1', '2',   '58.5', '145.7', 3),
( '22', '45',  'Buxgalteriya ishi va Audit',    '1', '2',  '58.5', '23.9',  3),


('20', '48', 'Biologiya(turlari boycha)', '5', '4',  '169', '58',  4),
('25', '50', 'Amaliy matematika', '1', '3',  '166', '117',     4),
('15', '45',  'Bank ishi va Audit','1', '2',   '58.5', '35.7', 4),
('30', '65',  'Agrokimyo', '5', '4',  '58.5', '23.9', 4),

('20', '48', 'Davolash ishi', '5', '4',  '58.5', '140',     5 ),
('25', '50', 'Pedriatriya ishi', '5', '4',  '166.5', '37',     5),
('15', '45',  'Xalq tabobati','5', '4',   '169.5', '28.5', 5),
('30', '65',  'Tibiy biologik ish', '5', '4',  '158.5', '23.9', 5);

-- SELECT * from questions;
-- SELECT * from results;

insert into results(first_subject, second_subject, date, time, user_id, faculty_id, first_subject_id, second_subject_id, first_tests_result, second_tests_result, score_ball) values 
('10', '10', '2022-08-28 17:30:43', '47', '1', '3', '1', '3', '7', '8', '56');
('10', '10', '2022-08-28 17:30:43', '36', '2', '5', '1', '2', '8', '6', '29'),
('10', '10', '2022-08-28 17:30:43', '33', '2', '7', '1', '2', '6', '8', '39'),
('10', '10', '2022-08-28 17:30:43', '45', '1', '1', '1', '3', '7', '5', '29'),



insert into questions(question, question_variants, subject_id) values 
('246∗013579 soni 9 ga bo''linishi uchun yulduzchaning o''rniga qanday raqam qo''yilishi kerak?', '{
    "1": 8,
    "2": 4,
    "3": 0,
    "4": 7,
    "correct": 1
}', '1'),
('n raqamining qanday qiymatlarida 6134nsoni 3 ga qoldiqsiz bo''linadi?', '{
    "1": 2,
    "2": 1, 
    "3": 4,
    "4": 6,
    "correct": 2
}', '1'),
('821 ga qanday eng kichik musbat sonni qo''shganda, yig''indi 6 ga qoldiqsiz bo''linadi?', '{
    "1": 5,
    "2": 1,
    "3": 4,
    "4": 7,
    "correct": 2
}', '1'),
('n raqamining qanday qiymatlarida 7851n soni 9 ga qoldiqsiz bo''linadi?', '{
    "1": "9",
    "2": "4",
    "3": "6",
    "4": "2",
    "correct": 3
}', '1'),
('17827516 quyidagi sonlardan qaysi biriga qoldiqsiz bo''linadi?', '{
    "1": 4,
    "2": 10,
    "3": 5,
    "4": 3,
    "correct": 1
}', '1'),
('3, 6, 73,6,7 va 99 raqamlaridan ularni takrorlamasdan mumkin bo''lgan barcha 44 xonali sonlar tuzilgan. Bu sonlar ichida nechtasi 44 ga qoldiqsiz bo''linadi?', '{
    "1": 6,
    "2": 2,
    "3": 8,
    "4": 4,
    "correct": 2
}', '1'),
('Quyidagi sonlardan qaysi biri 15 ga qoldiqsiz bo‘linmaydi?', '{
    "1": 4620,
    "2": 6145,
    "3": 6525,
    "4": 3105,
    "correct": 2
}', '1'),
('30 dan kichik tub sonlar nechta?', '{
    "1": 11,
    "2": 12,
    "3": 9,
    "4": 10,
    "correct": 4
}', '1'),
('18 90 va 300 sonlarining eng kichik umumiy karralisini toping', '{
    "1": 18,
    "2": 80,
    "3": 900,
    "4": 10,
    "correct": 3
}', '1'),
('Quyidagi sonlardan qaysi biri 12 ga qoldiqsiz bo''linmaydi?', '{
    "1": 12024,
    "2": 13620,
    "3": 18320,
    "4": 9216,
    "correct": 3
}', '1');

-- SELECT * from questions as q where q.subject_id = 2;
-- english


insert into questions(question, question_variants, subject_id) values 
('Choose the answer which correctly completes the sentence.
Kirsten said that _____ would lend _____ her car if I needed it.', '{
    "1": "he / me",
    "2": "I / her",
    "3": "she / me",
    "4": "they / it",
    "correct": 3
}', '2'),
('Choose the answer which correctly completes the sentence.
They never know where you are, _____?', '{
    "1": "do they",
    "2": "don''t you",
    "3": "will they",
    "4": "aren''t you",
    "correct": 1
}', '2'),
('Choose the answer which correctly completes the sentence.
Scientists still have no answer to _____ there is life on other planets.', '{
    "1": "that",
    "2": "which",
    "3": "where",
    "4": "whether",
    "correct": 4
}', '2'),
('Choose the answer which correctly completes the sentence.
My arm still hurts, but it''s not _____ bad _____ it was before.', '{
    "1": "so / that",
    "2": "as / as",
    "3": "enough / as",
    "4": "too/ to",
    "correct": 2
}', '2'),
('Choose the answer which correctly completes the sentence.
If you do it a little _____, I''m sure you can solve this question.', '{
    "1": "careful",
    "2": "most carefully",
    "3": "the last careful",
    "4": "more carefully",
    "correct": 4
}', '2'),
('Choose the answer which correctly completes the sentence.
The local festival we attended was far _____ interesting _____ I had imagined.', '{
    "1": "more / than",
    "2": "as / so",
    "3": "so / that",
    "4": "too / to",
    "correct": 1
}', '2'),
('Choose the answer which correctly completes the sentence.
Since Simon learnt that I was the boss'' son, he has been treating me quite .......', '{
    "1": "different",
    "2": "differently",
    "3": "more differently than",
    "4": "the most different",
    "correct": 2
}', '2'),
('Choose the best answer.
They _____ here by now; I wonder why they haven''t yet.', '{
    "1": "should have arrived",
    "2": "can arrive",
    "3": "may have arrived",
    "4": "must be arriving",
    "correct": 1
}', '2'),
('Choose the answer which correctly completes the sentence.
_____ close the windows, please? I''ve started to feel cold.', '{
    "1": "Will I",
    "2": "Would you",
    "3": "How about",
    "4": "Must you",
    "correct": 2
}', '2'),
('Choose the answer which correctly completes the sentence.
Although Alicia sang _____, she got the highest score from the jury.', '{
    "1": "the worst",
    "2": "badly enough",
    "3": "better than",
    "4": "as bad",
    "correct": 1
}', '2');


-- Fizika 
insert into questions(question, question_variants, subject_id) values 
('Sportchilar bir xil 16.2km/soat tezlik bilan uzunligi 20 m20m bo''lgan kolonna tashkil qilib yugurmoqdalar. Ularga qarama-qarshi yo''nalishda murabbiy 3 m/s3m/s tezlik bilan yugurmoqda. Har bir sportchi murabbiy bilan tenglashgach. orqaga burilib yana avvalgi tezligi bilan yugurishni davom ettiriyapti. Hamma sportchilar burilgandan keyin kolonna uzunligi (m)(m) qancha bo''ladi?', '{
    "1": "10",
    "2": "3",
    "3": "4",
    "4": "20",
    "correct": 1
}', '3'),
('Sharcha balandligi 10 mm bo''lgan qiya tekislikdan ishqalanishsiz. dumalab tushmoqda. Sharchaning qiya tekislik oxiridagi tezligini (m/s) aniqlang.', '{
    "1": "19.6",
    "2": "14.1",
    "3": "20",
    "4": "10",
    "correct": 2
}', '3'),
('Uzunligi 480480 mm bo''lgan poyezd tekis harakatlanib, 720720 mm uzunlikdagi ko''prikdan 22 minutda o''tdi. Poyezdning tezligi qanday?', '{
    "1": "4 m/s",
    "2": "3636 km/soat",
    "3": "10 km/soat",
    "4": "6 m/s",
    "correct": 3
}', '3'),
('Quyidagi jumlaning mazmuniga mos ravishda gapni davom ettiring. Notekis harakatda tezlanish vektori ...', '{
    "1": "a < 0 holda moduli va yo''nalishi o''zgarmaydi",
    "2": "moduli va yo''nalishi o''zgarib turadi",
    "3": "a > 0 holda moduli va yo''nalishi o''zgarmaydi",
    "4": "moduli ozgarmas bolib, yonalishi uzluksiz ozgarib turadi",
    "correct": 4
}', '3'),
('Mashina ikki punkt orasini 40 km/soat40km/soat tezlik bilan o''tdi. So''ngra tezligini 65 km/soat65km/soat da oshirib yana shuncha yo''l o''tgan. Ikkala holda ham tekis harakat qilgan. O''rtacha tezlikni (km/soat)(km/soat)toping.', '{
    "1": "260",
    "2": "52.5",
    "3": "4.5",
    "4": "130",
    "correct": 3
}', '3'),
('Suvi qirg''oqga nisbatan 10.8 km/soat tezlik bilan oqayotgan daryoning kengligi 240 m240m. Tinch suvga nisbatan 14.4km/soat tezlik bilan harakatlana oladigan qayiq qancha vaqtda (min)(min) bu daryoni kesib o''tadi?', '{
    "1": "1.5",
    "2": "2",
    "3": "60",
    "4": "1",
    "correct": 3
}', '3'),
('Oqimga qarshi suzayotgan bolaning suvga nisbatan tezligi 1 m/s1m/s, suvning qirg''oqqa nisbatan tezligi 0.5 m/s0.5m/s bo''lsa, bolaning qirg''oqqa nisbatan tezligini aniqlang (km/soat)(km/soat)', '{
    "1": "1.5",
    "2": "1",
    "3": "0.5",
    "4": "1.8",
    "correct": 2
}', '3'),
('Qayiq kengligi 240 m240m bo''lgan daryoni kesib suzib o''tmoqda. Agar oqimning tezligi 2 m/s2m/s, qayiqning suvga nisbatan tezligi 3 m/s3m/s bo''lsa, qayiq ikkinchi sohilga o''tishi uchun qanday minimal vaqt (s)(s) zarur bo''ladi?', '{
    "1": "48",
    "2": "40",
    "3": "80",
    "4": "120",
    "correct": 2
}', '3'),
('Qandaydir balandlikdan tushayotgan po''lat jismning yerga urilishidagi tezligi 50 m/s50m/s. Agar bunda kinetik energiya to''liq ravishda jismning ichki energiyasiga aylansa, u necha gradusga isiydi? Polatning solishtirma issiqlik sig''imi 500 J/kg\cdot K500J/kg⋅K.', '{
    "1": "25",
    "2": "10",
    "3": "5",
    "4": "2.5",
    "correct": 3
}', '3'),
('Tosh tik yuqoriga v = 30 m/sv=30m/s tezlik bilan otildi. Qanday h (m)h(m) balandlikda uning kinetik energiyasi potensial energiyasining k = 3/5k=3/5 qismiga teng bo''ladi?', '{
    "1": "16",
    "2": "10",
    "3": "22",
    "4": "28",
    "correct": 3
}', '3');






insert into questions(question, question_variants, subject_id) values 
('Gingko biloba o''simliklarning qaysi bo''limiga mansub?', '{
    "1": "Ochiq urug''lilar",
    "2": "Tuban o''simliklar",
    "3": "Yuksak sporali o''simliklar",
    "4": "Yopiq urug''lilar",
    "correct": 1
}', '4'),
('Qaysi o''simliklarning barglari ancha barvaqt to''kiladi?
1) na''matak; 2) nastarin;
3) zarang; 4) tikandaraxt;
5) shamshod; 6) terak.', '{
    "1": "1, 2, 5",
    "2": "4, 5, 6",
    "3": "2, 3, 4",
    "4": "3, 4, 6",
    "correct": 2
}', '4'),
('Qaysi o''simliklarning bargi va poyasi yo''q, lekin guli eng yirik gul hisoblanadi.', '{
    "1": "talipot palmasi",
    "2": "volfiya",
    "3": "sekvoyyadendron",
    "4": "raffleziya Arnoldi",
    "correct": 1
}', '4'),
('Shakli o''zgargan barg (a) va shakli o''zgargan novda (b) ga ega bo''lgan o''simliklarni belgilang.
1) tokning gajaklari; 2) atirgulning tikani;
3) do''lananing tikani; 4) kaktus tikani;
5) zirkning tikani; 6) qulupnayning gajaklari;
7) no''xatning gajaklari; 8) piyozning seret bargi.', '{
    "1": "a-3, 4, 5; b-1,2, 6",
    "2": "a-2, 4, 7; b-3, 5, 6",
    "3": "a-4, 5, 7; b-1,3, 6",
    "4": "a-4, 5, 8; b-2, 3, 7",
    "correct": 2
}', '4'),
('Sanoatda tolalarni ajratishda qaysi organizmdan foydalaniladi?', '{
    "1": "bakteriyalardan",
    "2": "achitqi zamburug''laridan",
    "3": "xlorella suvo''tidan",
    "4": "sianobakteriyalardan",
    "correct": 4
}', '4'),
('O''simlik to''qimalari uchun xos ta''riflar to''g''ri berilgan javobni aniqlang.
a) asosiy to''qima; b) mexanik to''qima;
c) qoplovchi to''qima; d) o''tkazuvchi to''qima;
e) hosil qiluvchi to''qima;
1) hujayralari yupqa va elastik xususiyatga ega;
2) tirik zich joylashgan 1 qavat hujayralardan tashkil topgan;
3) qalin qobiqli cho''ziq, tirik hujayralardan tashkil topgan;
4) qalin cho''ziq, tik joylashgan hujayralardan iborat;
5) qalin qobiqli cho''ziq o''lik hujayralardan tashkil topgan.', '{
    "1": "a-1; b-4, 5; c-5; d-3",
    "2": "a-2, 5; b-3; c-4; d-1",
    "3": "b-3, 4; c-2; d-1 ; e-5",
    "4": "b-3, 5; c-2; d-4; e-1",
    "correct": 4
}', '4'),
('Qaysi daraxtning shox-shabbasi g''uj bo''lib joylashgan?', '{
    "1": "olma",
    "2": "tol",
    "3": "qarag''ay",
    "4": "qayrag''och",
    "correct": 3
}', '4'),
('Quruqlikda o''simliklar biomassasi umumiy biomassaning ... foizini tashkil etadi.', '{
    "1": "1",
    "2": "99",
    "3": "87",
    "4": "66",
    "correct": 3
}', '4'),
('Harorati iliq kelgan kuz oylarida ham gullashda davom etadigan madaniy o''simliklarni aniqlang.', '{
    "1": "zubturum, xrizantema",
    "2": "xrizantema, kartoshkagul",
    "3": "kartoshkagul, boqila",
    "4": "moychechak, atirgul",
    "correct": 3
}', '4'),
('Guli qulpoyaning uchidagi savatchada joylashgan o''simlikni belgilang.', '{
    "1": "lolaqizg''aldoq",
    "2": "makkajo''xori",
    "3": "zubturum",
    "4": "sabzi",
    "correct": 4
}', '4');


insert into questions(question, question_variants, subject_id) values 
('Oqsil gidrolizida qaysi modda hosil bo''lmaydi?', '{
    "1": "22- aminopropankislota",
    "2": "xlorsirka kislota",
    "3": "aminosirka kislota",
    "4": "22- amino - 33-metilbutankislota (valin)",
    "correct": 1
}', '5'),
('Konsentrlangan nitrat kislota ta''sirida quyidagi amino kislotalardan qaysi biri jigar rangga bo''yaladi.', '{
    "1": "glikokol",
    "2": "alanin",
    "3": "valin",
    "4": "fenilalanin",
    "correct": 2
}', '5'),
('Organik birikmalar sinflari orasida katta ahamiyatga ega bo''lgan oqsillar qaysi sinf birikmalaridan tashkil topadi?', '{
    "1": "oksikislotalar va aminokislotalardan",
    "2": "aminokislotalardan",
    "3": "karbonkislotalar va diaminlardan",
    "4": "aminlar va oddiy efirlarban",
    "correct": 2
}', '5'),
('Gidrolizga uchraydigan kimyoviy birikmalar qatorini aniqlang.
1) tuzlar; 2) asoslar; 3) kislotalar; 4) monosaxaridlar;
5) oqsillar; 6) murakkab efirlar; 7) yog''lar', '{
    "1": "1, 2, 3, 41,2,3,4",
    "2": "2,3,6,7",
    "3": "1,5,6,7",
    "4": "2,4,5,6",
    "correct": 1
}', '5'),
('Katta odamning sutkalik ratsionida 120120 gg oqsil bo''lishi kеrak. Sutkalik ratsiondagi oqsilning 35% ini tarkibida 21\%21% oqsil bo''lgan no''xatdan olish uchun 11 kunda nеcha gramm no''xat iste''mol qilish kеrak?', '{
    "1": "109",
    "2": "62",
    "3": "200",
    "4": "160",
    "correct": 3
}', '5'),
('Laktoalbuminning nisbiy molеkulyar massasi 1630016300 ga tеng. Uning 1010 gg miqdori gidrolizga uchratilganda 11.77811.778 gg turli xil aminokislotalar olindi. Shunday oqsilning molеkulasi tarkibida nеchta aminokislota qoldig''i boladi?', '{
    "1": "140",
    "2": "120",
    "3": "162",
    "4": "161",
    "correct": 4
}', '5'),
('Protеin molеkulasi tarkibida 22 atom tеmir bo''lib, uning massa ulushi 0.28% ga tеng. Protеin molеkulasining absolyut massasini (kg) toping.', '{
    "1": "100",
    "2": "40",
    "3": "40000",
    "4": "6.68*100",
    "correct": 4
}', '5'),
('Agar oqsil molеkulasi tarkibida ikki atom oltingugurt bo''lib, uning miqdori 0.64% ga tеng bo''lsa, oqsilning molеkulyar massasi qancha?', '{
    "1": "100",
    "2": "5000",
    "3": "100000",
    "4": "10000",
    "correct": 3
}', '5'),
('Qaysi moddalar yordamida Byurеt rеaksiyasini amalga oshirish mumkin?
1) oksid; 2) mis (IIII) sulfat; 3) natriy gidroksid;
4) etilspirt; 5) polistirol', '{
    "1": "1,3,4",
    "2": "2,3",
    "3": "2,5",
    "4": "2,4",
    "correct": 2
}', '5'),
('Katta odamning sutkalik ratsionida 120g oqsil bo''lishi kerak. Go''shtda oqsilning massa ulushi 20% bo''lsa sutkalik oqsilning 50% ini go''shtdan olish uchun 11 kunda nеcha gramm go''sht istе''mol qilish kеrak?', '{
    "1": "60",
    "2": "300",
    "3": "250",
    "4": "200",
    "correct": 2
}', '5');