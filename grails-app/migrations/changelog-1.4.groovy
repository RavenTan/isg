databaseChangeLog = {

	changeSet(author: "Ivan (generated)", id: "1376630799606-1") {
		addColumn(tableName: "event") {
			column(name: "end", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1376630799606-2") {
		addColumn(tableName: "event") {
			column(name: "location", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1376630799606-3") {
		addColumn(tableName: "event") {
			column(name: "start", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1376630799606-4") {
		dropColumn(columnName: "date", tableName: "event")
	}

	changeSet(author: "Ivan (generated)", id: "1376630799606-5") {
		dropColumn(columnName: "game", tableName: "event")
	}
}
