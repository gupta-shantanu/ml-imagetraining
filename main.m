image_size=20;
training_size=1000;
X=generateInput(image_size,training_size);
Y=generateOutput(X,image_size);
printf("generated training set...\n");
fflush(stdout);
m=rows(X);
X=[ones(m,1) X];
%Theta=zeros(columns(X),columns(Y));
load("./TrainedVectors/theta20.mat");
alpha=0.009;
iter=1500;
load("./imageMatrices/ima.mat");
Theta=gradientDescent(X,Y,Theta,alpha,iter,t);

%colormap(gray);
%imagesc(t);
%a=t(:)';
%k=[1 a]*Theta;
%figure(2);
%plot(1:iter,J);
%figure(3);
%colormap(gray);
%imagesc(reshape(k,image_size,image_size));
save("theta20.mat","Theta");


