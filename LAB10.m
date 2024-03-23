clear all;
close all;

path(1).a = '.\Cardio_data\w24_beng278_lab10\lab10_subject2_Me\Beng278_Lab10_S02\Contijoch_Cardiop\Thru_Flow_AscAoDescAo_38\*.dcm';
path(2).a = '.\Cardio_data\w24_beng278_lab10\lab10_subject2_Me\Beng278_Lab10_S02\Contijoch_Cardiop\Thru_Flow_AscAoDescAo_P_39\*.dcm';
path(3).a = '.\Cardio_data\w24_beng278_lab10\lab10_subject2_Me\Beng278_Lab10_S02\Contijoch_Cardiop\Thru_Flow_AscAoDescAo_40\*.dcm';
path(4).a = '.\Cardio_data\w24_beng278_lab10\lab10_subject2_Me\Beng278_Lab10_S02\Contijoch_Cardiop\Thru_Flow_AscAoDescAo_P_41\*.dcm';
path(5).a = '.\Cardio_data\w24_beng278_lab10\lab10_subject2_Me\Beng278_Lab10_S02\Contijoch_Cardiop\Thru_Flow_AscAoDescAo_42\*.dcm';
path(6).a = '.\Cardio_data\w24_beng278_lab10\lab10_subject2_Me\Beng278_Lab10_S02\Contijoch_Cardiop\Thru_Flow_AscAoDescAo_P_43\*.dcm';
label = ["AscAoDescAo_1",'Flow1','AscAoDescAo_2','Flow2','AscAoDescAo_3','Flow3'];


for i = 1:6
    file = natsortfiles(dir(path(i).a));
    for j = 1: numel(file)
        data(i).image(j).each_image = dicomread(file(j).name);
        data(i).image(j).info = dicominfo(file(j).name);
        % data(i).image(j).each_image = (data(i).image(j).each_image*data(i).image(j).info.RescaleSlope)+data(i).image(j).info.RescaleIntercept;
        % data(i).image(j).scl_factor = data(i).image(j).info.RescaleSlope;
        % data(i).image(j).scl_interc= data(i).image(j).info.RescaleIntercept;
        data(i).label = label(i);
        % if i == 4 || i == 5
        %     a = 1;
        % else
        %     data(i).image(j).TI = data(i).image(j).info.InversionTime;
        % end
    end
end


a = isfield(data(2).image(1).info,'RescaleSlope');
% a = data(1).image(2).info;






