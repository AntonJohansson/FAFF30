
name = input('filnamnet (utan .PNG): ');

im = imread([name, '.PNG']);
im = 255-im;
im = im(65:end-103,40:end-7,:);
imwrite(im,[name, '_inv.PNG']);