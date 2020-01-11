open Array

let zamiany arr = 
    let n = length arr in
    for i = 1 to n do
        for j = (i + 1) to n do
            if arr.(j - 1) = i then
                begin
                    arr.(j - 1) <- arr.(i - 1);
                    arr.(i - 1) <- i
                end
        done
    done

        
