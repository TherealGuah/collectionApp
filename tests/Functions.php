<?php

require_once '../functions.php';

use PHPUnit\Framework\TestCase;

class Functions extends TestCase
{

    // Success Tests
    public function test_addItemToHTML_GivenDataReturnsHTML() {

        // Arrange
        $input = [['id' => '1',
                'title' => 'The devastation of Baal',
                'image_link' => 'https://www.games-workshop.com/resources/catalog/product/920x950/60040181837_DevastationofBaalLtdEd01.jpg',
                'description' => 'Baal is besieged! The alien horror of Hive Fleet Leviathan has reached the Blood Angels home world, and their entire existence is under threat. As the sons of Sanguinius gather, the battle for the fate of their bloodline begins...',
                'name' => 'Guy Haley',
                'category' => 'Science Fiction']];

        $expected = '<div class = "itemContainer">'
                        . '<h2 class="title">The devastation of Baal</h2>'
                        . '<p class="author">Author: Guy Haley</p>'
                        . '<div class="image">'
                            . '<img src="https://www.games-workshop.com/resources/catalog/product/920x950/60040181837_DevastationofBaalLtdEd01.jpg" alt="book cover example">'
                        . '</div>'
                        . '<div class="about">'
                            . '<h3>About:</h3>'
                            . '<p>Baal is besieged! The alien horror of Hive Fleet Leviathan has reached the Blood Angels home world, and their entire existence is under threat. As the sons of Sanguinius gather, the battle for the fate of their bloodline begins...</p>'
                        . '</div>'
                        . '<p class="category">Category: Science Fiction</p>'
                    . '</div>';

        // Act
        $actual = addItemToHTML($input);

        // Assert
        $this->assertEquals($expected, $actual);
    }

    // Failure tests
    public function test_addItemToHTML_GivenMissingDataReturnsHTML() {

        // Arrange
        $input = [['id' => '2',
            'title' => NULL,
            'image_link' => 'https://www.games-workshop.com/resources/catalog/product/920x950/60040181837_DevastationofBaalLtdEd01.jpg',
            'description' => 'Baal is besieged! The alien horror of Hive Fleet Leviathan has reached the Blood Angels home world, and their entire existence is under threat. As the sons of Sanguinius gather, the battle for the fate of their bloodline begins...',
            'name' => 'Guy Haley',
            'category' => 'Science Fiction']];

        $expected = '';

        // Act
        $actual = addItemToHTML($input);

        // Assert
        $this->assertEquals($expected, $actual);
    }

    // Malformed tests
    public function test_Malformed_AddItemToHTML_GivenStringThrowsError()
    {
        // Arrange
        $input = 'WrongData';
        $this->expectException(TypeError::class);

        // Act
        addItemToHTML($input);
    }

}