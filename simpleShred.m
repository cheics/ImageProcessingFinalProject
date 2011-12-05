function [ outShred ] = simpleShred( imageIn, n_shred )
    
if mod(size(imageIn, 2),n_shred) ~= 0
	throw(...
		MException('simpleShred:shredError', ...
		'Needs number of rows %i to evenly divide by %i',...
		size(imageIn, 1), n_shred)...
		);
end

shredStrips=size(imageIn, 2)/n_shred;

outArrays=createArrays(n_shred, [shredStrips size(imageIn, 2) 3]);

for j=1:n_shred
	outArrays{j}=imageIn(:, (j-1)*shredStrips+1:(j)*shredStrips, :);
end

outShred=struct('imageData', [], 'order', []);
[outShred.imageData, outShred.order]=shuffle(outArrays);