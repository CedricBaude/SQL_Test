# REQUETE SQL



## Titres et dates de sorties des films du plus récent au plus ancien:

	SELECT title, release_date FROM movies ORDER BY release_date DESC


## Noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique:

	SELECT first_name, last_name, (YEAR(CURRENT_TIMESTAMP)) - YEAR (date_of_birth) AS age FROM actors WHERE YEAR (date_of_birth) < 1992 ORDER BY last_name, first_name ASC


## Liste des acteurs pour un film donné:

	SELECT actors.first_name, actors.last_name FROM movies_actors INNER JOIN movies ON movies_actors.id_movie = movies.id_movie INNER JOIN actors ON movies_actors.id_acteur = actors.id_actor WHERE movies.title = 'Iron Man'


## Liste des films pour un acteur donné:

	SELECT movies.title FROM movies_actors INNER JOIN movies ON movies_actors.id_movie = movies.id_movie INNER JOIN actors ON movies_actors.id_acteur = actors.id_actor WHERE actors.last_name = 'Downey'


## Ajouter un film

	INSERT INTO movies (`title`, `release_date`, `duration`, `phase`, `synopsis`) VALUES ('Random film', '2022-05-04', '90', '6', 'Pas de synopsis disponible.');


## Ajouter un acteur

	INSERT INTO actors (`last_name`, `first_name`, `date_of_birth`) VALUES ('Kingsley', 'Ben', '1943-12-31');


## Modifier un film

	UPDATE movies SET duration = '123' WHERE movies.title = 'Iron Man';



## Supprimer un acteur

	DELETE FROM actors WHERE last_name = 'Kingsley'


## Requête pour afficher les 3 derniers acteurs ajoutés

	SELECT * FROM actors ORDER BY id_actor DESC LIMIT 0,3

Correction par Adrien : 

Soucis d'apostrophe (') à la place de backquotes (``).

Correction par Flo :

Check ;)