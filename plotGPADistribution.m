% Author Name: Heidi Kling
% Email: klingh24@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm
% Task: GPA Distrabution Visulization
% Date: 11/11/2024

function plotGPADistribution(students)
    gpas = [students.GPA];
    histogram(gpas, 'FaceColor', 'b');
    title('GPA Distribution');
    xlabel('GPA');
    ylabel('Number of Students');
end