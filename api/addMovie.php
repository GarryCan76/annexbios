<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div id="">
    <form method="post">
        <label for="movieTitle">Titel</label>
        <input id="movieTitle" name="movieTitle" type="text" required>

        <label for="movieLanguage">Taal</label>
        <input id="movieLanguage" name="movieLanguage" type="text" required>

        <label for="movieCaptions">Ondertiteling</label>
        <input id="movieCaptions" name="movieCaptions" type="text" required>

        <label for="movieReleaseDate">Releasedatum</label>
        <input id="movieReleaseDate" name="movieReleaseDate" type="text" required>

        <label for="movieDuration">Speelduur</label>
        <input id="movieDuration" name="movieDuration" type="text" required>

        <label for="movieTrailer">Trailer</label>
        <input id="movieTrailer" name="movieTrailer" type="text" required>

        <label for="moviePoster">Poster</label>
        <input id="moviePoster" name="moviePoster" type="text" required>

        <label for="movieDescription">Onderschrijving</label>
        <input id="movieDescription" name="movieDescription" type="text" required>

        <input type="submit" onclick="answersJson()" name="submit">
        <!--        div where the added answers will be listed-->
        <div id="questionAnswers"></div>
    </form>
</div>
</body>
<script>

</script>
</html>