if Rails.env.development?
  admin_user = User.create(email: "abhishek@edhub.com", first_name: "Abhishek", last_name: "Pal",
    password: "password", password_confirmation: "password", user_role: "admin")

  teacher = User.create(email: "teacher@edhub.com", first_name: "Teacher", last_name: "Test", password: "password",
    password_confirmation: "password", user_role: "teacher")

  student = User.create(email: "student@edhub.com", first_name: "Student", last_name: "Test", password: "password",
    password_confirmation: "password", user_role: "student")
end
