function [student_av_wt] = grade_class(student_IDs,student_scores,assignment_pts)
%[student_avwtd] = grade_class(student_IDs,student_scores,assignment_pts)
% Function to grade a class. 

    % loop through students, compute weighted average score
    N_student = length(student_IDs); % how many students
    % set up results structure for weighted average grade
    student_av_wt = zeros(N_student,1);

    % compute relative weights for assignments
    assignment_wts = assignment_pts/sum(assignment_pts);
    % check with sum(assignment_wts)

    for is = 1:N_student
        student_av_wt(is) = assignment_wts*student_scores(:,is); %% 
    end
    % student_avwtd
    for ii = 1:N_student
        disp(['Student ',padstring(num2str(student_IDs(ii)),2),' received a ',padstring(num2str(pct2letter(student_av_wt(ii))),2,'right'),' for this course']);
    end


end

%% subfunctions below here
function lettergrade = pct2letter(percentgrade)
% function to assign letter grades on the basis of percentage grades
    if percentgrade >= 97
        lettergrade = 'A+';
    elseif percentgrade >= 94
        lettergrade = 'A';
    elseif percentgrade >= 90
        lettergrade = 'A-';
    elseif percentgrade >= 87
        lettergrade = 'B-';
    elseif percentgrade >= 84
        lettergrade = 'B';
    elseif percentgrade >= 80
        lettergrade = 'B-';
    elseif percentgrade >= 77
        lettergrade = 'C+';
    elseif percentgrade >= 74
        lettergrade = 'C';
    elseif percentgrade >= 70
        lettergrade = 'C-';
    else
        lettergrade = 'F';
    end
end