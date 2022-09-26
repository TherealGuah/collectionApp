/*
    Base DB schema
 */

CREATE TABLE `authors` (
                           `id` int PRIMARY KEY,
                           `name` varcharacter(255) UNIQUE NOT NULL,
                           `about` varcharacter(255)
);

CREATE TABLE `categories` (
                              `id` int PRIMARY KEY,
                              `category` varcharacter(255) UNIQUE NOT NULL
);

CREATE TABLE `books` (
                         `id` int PRIMARY KEY,
                         `title` varcharacter(255) NOT NULL,
                         `description` varcharacter(255),
                         `image_link` varcharacter(255),
                         `author_id` int,
                         FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`)
);

CREATE TABLE `books_categories` (
                                    `category_id` int,
                                    `book_id` int,
                                    FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
                                    FOREIGN KEY (`book_id`) REFERENCES `books` (`id`)
);

/*
    Insertions
*/

