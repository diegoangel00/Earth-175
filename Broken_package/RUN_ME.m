%% This is a script to analyse some 20th century global temperature data
%clear all
%close all

% Paths
addpath('data')
addpath('functions')
%% Load temperature data
load('Global_Temp.mat');  %Temperature data

%% NOTE THERE ARE NO ERRORS IN THIS FUNCTION
% This is included just so you can see the data, which could help you
% diagnose other errors. You will learn how to use these plotting tools in
% a couple of weeks
T_year
T_dC
plot_nice(T_year,T_dC)
%% OK THIS IS THE POINT BEYOND WHICH THERE MIGHT BE ERRORS AGAIN... :)

%% 
% Temperatures within and since the 20th century
% average over 21st C data
% year_20C = T_year <= 2000 & T_year > 1900;
% Tmean_20C = average_temp(T_dC(year_20C));
% disp(Tmean_20C)
% % check delta from 20C average for the average of 20C Temps is indeed zero!
% if round(Tmean_20C,0)~=0 % << is 6 the right number...?
%     error('Average for 21C off somehow') 
% end
%     
% % average over data earlier than 1960
% year_early = T_year < 1960;
% Tmean_early = average_temp(T_dC(year_early));
% disp(['Temperatures prior to 1960 were, on average, ',num2str(-Tmean_early,2),' C colder compared to C20 average'])
% 
% % average over 21C data
% year_21C = T_year>=2000;
% Tmean_21C = average_temp(T_dC(year_21C));
% disp(['Temperatures since 2000 have been, on average, ',num2str(Tmean_21C,2),' C warmer compared to C20 average'])
% 
% % Get some statistical data on temperatures since 2000
% [Tmean,Tmedian,Tvar,Tstd] = stat_summary(T_dC(year_21C));
% 
% %% Fit line to the data since 1970
% % find the years between 1970 and 2020 (last 50 years)
% ind_last50 = find(T_year >=1970 & T_year <= 2020);
% % get vector of time elapsed since 1970, in years
% time_since_1970 = T_year(ind_last50)-T_year(ind_last50(1));
% 
% % print to screen columns of ~year~, ~year from 1970~ for last 50 years
% [T_year(ind_last50),time_since_1970]
% 
% % print to screen columns of ~year from 1970~, ~Temp anomaly~ for last 50 years
% [time_since_1970,T_dC(time_since_1970+1)]
% 
% % now loop through possible gradients of annual average temperature increase (in units of C/yr) 
% dT_per_yr_guess = [-0.1:0.005:0.1]'; % note 0.1 C/yr is a HUGE rate of increase. At this rate, in less than a millenium all the water on Earth would vapourise. 
% % column vector of errors for each guess - fill inside loop
% error_in_guess = zeros(length(dT_per_yr_guess));
% for ii = length(dT_per_yr_guess)    
%     dT_per_yr_trial = dT_per_yr_guess(ii);
%     predicted_temp = time_since_1970*dT_per_yr_trial;
%     observed_temp = T_dC(ind_last50);
%     sum_of_squared_errors = sum((predicted_temp-observed_temp).^2);
%     error_in_guess(ii) = sum_of_squared_errors;
% end
% % print to screen columns of ~dT/y guesses~, ~errors~
% disp([dT_per_yr_guess,error_in_guess])
% 
% 
% % now find dT_per_year that gave the minimum error between predicted and
% % observed temperature
% ind_best_guess = find_crossing(error_in_guess);
% dT_per_yr_best = dT_per_yr_guess(ind_best_guess);
% 
% % print to screen columns of ~year from 1970~, ~Temp anomaly observed~, ~Temp anomaly predicted~ for last 50 years
% disp([time_since_1970,T_dC(ind_last50),dT_per_yr_best*time_since_1970])
% 
% %% AGAIN, NO ERRORS HERE - this is so you can see the linear fit
% % if you do not see a red line fitting the last ~50y of data on the plot...
% % then you have some errors in the code before this point.
% hold on
% plot(T_year(ind_last50),dT_per_yr_best*time_since_1970,'r-','linewidth',2);
% %% OK THIS IS THE POINT BEYOND WHICH THERE MIGHT BE ERRORS AGAIN... :)
% 
% %% Calculate an average temperature anomaly in each decade
% decade_start_yr = [1880:10:201]'; % all decades from 1880s to 2010s
% % set up variable that will take the averages
% decade_av_T_dC = zeros(length(decade_start_yr),1);
% for id = 1:length(decade_start_yr)
%     ind_yrs_in_decade = (T_year >= decade_start_yr(id)) && (T_year < decade_start_yr(id)+10);
%     % take mean
%     decade_av_T_dC(id) = sum(T_dC(ind_yrs_in_decade) )/10; 
%     % print to screen in loop
%     disp(['In the ',num2str(decade_start_yr(id)),'s', 'the mean Temperature anomaly was ',num2str(decade_av_T_dC(id),3),' C']);
% end
% 
% %% AGAIN, NO ERRORS HERE - this is so you can see the decadal averages
% % if you do not see green stars showing decadal averages on the plot
% % then you have some errors in the code before this point.
% hold on
% plot(decade_start_yr+5,decade_av_T_dC,'gp','linewidth',2,'markerfacecolor','g','markersize',10);
% %% OK THIS IS THE POINT BEYOND WHICH THERE MIGHT BE ERRORS AGAIN... :)
%    
%     
%     
% %% DONE!
% disp(   '======================================')
% disp('CONGRATULATIONS!! Error-free script :)');
% disp(   '======================================')
% 
% %% ==============  SCRIPT SPECIFIC FUNCTIONS   ==============  
% 
% % simple average
% function T_av = average_temp(Temp)
%     if isempty(Temp)
%         error('no temps given')
%     end
%     T_av = sum(Temp,'all')./length(Temp);
% end
