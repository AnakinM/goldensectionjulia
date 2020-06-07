module univaropt

function golden_section(f, a, b, eps=1e-5, max_steps=10)
    tau = (sqrt(5) - 1) / 2
    p = b - (b - a) * tau
    q = a + (b - a) * tau
    fp = f(p)
    fq = f(q)
    while abs(b - a) < eps
        if fp <= fq
            b = q
            q = p
            p = b - (b - a) * tau
            fq = fp
            fp = f(p)
        else
            a = p
            p = q
            q = a + (b - a) * tau
            fp = fq
            fq = f(q)
        end
    end
    return (a + b) / 2
end
end

export golden_section