pkg load io statistics nan dataframe

data = csv2cell('/Users/katodix/Projects/Samples.MatlabOctave/externals/Core.Math.Data/data/HolisticWare.Core.Sample.Data/CSV/Pejcic_318.csv')


tbl = tabulate(data);
t = cell2table(tbl,'MJESTO', 'SPOL')
    {'Value','Count','Percent'});
t.Value = categorical(t.Value)