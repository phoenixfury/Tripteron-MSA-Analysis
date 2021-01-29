%% First try

start = 1;
step = 1;

data = zeros(13, 13, 13);
Force = [100; 0; 0; 0; 0; 0];
pointsize = 20;
for z = start: 13
    for y = start: 13
        for x = start: 13
        p_global = [x* 0.1, y*0.1, z*0.1];
        pre_data = ComputeDeflection( p_global, Force);
        deflection = sqrt(pre_data(1)^2 + pre_data(2)^2 + pre_data(3)^2);
        data(x, y, z) = deflection; 
        scatter3(x*0.1, y*0.1, z*0.1,pointsize, data(x,y,z));
        hold on
        end
    end
end
colorbar
