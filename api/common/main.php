<?php
require_once "./db.php";

$moviearray = array();

if (isset($_GET['id'])){
    $sql = "SELECT
    m.name,
    m.release_date,
    m.description,
    m.poster, 
    m.language, 
    m.captions, 
    m.duration, 
    m.trailer,
    GROUP_CONCAT(DISTINCT a.full_name ORDER BY a.full_name ASC SEPARATOR ', ') AS actors,
    GROUP_CONCAT(DISTINCT d.full_name ORDER BY d.full_name ASC SEPARATOR ', ') AS directors,
    GROUP_CONCAT(DISTINCT g.name ORDER BY g.name ASC) AS genres,
    GROUP_CONCAT(DISTINCT r.name ORDER BY r.name ASC) AS rating
FROM
    movies m
JOIN 
    movie_actor ma ON m.id = ma.movie_id
JOIN 
    actors a ON ma.actor_id = a.id
        
JOIN 
    movie_director md ON m.id = md.movie_id
JOIN 
    directors d ON md.director_id = d.id

JOIN 
    movie_genre mg ON m.id = mg.movie_id
JOIN 
    genres g ON mg.genre_id = g.id

JOIN 
    movie_rating mr ON m.id = mr.movie_id
JOIN 
    rating r ON mr.rating_id = r.id
WHERE
    m.id=".$_GET['id']."
GROUP BY
    m.id, m.name, m.release_date, m.description, m.poster, m.language, m.captions, m.duration, m.trailer;
";
} else {
    $sql = "SELECT id, name, poster, release_date FROM movies";
}
$result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));
while($row =mysqli_fetch_assoc($result)) {
    $moviearray[] = $row;
}
echo json_encode($moviearray);
