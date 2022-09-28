<?php
require_once('functions.php');
?>

<!DOCTYPE html>

<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Pedro's Book Collection</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body>
    <h1>My Books Collection</h1>
    <p>Hi my name is Pedro and welcome to my book collection! All the following items are part of the books I've bought and read in the past couple of years.I hope they incite you to do some reading of yours also!</p>
    <?php

        $db = connect_to_db('booksDB');

        $booksByAuthor = extract_from_db($db);

        echo addItemToHTML($booksByAuthor);
    ?>

    </body>

</html>