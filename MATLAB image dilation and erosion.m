
%Implement dilation and erosion on image,
%Use strel function with different shape type and parameters. And compare results

%dilation
f=imread("text.jpg");
subplot(2,3,1)
imshow(f);
title("Original Image");

b=[0 1 0; 1 1 1; 0 1 0];
g =imdilate(f,b);
subplot(2,3,2)
imshow(g);
title("Image into Binary");

b=strel("diamond",5);
g1 =imdilate(f,b);
subplot(2,3,3)
imshow(g1);
title("Diamond Shape");

b=strel("disk",5);
g2 =imdilate(f,b);
subplot(2,3,4)
imshow(g2);
title("Disk Shape");

b=strel("Square",5);
g3 =imdilate(f,b);
subplot(2,3,5)
imshow(g3);
title("Square Shape");

b=strel("rectangle",[2 4]);
g4 =imdilate(f,b);
subplot(2,3,6)
imshow(g4);
title("Rectangle Shape");




%erosion

f=imread("text.jpg");
subplot(2,3,1)
imshow(f);
title("Original Image");

b=strel("diamond",5);
g1 =imdilate(f,b);
subplot(2,3,2)
imshow(g1);
title("Diamond Shape");

b=strel("disk",5);
g2 =imdilate(f,b);
subplot(2,3,3)
imshow(g2);
title("Disk Shape");

b=strel("square",5);
g3 =imdilate(f,b);
subplot(2,3,4)
imshow(g3);
title("Square Shape");

b=strel("rectangle",[2 4]);
g4 =imdilate(f,b);
subplot(2,3,5)
imshow(g4);
title("Rectangle Shape");