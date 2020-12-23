# pkg install -forge io
# pkg install -forge statistics
# pkg install -forge nan
# pkg install -forge dataframe

pkg load io statistics nan dataframe

# Read numeric data from the text file FILE which uses the delimiter SEP between data values.

# addpath('/Users/katodix/Projects/Samples.MatlabOctave/externals/Core.Math.Data/data/HolisticWare.Core.Sample.Data/CSV')

data = dlmread('Pejcic_318.csv',',',1,5) % read only numeric column ! 

mean(data)
# median(data)
# mode(data)
# range(data)
# var(data)
# std(data)
# skewness(data)
# kurtosis(data)

# statistics(data)