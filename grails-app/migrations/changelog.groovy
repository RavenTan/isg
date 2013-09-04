databaseChangeLog = {

	changeSet(author: "Ivan (generated)", id: "1375122541475-1") {
		createTable(tableName: "accolade") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "accoladePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "game", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-2") {
		createTable(tableName: "accolade_events") {
			column(name: "accolade_id", type: "bigint")

			column(name: "events_string", type: "varchar(255)")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-3") {
		createTable(tableName: "carousel_item") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "carousel_itemPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "heading", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "picture", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "subheading", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "url", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-4") {
		createTable(tableName: "contact") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "contactPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "address", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "map_picture", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "map_url", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "telephone", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-5") {
		createTable(tableName: "division") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "divisionPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "picture", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-6") {
		createTable(tableName: "division_team") {
			column(name: "division_teams_id", type: "bigint")

			column(name: "team_id", type: "bigint")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-7") {
		createTable(tableName: "event") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "eventPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "date", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "game", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-8") {
		createTable(tableName: "footer") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "footerPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "about", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "contact", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "management", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "privacy", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "terms", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "users", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-9") {
		createTable(tableName: "home") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "homePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "advertisement_mid", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "advertisement_mid_url", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "advertisement_side", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "advertisement_side_url", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "background", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "logo", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "top_sponsor1", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "top_sponsor1url", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "top_sponsor2", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "top_sponsor2url", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-10") {
		createTable(tableName: "home_carousel_item") {
			column(name: "home_carousel_items_id", type: "bigint")

			column(name: "carousel_item_id", type: "bigint")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-11") {
		createTable(tableName: "home_sponsor") {
			column(name: "home_sponsors_id", type: "bigint")

			column(name: "sponsor_id", type: "bigint")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-12") {
		createTable(tableName: "management") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "managementPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "email", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "picture", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "position", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-13") {
		createTable(tableName: "media_event") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "media_eventPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "date", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-14") {
		createTable(tableName: "media_event_pictures") {
			column(name: "media_event_id", type: "bigint")

			column(name: "pictures_string", type: "varchar(255)")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-15") {
		createTable(tableName: "news") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "newsPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-16") {
		createTable(tableName: "player") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "playerPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "dob", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "nationality", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "nickname", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "picture", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "realname", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "role", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-17") {
		createTable(tableName: "player_accolade") {
			column(name: "player_accolades_id", type: "bigint")

			column(name: "accolade_id", type: "bigint")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-18") {
		createTable(tableName: "player_games") {
			column(name: "player_id", type: "bigint")

			column(name: "games_string", type: "varchar(255)")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-19") {
		createTable(tableName: "sponsor") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "sponsorPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "img_url", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "url", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-20") {
		createTable(tableName: "team") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "teamPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-21") {
		createTable(tableName: "team_player") {
			column(name: "team_players_id", type: "bigint")

			column(name: "player_id", type: "bigint")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-22") {
		addForeignKeyConstraint(baseColumnNames: "accolade_id", baseTableName: "accolade_events", constraintName: "FK92F3A7F4BD64E5AB", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "accolade", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-23") {
		addForeignKeyConstraint(baseColumnNames: "division_teams_id", baseTableName: "division_team", constraintName: "FKDA82EAF9DC222B4", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "division", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-24") {
		addForeignKeyConstraint(baseColumnNames: "team_id", baseTableName: "division_team", constraintName: "FKDA82EAFBB71538B", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "team", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-25") {
		addForeignKeyConstraint(baseColumnNames: "carousel_item_id", baseTableName: "home_carousel_item", constraintName: "FK8F8B0332B50E5C6C", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "carousel_item", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-26") {
		addForeignKeyConstraint(baseColumnNames: "home_carousel_items_id", baseTableName: "home_carousel_item", constraintName: "FK8F8B0332107DA269", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "home", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-27") {
		addForeignKeyConstraint(baseColumnNames: "home_sponsors_id", baseTableName: "home_sponsor", constraintName: "FK47049FBA145BAF1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "home", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-28") {
		addForeignKeyConstraint(baseColumnNames: "sponsor_id", baseTableName: "home_sponsor", constraintName: "FK47049FBA37EAD6E9", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "sponsor", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-29") {
		addForeignKeyConstraint(baseColumnNames: "media_event_id", baseTableName: "media_event_pictures", constraintName: "FKEE308F58988A622", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "media_event", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-30") {
		addForeignKeyConstraint(baseColumnNames: "accolade_id", baseTableName: "player_accolade", constraintName: "FKA919B562BD64E5AB", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "accolade", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-31") {
		addForeignKeyConstraint(baseColumnNames: "player_accolades_id", baseTableName: "player_accolade", constraintName: "FKA919B562194A6A5B", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "player", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-32") {
		addForeignKeyConstraint(baseColumnNames: "player_id", baseTableName: "player_games", constraintName: "FK4B2C3E338E35CCB", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "player", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-33") {
		addForeignKeyConstraint(baseColumnNames: "player_id", baseTableName: "team_player", constraintName: "FKA817630338E35CCB", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "player", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-34") {
		addForeignKeyConstraint(baseColumnNames: "team_players_id", baseTableName: "team_player", constraintName: "FKA81763034948FF38", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "team", referencesUniqueColumn: "false")
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-35") {
		createIndex(indexName: "FK92F3A7F4BD64E5AB", tableName: "accolade_events") {
			column(name: "accolade_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-36") {
		createIndex(indexName: "FKDA82EAF9DC222B4", tableName: "division_team") {
			column(name: "division_teams_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-37") {
		createIndex(indexName: "FKDA82EAFBB71538B", tableName: "division_team") {
			column(name: "team_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-38") {
		createIndex(indexName: "FK8F8B0332107DA269", tableName: "home_carousel_item") {
			column(name: "home_carousel_items_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-39") {
		createIndex(indexName: "FK8F8B0332B50E5C6C", tableName: "home_carousel_item") {
			column(name: "carousel_item_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-40") {
		createIndex(indexName: "FK47049FBA145BAF1", tableName: "home_sponsor") {
			column(name: "home_sponsors_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-41") {
		createIndex(indexName: "FK47049FBA37EAD6E9", tableName: "home_sponsor") {
			column(name: "sponsor_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-42") {
		createIndex(indexName: "FKEE308F58988A622", tableName: "media_event_pictures") {
			column(name: "media_event_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-43") {
		createIndex(indexName: "FKA919B562194A6A5B", tableName: "player_accolade") {
			column(name: "player_accolades_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-44") {
		createIndex(indexName: "FKA919B562BD64E5AB", tableName: "player_accolade") {
			column(name: "accolade_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-45") {
		createIndex(indexName: "FK4B2C3E338E35CCB", tableName: "player_games") {
			column(name: "player_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-46") {
		createIndex(indexName: "FKA817630338E35CCB", tableName: "team_player") {
			column(name: "player_id")
		}
	}

	changeSet(author: "Ivan (generated)", id: "1375122541475-47") {
		createIndex(indexName: "FKA81763034948FF38", tableName: "team_player") {
			column(name: "team_players_id")
		}
	}


	include file: 'changelog-1.1.groovy'

	include file: 'changelog-1.2.groovy'

	include file: 'changelog-1.3.groovy'

	include file: 'changelog-1.4.groovy'
}
