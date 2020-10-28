% https://octave.org/doc/v4.4.0/Installing-and-Removing-Packages.html
% https://stackoverflow.com/questions/46535396/how-to-know-what-packages-i-already-have-downloaded-in-octave

% [dummy, info] = pkg('list');
% info{1}.name
% info{1}.loaded

pkg install -forge io
pkg install -forge statistics
pkg install -forge dataframe
pkg install -forge nan
