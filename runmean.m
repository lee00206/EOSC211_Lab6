runmean=zeros(1, length(x));
zm=zeros(1,length(x));

for i=1:length(x)
    if i-w>0 && length(x)>=i+w
    for j=i-w:i+w
        runsum=runsum+x(j);
    end
    zm(i)=median(x(i-w:i+w));
    runmean(i)=runsum/winlen;
    runsum=0;
    end
end

z=runmean;

%Another way of getting runmean is changing the length in for loop: For
%i=1+w:length(x)-w. This would give the same runmean values, but I didn't
%implement this method because I want to evaluate from 1 to length(x) so
%that it doesn't miss any values.
