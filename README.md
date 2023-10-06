# BashSystem
Used bash to create a simple course catalog for administration to update details of each course offered by their department. This system stores basic information about each course, allowing users too create, read, update, and delete them.
Structure of a Course
- Department Code (Two or Three letter abbreviation) Department Name (String)
- Course Name (String)
- Course Schedule(MWF or TH) Course Start Date(String) - Course End Date(String)
- Course Hours (INT)
- Course Size (Int)

Example
CS Computer Science
Data Structures
MWF August 23 December 9
4
60

Here is The menu:
Enter one of the following actions or press CTRL-D to exit
C - create a new course record
R - read an existing course record
U - update an existing course record
D - delete an existing course record
E - update enrolled student count of existing course
T - show total course count

Example of Creating a Course:
Enter in Department Code CS
Enter in Department Name Computer Science
Enter in Course Number 3853
Enter in Course Name Computer Architecture
Enter in Course Schedule (MWF, TH) MWF
Enter in Course Start Date Aug
Enter in Course End Date Dec
Enter in Course Credit Hours 3
Enter in Initial Course Enrollment 65

Course File will now be added to data directory with the name CS3853.crs where you can view class information.
The queries.log will also be created and updated stating what kind of change was made (course created, updated , deleted etc)

