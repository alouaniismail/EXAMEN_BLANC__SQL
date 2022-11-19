-- ============================================================
--    suppression des donnees
-- ============================================================

delete from ETUDIANTS;
delete from LOGEMENTS;
delete from SEJOUR;

commit ;

-- ============================================================
--    creation des donnees
-- ============================================================

-- ETUDIANTS

insert into ETUDIANTS values (  1 , 'SAUTET'     , 'CLAUDE'       , 'F', '01-JAN-96'  ) ;
insert into ETUDIANTS values (  2 , 'PINOTEAU'   , 'CLAUDE'       , 'F', '01-JAN-95'  ) ;
insert into ETUDIANTS values (  3 , 'DAVOY'      , 'ERIC'         , 'M', '01-JAN-94'  ) ;
insert into ETUDIANTS values (  4 , 'ZIDI'       , 'CLAUDE'       , 'M', '01-JAN-93'  ) ;
insert into ETUDIANTS values (  5 , 'AUTAN-LARA' , 'CLAUDE'       , 'M', '01-JAN-92') ;
insert into ETUDIANTS values (  6 , 'ROHMER'     , 'ERIC'         , 'F', '01-JAN-91'  ) ;
insert into ETUDIANTS values (  7 , 'MALLE'      , 'LOUIS'        , 'M', '01-JAN-90'  ) ;
insert into ETUDIANTS values (  8 , 'BESSON'     , 'LUC'          , 'M', '01-JAN-89') ;
insert into ETUDIANTS values (  9 , 'PREMINGER'  , 'OTTO'         , 'M', '01-JAN-88') ;
insert into ETUDIANTS values ( 10 , 'BEINEIX'    , 'JEAN-JACQUES' , 'M', '01-JAN-87'  ) ;
insert into ETUDIANTS values ( 11 , 'GERONIMI'   , 'C.'           , 'F', '01-JAN-86'  ) ;
insert into ETUDIANTS values ( 12 , 'LYNE'       , 'ADRIAN'       , 'F', '01-JAN-85'  ) ;
insert into ETUDIANTS values ( 13 , 'TRUFFAUT'   , 'FRANCOIS'     , 'M', '01-JAN-84') ;
insert into ETUDIANTS values ( 14 , 'COCTEAU'    , 'JEAN'         , 'M', '01-JAN-83') ;

commit ;
-- ============================================================
--    verification des donnees
-- ============================================================

select count(*),'= 14 ?','ETUDIANTS' from ETUDIANTS 
