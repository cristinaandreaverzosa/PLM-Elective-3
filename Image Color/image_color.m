f=imread('C:\Users\crist\Downloads\orange.png');
figure
imshow(f)
size(f);
imwrite(f,'C:\Users\crist\Downloads\orange.jpg');
figure
imshow(f)
g=rgb2gray(f);
size(f)

ans =

   500   500     3

figure
imshow(g)
whos f
  Name        Size                Bytes  Class    Attributes

  f         500x500x3            750000  uint8              

whos g
  Name        Size              Bytes  Class    Attributes

  g         500x500            250000  uint8              

imfinfo('C:\Users\crist\Downloads\orange.jpg')

ans = 

  struct with fields:

           Filename: 'C:\Users\crist\Downloads\orange.jpg'
        FileModDate: '27-Jul-2024 13:43:23'
           FileSize: 19994
             Format: 'jpg'
      FormatVersion: ''
              Width: 500
             Height: 500
           BitDepth: 24
          ColorType: 'truecolor'
    FormatSignature: ''
    NumberOfSamples: 3
       CodingMethod: 'Huffman'
      CodingProcess: 'Sequential'
            Comment: {}
 
img_red = f;
img_red(:,:,2)=0;
img_red(:,:,3)=0;
figure(1);imshow(img_red);

f=imread('C:\Users\crist\Downloads\orange.png');
img_green=f;
img_green(:,:,1)=0;
img_red(:,:,3)=0;
img_green(:,:,3)=0;
figure(2);imshow(img_green);

f=imread('C:\Users\crist\Downloads\orange.png');
img_blue=f;
img_blue(:,:,1)=0;
img_blue(:,:,2)=0;
figure(3);imshow(img_blue);

figure(4);imshow(g);
 
imwrite(img_red,'C:\Users\crist\Downloads\img_red.png');
imwrite(img_green,'C:\Users\crist\Downloads\img_green.png');
imwrite(img_blue,'C:\Users\crist\Downloads\img_blue.png');
imwrite(g,'C:\Users\crist\Downloads\img_gray.png');
