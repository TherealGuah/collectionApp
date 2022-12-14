<?php

/**
 * connects to the database and sets the attribute
 *
 * @param string $dbName, the name of the db to connect to
 * @return PDO, the db connection
 */
function connect_to_db(string $host, string $dbName, string $username, string $password): PDO
{
    $db = new PDO('mysql:host=' . $host . ';dbname=' . $dbName, $username, $password);
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    return $db;
}

/**
 * using the db connection provided select the items from the db and return as an associative array
 *
 * @param PDO $db, the database to extract from
 * @return array, the associative array of the items
 */
function extract_from_db(PDO $db): array
{

    $query = $db->prepare('
    SELECT `books`.`id`, `books`.`title`, `books`.`image_link`, `books`.`description`,
		`authors`.`name`, `category`
    FROM `books`
    INNER JOIN `categories`
	    ON `books`.`category_id`=`categories`.`id`
	INNER JOIN `authors`
	    ON `books`.`author_id`=`authors`.`id`;
    ');

    $query->execute();
    return $query->fetchAll();
}

/**
 * takes items from an array and returns the values within HTML
 *
 * @param array $dataFromQuery, array of data from database
 * @return string, return an string of html
 */
function addItemToHTML(array $dataFromQuery): string
{
    $result = '';
    foreach ($dataFromQuery as $itemFromQuery) {
        if (
            (isset($itemFromQuery['id'])) &&
            (isset($itemFromQuery['title'])) &&
            (isset($itemFromQuery['image_link'])) &&
            (isset($itemFromQuery['description'])) &&
            (isset($itemFromQuery['name']))
        ) {
            $result .= '<div class = "itemContainer">'
                            . '<h2 class="title">' . $itemFromQuery['title'] . '</h2>'
                            . '<p class="author">Author: ' . $itemFromQuery['name'] . '</p>'
                            . '<div class="image">'
                                . '<img src="' . $itemFromQuery['image_link'] . '" alt="book cover example">'
                            . '</div>'
                            . '<div class="about">'
                                . '<h3>About:</h3>'
                                . '<p>' . $itemFromQuery['description'] . '</p>'
                            . '</div>'
                            . '<p class="category">Category: ' . $itemFromQuery['category'] . '</p>'
                        . '</div>';
        }
    }
    return $result;
}
