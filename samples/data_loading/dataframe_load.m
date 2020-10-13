# https://octave.sourceforge.io

# javaMethod ("getProperty", "java.lang.System", "MyProperty");

# if "OpenJDK 64-Bit Server VM warning..." then: javaMethod ("getProperty", "java.lang.System", "MyProperty");


% http://octave.org/doc/v4.2.0/Script-Files.html
% https://octave.org/doc/v4.2.1/Function-Files.html
% https://stackoverflow.com/questions/38647367/run-script-file-from-other-script-file-in-octave
% https://octave.sourceforge.io/octave/function/load.html
% source("packages.m")

pkg load io 
pkg load statistics 
pkg load dataframe
% pkg load nan 

% run("file1.m") 


# addpath('/Users/katodix/Projects/Samples.MatlabOctave/samples/data_loading')

disp ("=============================================================================================================================")
disp ("data_frame_01_full_from_csv")
data_frame_01_full_from_csv = dataframe('Pejcic_318.csv')
class(data_frame_01_full_from_csv)
data_frame_01_full_from_csv.colnames
size(data_frame_01_full_from_csv)
columns(data_frame_01_full_from_csv)
rows(data_frame_01_full_from_csv)



disp ("=============================================================================================================================")
disp ("data_frame_02_filtered_parial_01")
data_frame_02_filtered_parial_01 = data_frame_01_full_from_csv(
        % rows from:to
        1:318,
        % columns (statistical varibles)        
        ["ATV"; "ATT"; "AOP"; "ANN"; "MKUS"; "MPOL"; "MP20"; ]
    )


disp ("=============================================================================================================================")
disp ("data_frame_02_filtered_parial_02")
data_frame_02_filtered_parial_02 = data_frame_01_full_from_csv(:, 5:8)

