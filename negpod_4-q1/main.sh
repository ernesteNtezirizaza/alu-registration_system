#!/bin/bash

# Function to create student record

create_student_record(){
    echo "Enter student email:"
    read email

    echo "Enter student age:"
    read age

    echo "Enter student ID:"
    read id

    # Check if ID already exists
    if grep -q "^$id," students-list_1023.txt; then
        echo "Student with ID $id already exists."
    elif grep -q "$email" students-list_1023.txt; then
        echo "Student with email $email already exists."
    else
        echo "$id, $email, $age" >> students-list_1023.txt
        echo "Student with ID $id recorded successfully."
    fi
}

# Function to view all students

view_student_list(){
    if [ -s "students-list_1023.txt" ]; then
        echo "List of all students"
        echo "ID  | Email                 | Age"
        echo "----|-----------------------|----"
        awk -F ", " '{printf "%-4s| %-23s| %-3s\n", $1, $2, $3}' students-list_1023.txt
    else
        echo "No students found!"
    fi
}

# Function to delete a student recird by ID

delete_student_record(){
echo "Enter student ID to delete:"
read id

# Check if ID exists before deletion
    if grep -q "^$id," students-list_1023.txt; then
        sed -i "/^$id,/d" students-list_1023.txt
        echo "Student with ID $id deleted successfully."
    else
        echo "Student with ID $id is not found!"
    fi
}

# Function to update a student record by ID

update_student_record() {
    echo "Enter student ID to update:"
    read update_id

    # Check if ID exists before updating
    if grep -q "^$update_id," students-list_1023.txt; then
        echo "Enter updated email:"
        read updated_email
        echo "Enter updated age:"
        read updated_age

        # Using awk to search for the student record by ID and update it
        awk -v id="$update_id" -v email="$updated_email" -v age="$updated_age" 'BEGIN {FS = ", "} $1 == id {$1 = id; $2 = email; $3 = age; printf "%s, %s, %s\n", $1, $2, $3; next} {print}' students-list_1023.txt > temp.txt

        # Rename temp.txt to students-list_1023.txt
        mv temp.txt students-list_1023.txt

        echo "Student with ID $update_id updated successfully."
    else
        echo "Student with ID $update_id is not found!"
    fi
}



# Function to exit the application

exiting_application() {
    echo "Thank you for using the system."
    exit 0
}

# menu

while true; do
    echo "Choose an option:"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student record (by Student ID)"
    echo "4. Update student record (by Student ID)"
    echo "5. Exit the application"
    read -p "Enter your choice:" choice

    case $choice in
	1) create_student_record ;;
	2) view_student_list ;;
	3) delete_student_record ;;
	4) update_student_record ;;
	5) exiting_application ;;
	*) echo "Invalid option."

    esac
done

