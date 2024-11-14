% Author Name: Ethan Warminsky
% Email: warmin16@rowan.edu 
% Created On: 11/11/2024
% Updated On: 11/13/2024
% Updated By: Ethan Warminsky 
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Student Database 
% Submission Date: [11/13/24]
% All rights are reserved - GNU License

% Start of Student Database Code

% Defines Student Database
classdef StudentDatabase
    properties
        Students = [];
    end

    % Adds Students and their data to the Database 
    methods
        % Name
        function obj = addStudent(obj, student)
            obj.Students = [obj.Students; student];
        end

        % ID
        function student = findStudentByID(obj, id)
            student = obj.Students(strcmp({obj.Students.ID}, id));
        end

        % Major
        function list = getStudentsByMajor(obj, major)
            list = obj.Students(strcmp({obj.Students.Major}, major));
        end

        % Saves File
        function saveToFile(obj, filename)
            save(filename, 'obj');
        end

        % Loads File
        function obj = loadFromFile(obj, filename)
            loadedData = load(filename);
            obj = loadedData.obj;
        end
    end
end

% End of Student Database Code
