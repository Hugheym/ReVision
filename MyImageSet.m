classdef MyImageSet < imageSet
    %MYIMAGESET Summary of this class goes here
    %   image files must have one 5 digit number in path.
    
    properties
        id_list
    end
    
    methods
        function obj = MyImageSet(arg1)
            obj=obj@imageSet(arg1);
        end
        function r = getIdList(obj)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            path2id = @(c) regexp(regexp(c, 'data?.\d{5}', 'match'), '\d{5}', 'match');
            r=cellfun(path2id, obj.ImageLocation);
            r=cellfun(@(c) str2double(c), r);
        end
    end
end

