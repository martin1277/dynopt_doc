options = optimset('LargeScale','off','Display','iter');
options = optimset(options,'GradObj','on','GradConstr','on');
options = optimset(options,'MaxFunEvals',1e5);
options = optimset(options,'MaxIter',1e5);
options = optimset(options,'TolFun',1e-7);
options = optimset(options,'TolCon',1e-7);
options = optimset(options,'TolX',1e-7);

optimparam.optvar = 3; 
optimparam.objtype = []; 
optimparam.ncolx = 5;
optimparam.ncolu = 2; 
optimparam.li = ones(3,1)*(1/3);
optimparam.tf = 1;
optimparam.ui = ones(1,3)*7.35; 
optimparam.par = []; 
optimparam.bdu = [6.2813 8.3894];
optimparam.bdx = [0 1;0 1;0.9085 7.4936;0.0320 2.1760]; 
optimparam.bdp =[];
optimparam.objfun = @objfun; 
optimparam.confun = [];
optimparam.process = @process;
optimparam.options = options;

[optimout,optimparam]=dynopt(optimparam)