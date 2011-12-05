function [ outImage ] = unSimpleShred( inputImageVector, orderVector )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
	sortIndex=vertcat(1:size(orderVector, 2), orderVector);
	sortIndex=sortrows(sortIndex',2)';
	outImage=cell2mat(inputImageVector(sortIndex(1, :)));
end

