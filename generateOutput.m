function output=generateOutput(a,image_size)
output=zeros(size(a));
for i=1:rows(output)
tmp=a(i,:);
image=reshape(tmp,image_size,image_size);
output(i,:)=flipud(image)(:)';
endfor
endfunction
