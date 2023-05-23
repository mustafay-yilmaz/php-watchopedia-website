<?php
        
        if( isset($_GET['carpan']) )
        {
            $carpan=$_GET['carpan'];
            for($i=1;$i<=9;$i++){
                echo "$carpan x $i=" . $carpan*$i . "<br />";
            }
        exit();
        }
        
        ?>

<html>
    <head>
        <title>carpan.php</title>
    </head>
    <body>
    <form action="deneme.php" method="GET">
    Sayı : <input type="text" name="carpan" /> <br />
    <input type="submit" value="Gönder"/>
    </form>
        
    </body>
</html>

