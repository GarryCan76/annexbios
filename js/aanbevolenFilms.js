async function logMovies(){
    const response = await fetch("https://annexbios.gluwebsite.nl/api/main.php");
    const movies = await response.json();
    console.log(movies)

    movies.forEach(movie=>{
        console.log(movie)
        let recommendedMoviesDiv = document.getElementById('aanbevolen_films_div');
        let recommendedMovies = document.createElement('a');
        let recommendedMoviesImg = document.createElement('img');
        let h2 = document.createElement('h2');
        let starRating = document.createElement('div');
        let h3 = document.createElement('h3');
        let AboutMovie = document.createElement('p');

        //assigning classes
        recommendedMovies.classList.add("aanbevolen_films");
        recommendedMovies.href = "./vestegingen.php?id="+movie.id;
        recommendedMoviesImg.classList.add("foto_aanbevolen_film");
        h2.classList.add("title_film");
        starRating.classList.add("sterre_rating");
        h3.classList.add("date_filmuitgekomen");
        AboutMovie.classList.add("over_de_film");
        //adding attributes
        recommendedMoviesImg.src = ""+movie.poster;
        h2.innerHTML = movie.name;
        h3.innerHTML = movie.release_date;
        AboutMovie.innerHTML = movie.description;

        // appending
        recommendedMovies.appendChild(recommendedMoviesImg);
        recommendedMovies.appendChild(h2);
        // adding stars
        for (let i = 0; i < 5; i++){
            let span = document.createElement('span');
            span.classList.add("ster");
            span.innerHTML = "X";
            starRating.appendChild(span);
            recommendedMovies.appendChild(starRating);

        }
        recommendedMovies.appendChild(h3);
        recommendedMovies.appendChild(AboutMovie);

        recommendedMoviesDiv.appendChild(recommendedMovies);

    });


    // for (let i = 0; i < movies.length; i++){
    //     let p = document.createElement('');
    //     p.addEventListener("click", async function ok(){
    //         console.log(movies[i].id)
    //         // const response = await fetch("./common/main.php?id="+ movies[i].id +"")
    //         const response = await fetch("main.php?id="+movies[i].id+"")
    //         const movieDetail = await response.json();
    //         console.log(movieDetail)
    //     });
    //     p.innerHTML = movies[i].name;
    //     movielist.appendChild(p)
    // }


}
logMovies()