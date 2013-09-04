databaseChangeLog = {

	changeSet(author: "Ivan (generated)", id: "1375828624511-1") {
		createTable(tableName: "feature") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "featurePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "content", type: "longtext") {
				constraints(nullable: "false")
			}

			column(name: "heading", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "picture", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "picture_url", type: "longtext") {
				constraints(nullable: "false")
			}

			column(name: "subheading", type: "longtext") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-2") {
		addColumn(tableName: "news") {
			column(name: "content", type: "longtext") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-3") {
		addColumn(tableName: "news") {
			column(name: "heading", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-4") {
		addColumn(tableName: "news") {
			column(name: "picture", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-5") {
		addColumn(tableName: "news") {
			column(name: "picture_url", type: "longtext") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-6") {
		addColumn(tableName: "news") {
			column(name: "subheading", type: "longtext") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-7") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "subheading", tableName: "carousel_item")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-8") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "address", tableName: "contact")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-9") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "name", tableName: "event")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-10") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "about", tableName: "footer")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-11") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "contact", tableName: "footer")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-12") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "management", tableName: "footer")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-13") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "privacy", tableName: "footer")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-14") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "terms", tableName: "footer")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-15") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "users", tableName: "footer")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-16") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "advertisement_mid_url", tableName: "home")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-17") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "advertisement_side_url", tableName: "home")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-18") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "top_sponsor1url", tableName: "home")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-19") {
		addNotNullConstraint(columnDataType: "longtext", columnName: "top_sponsor2url", tableName: "home")
	}

	changeSet(author: "Ivan (generated)", id: "1375828624511-20") {
		addNotNullConstraint(columnDataType: "varchar(255)", columnName: "img_url", tableName: "sponsor")
	}
}
