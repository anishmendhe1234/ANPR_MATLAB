%% Input raw image 
I = imread('car5.jpg');
figure,
imshow(I)

%% Gray scale conversion
B = rgb2gray(I);
imshow(B)

%% Noise reduction using median filter
B1 = medfilt2(B, [3 3]);
imshow(B1)

%% Contrast enhancement using histogram equalization
J = histeq(B1);
imshow(J)

%% Plate localization by Sobel edge detection
BW = edge(J, 'sobel');
imshow(BW)

%% Fill the detected edges
BW1 = imfill(BW, 'holes');
imshow(BW1)

%% Remove small objects
BW2 = bwareaopen(BW1, 1000);
imshow(BW2)

%% Morphological filtering to remove noise
SE = strel('rectangle',[20, 80]); % define a rectangular structuring element
BW3 = imopen(BW2,SE); % perform opening operation
imshow(BW3)

%% Label connected components
cc = bwconncomp(BW3);

%% Get bounding box for the largest connected component
numPixels = cellfun(@numel,cc.PixelIdxList);
[~,idx] = max(numPixels);
bb = regionprops(cc,'BoundingBox');
bbox = bb(idx).BoundingBox;

%% Extract number plate image and show the vertices coordinates
NP = imcrop(I,bbox);
imshow(NP)
hold on
rectangle('Position',bbox,'EdgeColor','r','LineWidth',2)

%% Character segmentation
grayNP = rgb2gray(NP); % convert to grayscale
thresh = graythresh(grayNP); % determine threshold level using Otsu's method
BWNP = imbinarize(grayNP, thresh); % binarize image
BWNP = imcomplement(BWNP); % invert black and white
ccNP = bwconncomp(BWNP); % label connected components
propsNP = regionprops(ccNP, 'BoundingBox'); % get bounding boxes for connected components
numChars = length(propsNP); % count number of characters
for i = 1:numChars
    bboxNP = propsNP(i).BoundingBox;
    charImg = imcrop(BWNP, bboxNP); % extract character image
    figure, imshow(charImg);
end
