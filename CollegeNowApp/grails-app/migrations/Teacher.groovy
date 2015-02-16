databaseChangeLog = {

	changeSet(author: "Bojangles (generated)", id: "1423968465478-1") {
		createTable(tableName: "book") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "bookPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Bojangles (generated)", id: "1423968465478-2") {
		createTable(tableName: "course") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "coursePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Bojangles (generated)", id: "1423968465478-3") {
		createTable(tableName: "liaison") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "liaisonPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Bojangles (generated)", id: "1423968465478-4") {
		createTable(tableName: "school") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "schoolPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Bojangles (generated)", id: "1423968465478-5") {
		createTable(tableName: "student") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "studentPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Bojangles (generated)", id: "1423968465478-6") {
		createTable(tableName: "teacher") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "teacherPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "address", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "discipline", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "email_address", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "first_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "last_meeting", type: "timestamp") {
				constraints(nullable: "false")
			}

			column(name: "last_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "next_meeting", type: "timestamp") {
				constraints(nullable: "false")
			}

			column(name: "phone_number", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "social_security_number", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "teacherid", type: "integer") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Bojangles (generated)", id: "1423968465478-7") {
		createTable(tableName: "teacher_school") {
			column(name: "teacher_schools_id", type: "bigint")

			column(name: "school_id", type: "bigint")
		}
	}

	changeSet(author: "Bojangles (generated)", id: "1423968465478-8") {
		addForeignKeyConstraint(baseColumnNames: "school_id", baseTableName: "teacher_school", constraintName: "FK_9djuvwdcqhrxdw7snx4blxjic", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "school", referencesUniqueColumn: "false")
	}

	changeSet(author: "Bojangles (generated)", id: "1423968465478-9") {
		addForeignKeyConstraint(baseColumnNames: "teacher_schools_id", baseTableName: "teacher_school", constraintName: "FK_sfrb39h8gaww5sahwfkwvpijx", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "teacher", referencesUniqueColumn: "false")
	}
}
