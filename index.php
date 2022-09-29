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
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body>

        <section class="presentation">
            <h1>My Books Collection</h1>
            <p>Books I've bought and read in the past couple of years.</p>
            <p>I hope they inspire you to read more!</p>
        </section>

        <div class="collectionWrapper">
            <?php
            $db = connect_to_db('booksDB');
            $booksByAuthor = extract_from_db($db);
            echo addItemToHTML($booksByAuthor);
            ?>
        </div>

    </body>

</html>