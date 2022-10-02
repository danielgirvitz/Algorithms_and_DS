function BravermanChallenge(vector)
%% Dr. Elena Braverman's Challenge
%% 08/12/2022
%% Introduction:
% On 08/12/2022 my research supervisor, Dr. Elena Braverman, sent me this
%   challenge. I'm embarresed to admit it took me five hours. (I hadn't
%   coded in months, and I even had to look up the for-loop's syntax!)
%% Problem Description:
% Read integer numbers from the screen until the number read coincides with the first one, and order numbers such that in any line: 
%   a sequence is either non-decreasing or decreasing, 
%   the last number in each line coincides with the first number in the next line. 
%% Example:
% For 2 7 9 5 3 3 1 4 2 you have to print:
% 2 7 9
% 9 5 3 
% 3 3
% 3 1
% 1 4
% 4 2
%% Assumptions FOR ALL x(n) and x(n+1):
% 1.	increasing sequence: x(n+1) > x(n) … x(n) < x(n+1)
% 2.	nondecreasing sequence: x(n+1) >= x(n) … x(n) =< x(n+1)
% 3.	decreasing sequence: x(n+1) < x(n) … x(n) > (x+1)
% 4.	nonincreasing sequence: x(n+1) <= x(n) … x(n) => x(n+1)
%% Daniel Girvitz's Code:
if nargin==0
    vector = [2 7 9 5 3 3 1 4 2];
elseif nargin==1
    TF = isvector(vector);
    if TF==0
        error("Input argument must be a vector!");
    end
end
vector_length = length(vector);
i=2;
while (i<=vector_length)
    count = 0;
    if (vector(i)>=vector(i-1))
        disp("Nondecreasing sequence:");
        for j = i:vector_length 
            if (vector(j)<vector(j-1))
                break;
            end
            count = count + 1;
        end
    elseif (vector(i)<vector(i-1))
        disp("Decreasing sequence:");
        for j = i:vector_length 
            if (vector(j)>=vector(j-1))
                break;
            end
            count = count + 1;
        end
    end
    disp(vector(i-1:i-1+count));
    i = i+count;
end
end

