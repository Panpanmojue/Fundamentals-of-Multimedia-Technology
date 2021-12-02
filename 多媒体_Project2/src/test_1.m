% 提示用户输入图片名称
image_name = input("please input the name of the image:", "s");

% 读取图片
I = imread(image_name);
[y, x, z] = size(I);

info = imfinfo(image_name);

% 输出图片的宽和高，以提示用户输入正确的坐标
fprintf("image width: %d\n", info.Width);
fprintf("image height: %d\n", info.Height);

% 读取用户输入的坐标
plot_x = input("please input x:");
plot_y = input("please input y:");

% 一行一行地遍历，并对行进行边界检查
for i = max(plot_x - 1, 1) : min(plot_x + 1, x)
    % 一列一列地遍历，也进行边界检查
    for j = max(plot_y - 1, 1) : min(plot_y + 1, y)
        % 输出点的RGB值
        fprintf("(%d, %d): (%d, %d, %d)\n", i, j, I(j, i, 1), I(j, i, 2), I(j, i, 3));
    end
end
