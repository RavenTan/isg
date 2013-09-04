databaseChangeLog = {

	changeSet(author: "Ivan (generated)", id: "1375838946511-1") {
		addColumn(tableName: "feature") {
			column(name: "date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375838946511-2") {
		addColumn(tableName: "news") {
			column(name: "date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}
}
