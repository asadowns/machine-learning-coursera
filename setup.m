PS1('>> '); %set cursor
clear ; close all; clc % clean workspace
who   % list variables in workspace
whos  % list variables in workspace (detailed view) 
save hello.mat v;  % save variable v into file hello.mat
save hello.txt v -ascii; % save as ascii
% fopen, fread, fprintf, fscanf also work  [[not needed in class]]
% To add the path for the current session of Octave:
addpath('/path/to/function/')

% To remember the path for future sessions of Octave, after executing addpath above, also do:
savepath