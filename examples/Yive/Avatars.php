<?php
$friends = array(
'notch',
'yive',
'jeb_'
);
foreach ($friends as $friend) {
        echo "<img src='http://mcapi.ca/v2/avatar/?player=" . $friend . "' style='margin: 2px;  border-style:solid; border-color:#000000;'/>";
	}
?>