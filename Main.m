% Author Name: Ethan Warminsky
% Email: warmin16@rowan.edu 
% Created On: 11/11/2024
% Updated On: 11/13/2024
% Updated By: Ethan Warminsky 
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Student Database 
% Submission Date: [11/13/24]
% All rights are reserved - GNU License

clear;
clc;

db = StudentDatabase();

% 6 students with varying data are created
s1 = Student('1', 'Matthew', 19, 3.4, 'MechE');
s2 = Student('2', 'Carla', 20, 3.7, 'Mathematics');
s3 = Student('3', 'Kim', 22, 3.1, 'Computer Science');
s4 = Student('4', 'John', 20, 3.6, 'Physics');
s5 = Student('5', 'Shannon', 21, 3.7, 'EcE');
s6 = Student('6', 'Michael', 22, 3.8, 'MechE');

% Add the 6 students to the database
db = db.addStudent(s1);
db = db.addStudent(s2);
db = db.addStudent(s3);
db = db.addStudent(s4);
db = db.addStudent(s5);
db = db.addStudent(s6);

% Save database to a file
db.saveToFile('studentDatabase.mat');

% Load database from a file
loadedDB = db.loadFromFile('studentDatabase.mat');

% Find students by ID
studentFound = loadedDB.findStudentByID('002');
if ~isempty(studentFound)
    studentFound.displayInfo();
end

% Obtain students by major
csStudents = loadedDB.getStudentsByMajor('Computer Science');
for i = 1:length(csStudents)
    csStudents(i).displayInfo();
end

% Generate the three different graphics
figure;
subplot(3, 1, 1);
plotGPADistribution(loadedDB.Students);

subplot(3, 1, 2);
plotAverageGPAByMajor(loadedDB.Students);

subplot(3, 1, 3);
plotAgeDistribution(loadedDB.Students);
