f1 = Faculty.create :name => "Faculty of Engineering"
f2 = Faculty.create :name => "Faculty of Foreign Languages"
f3 = Faculty.create :name => "Faculty of Science"

d1 = f1.departments.create :name => "Department of Information Technology"
d2 = f1.departments.create :name => "Department of Civil Engineering"
d3 = f1.departments.create :name => "Department of Industrial Engineering"

d4 = f2.departments.create :name => "Linguistics Department"
d5 = f2.departments.create :name => "Italian Department"
d6 = f2.departments.create :name => "English Department"

d7 = f3.departments.create :name => "Department of Computer Science"
d8 = f3.departments.create :name => "Department of Chemistry"
d9 = f3.departments.create :name => "Department of Physics"

r1 = Room.create :name => "B213"
r2 = Room.create :name => "A117"
r3 = Room.create :name => "B205"

e1 = Employee.new :name => "Simo Tallinna", :email => "simo.tallinna@imagina.ry"
e1.department = d9
e1.room = r2
e1.save

e2 = Employee.new :name => "Enrico Pioppi", :email => "enrico.pioppi@imagina.ry"
e2.department = d5
e2.room = r1
e2.save

e3 = Employee.new :name => "Taina Mäyrä", :email => "taina.mayra@imagina.ry"
e3.department = d1
e3.room = r1
e3.save