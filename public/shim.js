
	listView = $("#listview").data("kendoListView");
	$("#listview")
		// edit button click
		.delegate(".k-edit-button", "click", function(e) {
			listView.edit($(this).closest(".track-info"));	
			e.preventDefault();

		// save button click
		}).delegate(".k-update-button", "click", function(e) {
			listView.save();
			e.preventDefault();

		// delete button click
		}).delegate(".k-delete-button", "click", function(e) {
			var srsly = confirm("SRSLY?");
			if (srsly) {
				listView.remove($(this).closest(".track-info"));
	        }

			e.preventDefault();
	
		}).delegate(".k-cancel-button", "click", function(e) {
			listView.cancel();
		});
