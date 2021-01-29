clear

% INPUTS
load lab1
x=temperature; % input time series
winlen=5; % the size of your window (an ODD number)
winlen_med=7;
w=(winlen-1)/2;
runmean=zeros(1, length(x));
zm=zeros(1,length(x));
runsum=0;

% CALCULATION
runmean; % Now execute the code in runmean to do the work

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


% OUTPUTS
t=1:length(x);
figure(1);clf; hold on;
plot(t,x,'b'); % original
plot(t,z,'.-r','linewi',1.5); % Now add the output
plot(t,zm,'og');