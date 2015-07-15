function createGIF(a,iter,filename)

a=a*255;
	if iter == 50;
		imwrite(a,bone(256),filename,'gif','LoopCount',Inf,'DelayTime',0.2);
	else
		imwrite(a,bone(256),filename,'gif','WriteMode','append','DelayTime',0.2);
	endif

end