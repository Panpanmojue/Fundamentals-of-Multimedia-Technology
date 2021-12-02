% 读取图片
image_name = "cat.jpg";
I = imread(image_name);

% 叠加密度为0.04的椒盐噪声
J2 = imnoise(I, 'salt & pepper', 0.04);

% 中值滤波，窗口大小为3 * 3
filter1 = medfilt3(J2, [3 3 1]);

% 均值滤波，窗口大小为3 * 3
h = fspecial('average', [3 3]);
filter2 = imfilter(J2, h);

% 显示对比图
figure
subplot(2, 2, [1 2]), imshow(J2), title("加椒盐噪声图");
subplot(2, 2, 3), imshow(filter1), title("中值滤波");
subplot(2, 2, 4), imshow(filter2), title("均值滤波");

% 保存图片
imwrite(J2, "salt_and_pepper_noise_" + image_name);
imwrite(filter1, "median_filter_" + image_name);
imwrite(filter2, "mean_filter_" + image_name);