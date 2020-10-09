# https://octave.sourceforge.io

# javaMethod ("getProperty", "java.lang.System", "MyProperty");

# if "OpenJDK 64-Bit Server VM warning..." then: javaMethod ("getProperty", "java.lang.System", "MyProperty");

# pkg install -forge io
# pkg install -forge statistics
# pkg install -forge nan
# pkg install -forge dataframe

pkg load io statistics nan dataframe

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
