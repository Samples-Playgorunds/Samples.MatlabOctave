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
disp ("data_frame_01_filtered_parial")
        data_frame_01_filtered_parial = data_frame_01_full_from_csv(
        % rows from:to
        1:318,
        % columns (statistical varibles)        
        ["ATV"; "ATT"; "AOP"; "ANN"; "MKUS"; "MPOL"; "MP20"; ]
    )


# data_frame(:, 5:8)
# data_frame1 = data_frame(:, 5:8)
# summary(data_frame1)
# 
# data_frame2 = data_frame(1:318, ["ATV"; "ATT"])
# 
# mean(data_frame.ATV)
# statistics(data_frame.ATV)

# mean(data_frame)
# median(data)
# mode(data)
# range(data)
# var(data)
# std(data)
# skewness(data)
# kurtosis(data)

# statistics(data)
