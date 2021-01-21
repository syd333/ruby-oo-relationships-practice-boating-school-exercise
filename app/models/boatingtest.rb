class BoatingTest

@@all = []

def self.all
    @@all
end

attr_accessor :status
attr_reader :testname, :instructor, :student

    def initialize(testname, status, instructor, student)
        @testname = testname
        @status = status
        @instructor = instructor
        @student = student
        @@all << self 
    end

end
