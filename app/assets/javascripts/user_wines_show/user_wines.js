$(document).ready(function() {
// handles the add wine form appearing in user_wines/show
	var form = $('#newNoteForm');
	var button = $('#add_note_button');
	button.on('click', function(){
		form.toggle('slow');
	})
});