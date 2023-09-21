<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
</head>
<body>
<div id="movielist">
    <div></div>
    <div></div>
    <div></div>
    <div></div>
</div>
</body>




<script>
    async function logMovies(){
        const response = await fetch("main.php");
        const movies = await response.json();
        console.log(movies)
        let movielist = document.getElementById('movielist')
        for (let i = 0; i < movies.length; i++){
            let p = document.createElement('p');
            p.addEventListener("click", async function ok(){
                console.log(movies[i].id)
                // const response = await fetch("./common/main.php?id="+ movies[i].id +"")
                const response = await fetch("main.php?id="+movies[i].id+"")
                const movieDetail = await response.json();
                console.log(movieDetail)
            });
            p.innerHTML = movies[i].name;
            movielist.appendChild(p)
        }
    }
    logMovies()
</script>
</html>