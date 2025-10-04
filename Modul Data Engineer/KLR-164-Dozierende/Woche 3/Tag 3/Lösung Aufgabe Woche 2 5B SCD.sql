--- Dim_Benutzer SCD Typ 1
Update Dim_Benutzer
set eMail = 'neueEmail@test.de'
where BenutzerId = 'cxz'

--- Dim_Mitarbeiter SCD Typ 2 Valid_From ValidTo  --- validTo null 99991231
--- join von fact zu dim: fact join dim on fact.ma_id = dim.ma_id ....

--- aktueller DS / alte DS auf ungültig
update Dim_mitarbeiter set valid_to = '20230331' where Mitarbeiter_id = 1 and valid_ is null -- validto = '99991231'
--- einfügen neuer DS
insert into DIM_Mitarbeiter
(Mitarbeiter_id, Name, Position, validFrom, valid_to)
values (999, 'Max M.', 'Teamleitung', '20230401', null)

Mitarbeiter_Id ... Idenity(1,1)


-- Abfrage des aktuellsten Datensatzes für jeden Mitarbeiter
SELECT *
FROM Dim_Mitarbeiter
WHERE valid_to is null



--- SCD Typ 3
--- 1 Spalte für aktuellen Wert
--- 1 oder n spalten für die historischen Werte  mit Datumspalten 
--- nachteil fixiert Anzahl

--- CurrentEmail, PreviousEmail, DateEmailCHanged 