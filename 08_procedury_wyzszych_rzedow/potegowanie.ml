let compose f g = function x -> f (g x);;
let iterate n f = 
    if n = 0 then
        identity
    else
        compose f (iterate (n - 1) f);;

