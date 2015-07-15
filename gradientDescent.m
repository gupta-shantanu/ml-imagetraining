function theta = gradientDescent(X, y, theta, alpha, num_iters,testImage)
J_hist=0;
%J_hist=zeros(num_iters,1);
m=rows(y);
T=zeros(size(theta));

for iter = 1:num_iters
theta=theta-(alpha/m)*(X'*(X*theta-y));
%J_hist(iter,1)=lrCostFunction(theta,X,y,0);
if mod(iter,50)==0

image=reshape([1 testImage(:)']*theta,rows(testImage),columns(testImage));
createGIF(image,iter,"./OutputGIFs/outputGIF.gif");
disp(iter);
fflush(stdout);
endif
endfor


end