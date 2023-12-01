# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

=begin
ClientWorkout.destroy_all
ClientWorkout.create!([{
  client_name: "",
  trainer: "",
  duration_mins: ,
  date_of_workout: "",
  paid_amount: 
}])
=end

ClientWorkout.destroy_all
ClientWorkout.create!([{
  client_name: "Kirk Stigwood",
  trainer: "Clint",
  duration_mins: 60,
  date_of_workout: "2009-10-05",
  paid_amount: 50
},
{
  client_name: "Lenny Goldberg",
  trainer: "Clint",
  duration_mins: 30,
  date_of_workout: "2009-07-14",
  paid_amount: 25
},
{
  client_name: "Lenny Goldberg",
  trainer: "Brad",
  duration_mins: 30,
  date_of_workout: "2009-07-19",
  paid_amount: 25
},
{
  client_name: "Lenny Goldberg",
  trainer: "Sven",
  duration_mins: 90,
  date_of_workout: "2009-08-02",
  paid_amount: 75
},
{
  client_name: "Lenny Goldberg",
  trainer: "Marshall",
  duration_mins: 15,
  date_of_workout: "2009-09-29",
  paid_amount: 15
},
{
  client_name: "Lenny Goldberg",
  trainer: "Clint",
  duration_mins: 30,
  date_of_workout: "2009-10-01",
  paid_amount: 25
},
{
  client_name: "Lenny Goldberg",
  trainer: "Sara",
  duration_mins: 30,
  date_of_workout: "2009-10-05",
  paid_amount: 25
}
])
p "Created #{ClientWorkout.count} client workouts"
