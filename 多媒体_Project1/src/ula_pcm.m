function [a_quan]=ula_pcm(a,n,u)
%ULA_PCM 	u-law PCM encoding of a sequence
%       	[A_QUAN]=MULA_PCM(X,N,U).
%       	X=input sequence.
%       	n=number of quantization levels (even). 量化级数	
%		a_quan=quantized output before encoding.
%       U the parameter of the u-law μ律参数

% todo: 
x = ulaw(a, u);  % μ律压缩函数
y = u_pcm(x, n);    % 均匀量化
a_quan = inv_ulaw(y, u);    % μ律扩张函数(μ律压缩函数的反函数)


end