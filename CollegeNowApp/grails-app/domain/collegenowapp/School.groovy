package collegenowapp

class School {
		int SchoolID
		String Name
		String USD
		static belongsTo = Teacher
    static constraints = {
    }
}
