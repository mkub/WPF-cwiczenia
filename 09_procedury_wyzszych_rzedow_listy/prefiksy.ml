open List

let prefiksy xs = 
    let step (pref, acc) x =
        let _pref = x :: pref in
        if x = 0 then
            (_pref, _pref :: acc)
        else
            (_pref, acc)
    in rev (map rev (snd (fold_left step ([], []) xs)))
