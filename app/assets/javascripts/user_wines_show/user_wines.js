$(document).ready(function() {

// handles the add wine form appearing in user_wines/show

		var form = $('#newNoteForm');

		var button = $('#addNoteButton');

		button.on('click', function(){
			form.toggle('slow');
		})

});