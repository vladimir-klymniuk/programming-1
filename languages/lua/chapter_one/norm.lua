function norm (x, y)
    return (x^2 + y^2) ^ 0.5
end

function twice (x)
    return 2 * x
end

-- interactive mode
-- dofile("norm.lua")
-- n = norm(3/4, 1.0)
-- print(twice(n))