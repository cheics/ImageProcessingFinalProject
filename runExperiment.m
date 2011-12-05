imageSource=fullfile('C:', 'Users', 'cheics', 'Pictures', 'Desktops');
allImages=ls(strcat(imageSource, '\*.jpg'));

testImage=imread(fullfile('C:', 'Users', 'cheics', 'Pictures', 'Desktops',...
    '02029_venetianroads_1680x1050.jpg'));
%testImage=rgb2gray(testImage);
cc=simpleShred(testImage, 20);

dd=unSimpleShred(cc.imageData, cc.order); 

ii_truth=testImage;
ii_shred=cell2mat(cc.imageData);

imshow(ii_truth);
figure;
imshow(ii_shred);
figure;
ii_YCC=rgb2ycbcr(ii_shred);

imshow(edges([ii_YCC(:,:, 1)]));