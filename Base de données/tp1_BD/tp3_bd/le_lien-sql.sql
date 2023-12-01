#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: rayons
#------------------------------------------------------------

CREATE TABLE rayons(
        codeRayons     Varchar (50) NOT NULL ,
        intituleRayons Varchar (50) NOT NULL
	,CONSTRAINT rayons_PK PRIMARY KEY (codeRayons)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: auteur
#------------------------------------------------------------

CREATE TABLE auteur(
        codeAut   Varchar (50) NOT NULL ,
        NomAut    Varchar (50) NOT NULL ,
        PrenomAut Varchar (50) NOT NULL
	,CONSTRAINT auteur_PK PRIMARY KEY (codeAut)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Mots
#------------------------------------------------------------

CREATE TABLE Mots(
        Code_mot Varchar (50) NOT NULL ,
        Mot      Varchar (50) NOT NULL
	,CONSTRAINT Mots_PK PRIMARY KEY (Code_mot)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ouvrage
#------------------------------------------------------------

CREATE TABLE ouvrage(
        Codeouvrage  Varchar (50) NOT NULL ,
        TitreOuvrage Varchar (50) NOT NULL
	,CONSTRAINT ouvrage_PK PRIMARY KEY (Codeouvrage)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Adhérent
#------------------------------------------------------------

CREATE TABLE Adherent(
        codeAdh    Varchar (50) NOT NULL ,
        NomAdh     Varchar (50) NOT NULL ,
        PrenomAdh  Varchar (50) NOT NULL ,
        AdresseAdj Varchar (50) NOT NULL
	,CONSTRAINT Adherent_PK PRIMARY KEY (codeAdh)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Emprunt
#------------------------------------------------------------

CREATE TABLE Emprunt(
        codeAdh     Varchar (50) NOT NULL ,
        Codeouvrage Varchar (50) NOT NULL
	,CONSTRAINT Emprunt_PK PRIMARY KEY (codeAdh,Codeouvrage)

	,CONSTRAINT Emprunt_Adherent_FK FOREIGN KEY (codeAdh) REFERENCES Adherent(codeAdh)
	,CONSTRAINT Emprunt_ouvrage0_FK FOREIGN KEY (Codeouvrage) REFERENCES ouvrage(Codeouvrage)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: contient
#------------------------------------------------------------

CREATE TABLE contient(
        Codeouvrage Varchar (50) NOT NULL ,
        codeRayons  Varchar (50) NOT NULL
	,CONSTRAINT contient_PK PRIMARY KEY (Codeouvrage,codeRayons)

	,CONSTRAINT contient_ouvrage_FK FOREIGN KEY (Codeouvrage) REFERENCES ouvrage(Codeouvrage)
	,CONSTRAINT contient_rayons0_FK FOREIGN KEY (codeRayons) REFERENCES rayons(codeRayons)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Auteur de
#------------------------------------------------------------

CREATE TABLE Auteur_de(
        Codeouvrage Varchar (50) NOT NULL ,
        codeAut     Varchar (50) NOT NULL
	,CONSTRAINT Auteur_de_PK PRIMARY KEY (Codeouvrage,codeAut)

	,CONSTRAINT Auteur_de_ouvrage_FK FOREIGN KEY (Codeouvrage) REFERENCES ouvrage(Codeouvrage)
	,CONSTRAINT Auteur_de_auteur0_FK FOREIGN KEY (codeAut) REFERENCES auteur(codeAut)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Index
#------------------------------------------------------------

CREATE TABLE Index(
        Codeouvrage Varchar (50) NOT NULL ,
        Code_mot    Varchar (50) NOT NULL
	,CONSTRAINT Index_PK PRIMARY KEY (Codeouvrage,Code_mot)

	,CONSTRAINT Index_ouvrage_FK FOREIGN KEY (Codeouvrage) REFERENCES ouvrage(Codeouvrage)
	,CONSTRAINT Index_Mots0_FK FOREIGN KEY (Code_mot) REFERENCES Mots(Code_mot)
)ENGINE=InnoDB;

