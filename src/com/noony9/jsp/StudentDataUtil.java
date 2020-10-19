package com.noony9.jsp;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

	public static List<Student> getStudents() {
		
		// create an empty list
		List<Student> students = new ArrayList<>();
		
		// add sample data
		students.add(new Student("Susan", "Public", "susan@email.com", false));
		students.add(new Student("Arnie", "Public", "arnie@email.com", true));
		students.add(new Student("Jerry", "Public", "jerry@email.com", true));
		students.add(new Student("Jane", "Public", "jane@email.com", false));
		
		// return the list
		return students;
	}
}
