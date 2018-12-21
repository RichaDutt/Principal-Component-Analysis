
image=imread("clockwork-angels.jpg");
img_red= image(:,:,1);
img_red=im2double(img_red);
C=zeros(256,256);
patch = zeros(256,1000);
img = padarray(img_red,[16,16],'symmetric');

for i = 1:1000
  
    r = ceil(randperm(1000,2));
    row = r(1):r(1)+16-1; 
    col = r(2):r(2)+16-1;
    tmp = img(row,col);
    patch = reshape(tmp,[256,1]);
    trans=transpose(patch);
    C = C+(patch.*trans);
end


[V,D]=eig(C);

[d,ind]=sort(diag(D),'descend');
Ds = D(ind,ind);
Vs = V(:,ind);

v1=reshape(Vs(:,1),[16,16]);
for i = 2:8
    p =reshape(Vs(:,i),[16,16]);
        v1 = [v1 p];
  
endfor
v2=reshape(Vs(:,9),[16,16]);
for i = 10:16
    p =reshape(Vs(:,i),[16,16]);
        v2 = [v2 p];
  
endfor
v3=reshape(Vs(:,17),[16,16]);
for i = 18:24
    p =reshape(Vs(:,i),[16,16]);
        v3 = [v3 p];
  
endfor
v4=reshape(Vs(:,25),[16,16]);
for i = 26:32
    p =reshape(Vs(:,i),[16,16]);
        v4 = [v4 p];
  
endfor
v5=reshape(Vs(:,33),[16,16]);
for i = 34:40
    p =reshape(Vs(:,i),[16,16]);
        v5 = [v5 p];
  
endfor
v6=reshape(Vs(:,41),[16,16]);
for i = 42:48
    p =reshape(Vs(:,i),[16,16]);
        v6 = [v6 p];
  
endfor
v7=reshape(Vs(:,49),[16,16]);
for i = 50:56
    p =reshape(Vs(:,i),[16,16]);
        v7 = [v7 p];
  
endfor
v8=reshape(Vs(:,57),[16,16]);
for i = 58:64
    p =reshape(Vs(:,i),[16,16]);
        v8 = [v8 p];
  
endfor
table=[v1;v2;v3;v4;v5;v6;v7;v8];
imshow(table,[])
m=d([1:64],1)
mean_m=mean(m);
a=m-mean_m;


