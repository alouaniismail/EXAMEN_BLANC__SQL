-- ============================================================
--   Nom de la base   :  gestion des logements                               
--   Nom de SGBD      :  ORACLE Version 7.0                    
--   Date de creation :  18/11/2022  22:48                      
-- ============================================================

drop table ETUDIANTS cascade constraints;
drop table LOGEMENTS cascade constraints;
drop table SEJOUR cascade constraints;

-- ============================================================
--   Table : ETUDIANTS                      
-- ============================================================
create table ETUDIANTS
(
    NUMERO_ETUDIANT                 NUMBER(3)              not null,
    NOM                             CHAR(20)               not null,
    PRENOM                          CHAR(20)                       ,
    SEXE                            CHAR(2)                        ,
    DATE_DE_NAISSANCE               DATE                           ,
    constraint pk_etudiant primary key (NUMERO_ETUDIANT)
);

-- ============================================================
--   Table : LOGEMENTS                                       
-- ============================================================
create table LOGEMENTS
(
    ID_LOGEMENT              NUMBER(3)              not null,
    DESCRIPTION              CHAR(20)               not null,
    BATIMENT                 CHAR(5)                        ,
    CAPACITE                 NUMBER(40)                     ,
    constraint pk_logement primary key (ID_LOGEMENT)
);

-- ============================================================
--   Table : SEJOUR                                              
-- ============================================================
create table SEJOUR
(
    ID_SEJOUR                   NUMBER(3)              not null,
    NUMERO_ETUDIANT             NUMBER(3)              not null,
    ID_LOGEMENT                 NUMBER(3)                      ,
    DATE_DEBUT                  DATE			       ,
    DATE_FIN			DATE			       ,
    constraint pk_sejour primary key (ID_SEJOUR)
);

alter table SEJOUR
    add constraint fk1_sejour foreign key (NUMERO_ETUDIANT)
       references ETUDIANTS (NUMERO_ETUDIANT);

alter table SEJOUR
    add constraint fk2_sejour foreign key (ID_LOGEMENT)
       references LOGEMENTS (ID_LOGEMENT);

