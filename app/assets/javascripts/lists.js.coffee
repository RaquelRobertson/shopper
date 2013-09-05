$( ->
	$(".entry_bought").on("change", (e) ->
		$(this).parents("form").submit()
	)
)
