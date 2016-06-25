function SaveFrameToGif(filename, time, first)

% Append current frame to 
frame = getframe(1);
im = frame2im(frame);
[imind,cm] = rgb2ind(im,256);
if first
    imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
else
    imwrite(imind,cm,filename,'gif','WriteMode','append', 'DelayTime',0);
end

end
