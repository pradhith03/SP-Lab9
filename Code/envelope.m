function [t_env, env] = envelope(a,d,s,sd,r,fs)

    tattack = 0:1/fs:a;
    env = tattack/a;
    t_env = tattack;

    tdecay = (a+(1/fs)):1/fs:a+d;
    t_env = [t_env,tdecay];

    m = (s-1)/d;
    env1 = m*(tdecay-a) + 1;
    env = [env,env1];

    tsustain = (a+d+(1/fs)):1/fs:a+d+sd;
    t_env = [t_env, tsustain];
    A = ones(1,length(tsustain));
    env1 = s*A;
    env = [env, env1];

    trelease = (a+d+sd+(1/fs)):1/fs:a+d+sd+r;
    t_env = [t_env, trelease];
    m = -s/r;
    env1 = (trelease - (a+d+sd+r))*m;
    env = [env,env1];
end