#!/bin/bash
# Create student record

create_student_record(){
echo "Enter student email"
read email

echo "Enter student age:"
read age

echo "Enter student ID:"
read id

echo "$email, $age, $id" >> students-list_1023.txt
echo "Student recorded successfully"

}

# view all students

view_student_list(){
echo "Viewin student lists"
cat students-list_1023.txt
}

# delete student

delete_student_record(){
echo "enter student ID to delete"
read id
sed -i "/$id/d" students-list_1023.txt
echo "student record deleted successfully"
}

# update student

update_student_record(){
echo "enter student id to update"
read id
echo "enter new student email"
read new_email
echo "enter new student age"
read new_age
sed -i "/^$id,/ s/.*/$email, $age, $id/" students-list_1023.txt
echo "student record updated successfully"
}

# menu

while true; do
    echo "Choose an option:"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student record (by Student ID)"
    echo "4. Update student record (by Student ID)"
    echo "5. Exit the application"
    read choice

    case $choice in
	1) create_student_record ;;
	2) view_student_list ;;
	3) delete_student_record ;;
	4) update_student_record ;;
	*) echo "Invalid option."

    esac
done

