# https://octave.sourceforge.io

# javaMethod ("getProperty", "java.lang.System", "MyProperty");

# if "OpenJDK 64-Bit Server VM warning..." then: javaMethod ("getProperty", "java.lang.System", "MyProperty");


% http://octave.org/doc/v4.2.0/Script-Files.html
% https://octave.org/doc/v4.2.1/Function-Files.html
% https://stackoverflow.com/questions/38647367/run-script-file-from-other-script-file-in-octave
% https://octave.sourceforge.io/octave/function/load.html
source("packages.m")

% run("file1.m") 


# addpath('/Users/katodix/Projects/Samples.MatlabOctave/samples/data_loading')

data_frame = dataframe('Pejcic_318.csv')

# prvi arg.: od kojeg do kojeg retka; drugi arg.: koje varijable
#data_frame = data(1:318, ["ATV"; "ATT"; "AOP"; "ANN"; "MKUS"; "MPOL"; "MP20"; "MPRR"; "MTAP"; "MSDM"; "MDTR"; "MVIS"])

class(data_frame)
data_frame.colnames
size(data_frame)
columns(data_frame)
rows(data_frame)

data_frame(:, 5:8)
data_frame1 = data_frame(:, 5:8)
summary(data_frame1)

data_frame2 = data_frame(1:318, ["ATV"; "ATT"])

mean(data_frame.ATV)
statistics(data_frame.ATV)

# mean(data_frame)
# median(data)
# mode(data)
# range(data)
# var(data)
# std(data)
# skewness(data)
# kurtosis(data)

# statistics(data)
