class Student

@@all = []

def self.all
    @@all
end

def self.find_student(first_name)
    @@all.find {|student| student.first_name == first_name}
end

attr_reader :first_name

def initialize(first_name)
    @first_name = first_name
    @@all << self
end

def add_boating_test(testname, status, instructor)
    BoatingTest.new(testname, status, instructor, self)
end

def all_instructors
#should return an array of instructors with whom this specific student took a boating test.
tests = BoatingTest.all.select {|bt| bt.student} #gives us whole boatingtest object
tests.map {|bt| bt.instructor}
end

def grade_percentage
tests = BoatingTest.all.select {|bt| bt.student}
total = tests.count
passed = tests.select {|test| test.status == 'passed'}.count
(passed.to_f / total.to_f) * 100
end

end
