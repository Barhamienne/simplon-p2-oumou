/* 1- Afficher la liste des pays ou Simplon est présent. */
select * from pays;
+----+---------+----------+
| id | nom     | ville    |
+----+---------+----------+
|  1 | Senegal | Dakar    |
|  2 | Senegal | Rufisque |
|  3 | Mali    | Bamako   |
+----+---------+----------+


/*2- Afficher la liste des fabriques de la ville de Dakar.*/
select fabrique.nom from fabrique,pays where fabrique.id_pays=pays.id and ville='Dakar';
+---------------+
| nom           |
+---------------+
| Simplon Dakar |
+---------------+

/*3- Afficher la liste des pays qui ont au moins deux fabriques.*/
select pays.nom from pays, fabrique where pays.id=fabrique.id_pays;
+---------+
| nom     |
+---------+
| Senegal |
| Senegal |
+---------+

/*4- Afficher le nombre d'apprenants par fabrique.*/
select fabrique.nom, cohorte.nombre_apprenant from fabrique, apprenant, cohorte where fabrique.id=apprenant.id_fabrique and apprenant.id_fabrique=cohorte.id;
+---------------+------------------+
| nom           | nombre_apprenant |
+---------------+------------------+
| Simplon Dakar |               26 |
| Simplon Red   |               26 |
+---------------+------------------+

/*5- Afficher la liste des référentiels par fabrique.*/
select referentiel.nom_ref, fabrique.nom from referentiel, apprenant, fabrique where referentiel.id=apprenant.id_referentiel and apprenant.id_referentiel=fabrique.id;
+------------------+---------------+
| nom_ref          | nom           |
+------------------+---------------+
| Referent Digital | Simplon Dakar |
| Developpeur      | Simplon Red   |
+------------------+---------------+

/*6- Afficher la liste des apprenants qui ont au moins un contrat*/
 select apprenant.nom from apprenant, contrat where type_contrat is not null and apprenant.id=contrat.id_apprenant;
+-------+
| nom   |
+-------+
| SADIO |
| DIOP  |
+-------+


/*7- Ecrire l'ordre SQL qui permet d'ajouter un nouveau champ "ouverte" à la table cohorte de type booléen.*/
alter table cohorte add ouverte boolean;

/*8-  Modifier le type du champ sexe en char (1).*/
alter table apprenant modify sexe char (1);