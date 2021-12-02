% 读取灰度图
image_name = "gray_cat.jpg";
I = imread(image_name);

% 灰度拉伸，把0.2-0.6的均匀拉伸到0-1，而小于0.2的直接设为0，大于0.6的直接设为1
J = imadjust(I, [0.2 0.6], [0 1]);

% 直方图均衡化
H = histeq(I);

% 显示对比图片
figure
subplot(3, 2, 1), imshow(I), title("原图");
subplot(3, 2, 2), imhist(I), title("原图的灰度分布直方图");
subplot(3, 2, 3), imshow(J), title("灰度拉伸图");
subplot(3, 2, 4), imhist(J), title("灰度拉伸的灰度分布直方图");
subplot(3, 2, 5), imshow(H), title("直方图均衡化");
subplot(3, 2, 6), imhist(H), title("直方图均衡化的灰度分布直方图");

% 保存图片
imwrite(J, "gray_scale_stretching_" + image_name);
imwrite(H, "histogram_equalization_" + image_name);