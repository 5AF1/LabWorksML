function [X] = inverse_dft(R,I)
  N = (size(R)(1,1) -1)*2;
  
  R = R./(N/2);
  I = I./(N/2); #Added the - in sn below instead
  
  R(1,1) = R(1,1)/2;
  R(N/2+1,1) = R(N/2+1,1)/2;
  
  
  k = [0:(N/2)];
  i = [0:N-1];
  
  ik = i'*k;
  ik = (2*pi/N) .* ik;
  
  cs = cos(ik);
  sn = -sin(ik);
  
  R = cs*R;
  I = sn*I;
  
  X = R+I;
  
endfunction