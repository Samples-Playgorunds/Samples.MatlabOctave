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




disp ("=============================================================================================================================")
disp ("statistics")

disp ("summary(data_frame_02_filtered_parial_02)")
summary(data_frame_02_filtered_parial_02)
disp ("mean(data_frame_02_filtered_parial_02.ATV)")
mean(data_frame_02_filtered_parial_02.ATV)

sum_custom =0.0;
for i = 1:rows(data_frame_02_filtered_parial_02.ATV)
    sum_custom = sum_custom + data_frame_02_filtered_parial_02.ATV(i)
      printf("data_frame_02_filtered_parial_02.ATV(%d) = %f\n", i, data_frame_02_filtered_parial_02.ATV(i));
endfor

disp ("count = size(data_frame_02_filtered_parial_02.ATV) = ")
count = size(data_frame_02_filtered_parial_02.ATV)

disp ("mean_custom = sum_custom / count(1) = ")
mean_custom = sum_custom / count(1)

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
