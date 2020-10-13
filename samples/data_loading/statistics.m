source("./dataframe_load.m")
%load("dataframe_load.m")

pkg load statistics 
pkg load dataframe

disp ("=============================================================================================================================")
disp ("statistics")

disp ("summary(data_frame_02_filtered_parial_02)")
summary(data_frame_02_filtered_parial_02)
disp ("mean(data_frame_02_filtered_parial_02.ATV)")
mean(data_frame_02_filtered_parial_02.ATV)

disp("-------------------------------------------------------------------------------------------------------------------------------")
sum_custom = 0.0;
for i = 1:rows(data_frame_02_filtered_parial_02.ATV)
    sum_custom = sum_custom + data_frame_02_filtered_parial_02.ATV(i)
    printf("data_frame_02_filtered_parial_02.ATV(%d) = %f\n", i, data_frame_02_filtered_parial_02.ATV(i));
endfor
disp("-------------------------------------------------------------------------------------------------------------------------------")
disp("-------------------------------------------------------------------------------------------------------------------------------")
product_custom = 1.0;
for i = 1:rows(data_frame_02_filtered_parial_02.ATV)
    product_custom = product_custom * data_frame_02_filtered_parial_02.ATV(i)
    printf("data_frame_02_filtered_parial_02.ATV(%d) = %f\n", i, data_frame_02_filtered_parial_02.ATV(i));
endfor
disp("-------------------------------------------------------------------------------------------------------------------------------")

disp ("count = size(data_frame_02_filtered_parial_02.ATV) = ")
count = size(data_frame_02_filtered_parial_02.ATV)

disp ("mean_custom = sum_custom / count(1) = ")
mean_custom = sum_custom / count(1)

disp ("mean_custom = sum_custom / count(1) = ")
geomean_custom_power = power(product_custom, 1.0 / count(1))

disp ("geomean_custom_nthroot = nthroot(product_custom, count(1)) = ")
geomean_custom_nthroot = nthroot(product_custom, count(1))

disp ("mean(data_frame_02_filtered_parial_02.ATV) = ")
mean(data_frame_02_filtered_parial_02.ATV)

disp ("geomean(data_frame_02_filtered_parial_02.ATV) = ")
geomean(data_frame_02_filtered_parial_02.ATV)

disp ("statistics(data_frame_02_filtered_parial_02.ATV) = ")
statistics(data_frame_02_filtered_parial_02.ATV)


# mean(data_frame)
# median(data)
# mode(data)
# range(data)
# var(data)
# std(data)
# skewness(data)
# kurtosis(data)

# statistics(data)
