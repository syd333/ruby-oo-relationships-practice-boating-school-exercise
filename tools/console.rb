require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# spongebob = Student.new("Spongebob")
# patrick= Student.new("Patrick")

# puff= Instructor.new("Ms.Puff")
# krabs= Instructor.new("Mr.Krabs")

# no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

student1 = Student.new("syd")
student2 = Student.new("hector")

instructor1 = Instructor.new("lantz")
instructor2 = Instructor.new("jasper")

bt1 = student1.add_boating_test("docking", "passed", instructor1)
bt2 = student1.add_boating_test("knots", "failed", instructor2)

# # BoatingTest.new(self, boating_testname, test_status, instructor)
# test1 = BoatingTest.new(student1, "docking", "pending", instructor1)
# add_boating_test("sin", "ropes", "complete", "matt")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be avai)lable to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

