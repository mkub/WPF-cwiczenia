let zera_silni n = 
    let rec count acc five_power =
        if five_power > n then
            acc
        else
            count (acc + n / five_power) (five_power * 5) in
    count 0 5;;
