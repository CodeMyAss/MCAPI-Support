/* HTML Code:
<span id="players"></span>

Little example:
<p>Players Online: <span id="players"></span></p>


How to use this in Enjin:
Upload your file into your files section of your site.
Create a html module
with the following code (between the lines)

------------------------------------------------------------------------------------------

<script src="http://files.enjin.com/######/js/ServerStatus.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>

<span id="players"></span>
<script>
	ServerStatus('us.mineplex.com');
</script>

------------------------------------------------------------------------------------------

Thats all of the code.

Writen by Yive @ mcapi.ca :)
*/
function ServerStatus(serverip){
	$.getJSON('http://mcapi.ca/v2/query/players/?ip=' + serverip, function(json){
		if (json.status !== true) {
			$('#players').html("0");
		} else {
			$("#players").html(json.players.online);	
		}
	});
}