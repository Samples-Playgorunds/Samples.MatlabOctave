% pkg install -forge io
% pkg install -forge statistics
% pkg install -forge nan
% pkg install -forge dataframe

pkg load io statistics nan dataframe

% addpath('/Users/katodix/Projects/Samples.MatlabOctave/externals/Core.Math.Data/data/HolisticWare.Core.Sample.Data/CSV')

% csvread('Pejcic_318.csv')
data = csvread('Pejcic_318.csv') % dataframe load BUT without categorial (textual) data (0) 

mean(data)
# median(data)
# mode(data)
# range(data)
# var(data)
# std(data)
# skewness(data)
# kurtosis(data)

# statistics(data)