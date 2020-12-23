
pkg load io dataframe statistics

data = dataframe('/Users/katodix/Projects/Samples.MatlabOctave/externals/Core.Math.Data/data/HolisticWare.Core.Sample.Data/CSV/Pejcic_318.csv')

# https://wiki.octave.org/wiki/index.php?title=Dataframe_package&mobileaction=toggle_view_desktop

size(data)

class(data)

mean(data(2:end, 5:16))

data.ATV

tabulate(data.ATV)
