class Instructor

    @@all =[]

    def self.all 
        @@all 
    end

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self 
    end

    def passed_students
        # should return an array of students who passed a boating test with this specific instructor.
       passed = BoatingTest.all.select {|bt| bt.status == 'passed'}
       stu = passed.map {|s| s.student}
    end

    def pass_students(student, testname)
    tests = BoatingTest.all.find {|bt| bt.student == student && bt.testname == testname}
    if tests
        tests.status = 'passed'
    else
        tests = BoatingTest.new(testname, 'passed', self, student)
    end
end

def fail_students(student, testname)
    tests = BoatingTest.all.find {|bt| bt.student == student && bt.testname == testname}
    if tests
        tests.status = 'failed'
    else
        tests = BoatingTest.new(testname, 'failed', self, student)
    end
end    

def all_students
    tests = BoatingTest.all.select {|bt| bt.instructor} #gives us whole boatingtest object
    tests.map {|bt| bt.student}.uniq
end

end
