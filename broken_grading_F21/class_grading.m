clear; clc; disp(datestr(now));
rng(5)

addpath('functions')
%% Analyse hypothetical class scores
student_IDs = [1:10]';
assignment_pts = [40 40 30 25 45 35 30 40];
% count number of students and assignments
N_students = length(student_IDs);
N_assignments = length(assignment_pts);

% generate random scores
%student_scores = random('unif',60,100,N_assignments,length(student_IDs)); % in percent
student_scores = 60 + (100-60)*rand(N_assignments,length(student_IDs)); % in percent
% round off to 10th of a percent
student_scores = round(student_scores,10);

%% grade the class
[student_avwtd] = grade_class(student_IDs,student_scores,assignment_pts);

%% Find most steady and most variable students
student_std = std(student_scores);
print_steadiest_student(student_std)
print_varyest_student(student_std)

%% Extra credit to odd students for odd assignments
for is = 1:length(student_IDs)
    for ia = 1:N_assignments
        if mod(is,2)==1 && mod(ia,2)==1
            student_scores(ia,is) = student_scores(ia,is)+5; % 5 point bonus
        end
    end
end

%% Regrade
[student_avwtd] = grade_class(student_IDs,student_scores,assignment_pts);


%% subfunctions below here
function print_steadiest_student(stds)
% print message to screen with number of most steady student
    disp(['Student ',num2str(min_index(stds)),' was the most steady performer'])
end
function print_varyest_student(stds)
    disp(['Student ',num2str(max_index(stds)),' was the most variable performer'])
end
