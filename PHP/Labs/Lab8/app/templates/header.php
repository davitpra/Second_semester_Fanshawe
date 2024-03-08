<?php ob_start() ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css" />
    <title>
        <?php

        if (defined('TITLE')) {
            echo TITLE;
        } else {
            echo "j_pradogarrido's Pizzaaaa";
        }
        ?>
    </title>
</head>

<body>
    <header class="siteHeader">
        <section>
            <h1 class="logo">
                <a href="index.php">
                    <img src="images/logo.png" alt="Pizza Logo" />j_pradogarrido's Pizza
                </a>
            </h1>
            <nav class="mainNav">
                <ul>
                    <li><a href="order.php">Place Order</a></li>
                    <li><a href="#">Menu</a></li>
                    <li><a href="../specials.php">Specials</a></li>
                    <li><a href="../login.php">Register</a></li>
                </ul>
        </section>
    </header>

    <section class="siteContent">