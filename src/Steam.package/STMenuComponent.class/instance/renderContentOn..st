rendering
renderContentOn: html
	html tbsListGroup: [
		appComponent menuEntries do: [ :entry | self renderMenuEntryLink: entry on: html ] ]