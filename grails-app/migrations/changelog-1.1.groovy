databaseChangeLog = {

	changeSet(author: "Ivan (generated)", id: "1375555064449-1") {
		createTable(tableName: "team_accolades") {
			column(name: "team_id", type: "bigint")

			column(name: "accolades_string", type: "varchar(255)")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375555064449-2") {
		addForeignKeyConstraint(baseColumnNames: "team_id", baseTableName: "team_accolades", constraintName: "FKFBB673CDBB71538B", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "team", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375555064449-3") {
		createIndex(indexName: "FKFBB673CDBB71538B", tableName: "team_accolades") {
			column(name: "team_id")
		}
	}
}
