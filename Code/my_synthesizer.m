function y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
    y = [];
    M = length(F_notes);
    for v = 1:M
            t = td_notes(v);
            [t_env, env] = envelope(t*adsr(1),t*adsr(2),adsr(3),t*adsr(4),t*adsr(5),fs);
            xn = harmonics(A,F_notes(v),P,td_notes(v),fs);

            y = [y, xn.*env];
    end
end