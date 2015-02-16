package collegenowapp

class Teacher {
		int TeacherID
		String Discipline
		String FirstName
		String LastName
		String SocialSecurityNumber
		String PhoneNumber
		String EmailAddress
		String Address
		Date LastMeeting
		Date NextMeeting 
		static belongsTo = School
		static hasMany = [schools:School]
    static constraints = {
		
    }
}
