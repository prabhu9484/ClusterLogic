<html>
<head>




</head>
<body>

<!--Welcome <?php echo $_POST["id"]; ?>!<br />
You <?php echo $_POST["name"]; ?><br/>
You <?php echo $_POST["professional"]; ?><br/>
You <?php echo $_POST["organisation"]; ?><br/>
You <?php echo $_POST["url"]; ?><br/>
You <?php echo $_POST["www"]; ?><br/-->


<?php

$user = "joomla";
$pass = "joomla";
$db = "joomla4";

$link = mysql_connect("localhost",$user,$pass);

if(!$link)

die ("MySQL Connection Failure");
else
print "Successfully inserted into Directory Lisiting";



if(!mysql_select_db($db,$link))

die("Database Connection Failure");

else

print " of Enterprises and Professionals";

$q1 = "INSERT INTO cSocialAIADA (id, name, professional, organisation, url, www) VALUES('$_POST[id]', '$_POST[name]', '$_POST[professional]', '$_POST[organisation]', '$_POST[url]', '$_POST[www]')";

$r1 = mysql_query($q1);

?>


</body>
</html>
