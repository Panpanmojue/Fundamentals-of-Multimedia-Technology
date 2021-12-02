% 提示用户输入图片名称
image_name = input("please input the name of the image:", "s");

% 读取图片
I = imread(image_name);

% 把图像数据类型转换为double类型，方便计算
I = im2double(I);

% 用灰度图转换公式，进行三维空间到一维空间到映射
gray_I = 0.29900 * I(:, :, 1) + 0.58700 * I(:, :, 2) + 0.11400 * I(:, :, 3);

% 计算灰度图片的方差
variance = var(gray_I(:));

% 保存灰度图
imwrite(gray_I, "gray_" + image_name)

% 显示原图与灰度图的对比
figure
subplot(1, 2, 1), imshow(I), title("原图");
subplot(1, 2, 2), imshow(gray_I), title("灰度图");

% 打印提示信息
fprintf("灰度图的方差为：%f\n", variance);
fprintf("该灰度图保存在:gray_%s", image_name);
