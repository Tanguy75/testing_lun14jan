def who_is_bigger(a, b, c)
    if a == nil || b == nil || c == nil #[a, b, c].all? &:nil? -> ne fonctionne pas
          "nil detected"
    else
        if a == [a, b, c].max
            "a is bigger"
        elsif b == [a, b, c].max
            "b is bigger"
        else
            "c is bigger"
        end
    end
end


def reverse_upcase_noLTA(str)
    str.reverse.upcase.tr_s('L','').tr_s('A','').tr_s('T','')
end



def array_42(arr)
    x = arr.select{|el| el == 42}
    x.none? ? false : true  # forme abrégée de If..Else..end -> condition ? if_true : if_false

end


def magic_array(arr)
a = arr.flatten.sort.map{|el| el *2}
b = a.delete_if{|el| el %3 == 0 }
c = b.uniq


end

magic_array([1, 2, 3, 4, 5, 6])