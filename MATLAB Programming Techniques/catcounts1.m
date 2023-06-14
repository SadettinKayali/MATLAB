%% Create table of category counts
% cats is an array of text 
% ctbl is a table whos first column contains the category names and second column contains the number of elements in that category
% Example
x = categorical(["B","A","C","C","B","B"])
t = catcounts(x)
function ctbl = catcounts(cats)

% TASK 1:
% ENTER TASK 1 CODE HERE:
cats = categorical(cats);



% Get categories and counts
c = categories(cats);
n = countcats(cats);

% Assemble table
ctbl = table(c(:),n(:),'VariableNames',["Category","Number"]);
end
