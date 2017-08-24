require "./employee"
require "./manager"
require "./intern"


employee1 = Actualize::Employee.new(
                                    first_name: "Majora", 
                                    last_name: "Carter", 
                                    salary: 80000, 
                                    active: true
                                    )
employee2 = Actualize::Employee.new(
                                    first_name: "Danilo", 
                                    last_name: "Campos", 
                                    salary: 70000, 
                                    active: true
                                    )

manager = Actualize::Manager.new(
                                  first_name: "Saron", 
                                  last_name: "Yitbarek", 
                                  salary: 100000, 
                                  active: true, 
                                  employees: [employee1, employee2]
                                  )


intern = Actualize::Intern.new(
                                first_name: "Jimmy",
                                last_name: "Olsen",
                                salary: 30000,
                                active: true
                                )

intern.send_report
p employee1
manager.give_all_raises
p employee1
manager.fire_all_employees
p employee1