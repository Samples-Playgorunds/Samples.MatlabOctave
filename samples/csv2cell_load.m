# pkg install -forge io
# pkg install -forge statistics
# pkg install -forge nan
# pkg install -forge dataframe

pkg load io statistics nan dataframe

# addpath('/Users/katodix/Projects/Samples.MatlabOctave/externals/Core.Math.Data/data/HolisticWare.Core.Sample.Data/CSV')
data = csv2cell('/Users/katodix/Projects/Samples.MatlabOctave/externals/Core.Math.Data/data/HolisticWare.Core.Sample.Data/CSV/Pejcic_318.csv')

# data(1, :)
# data(2:end, 5:6)

# mean(data)
# median(data)
# mode(data)
# range(data)
# var(data)
# std(data)
# skewness(data)
# kurtosis(data)

# statistics(data)