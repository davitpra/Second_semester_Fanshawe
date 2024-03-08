</section>

<footer class="siteFooter">
    <p>&copy; 2024 j_pradogarrido's Pizza. All rights reserved</p>
    <?php
    date_default_timezone_set('America/Toronto');
    echo '<p>' . date('l F j, Y') . '</p>';
    ?>
</footer>
</body>

</html>
<?php ob_end_flush() ?>