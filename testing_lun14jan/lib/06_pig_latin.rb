def translate(str)
   
    if str.match(/\s/)
        a = str.split
        a.map!{|el| 
            if el.match(/\A[aeiouy]/)
                el += "ay"
            elsif el.match(/[^aeiouy][^aeiouy]/)
                el = el[2..-1] + el[0..1] + "ay"
            else
                el = el[1..-1] + el[0] + "ay"
            end}
        return a.join(" ")
    end
    
    case str[0..2]
        when /sch/
        str1 = str[0..2]
        str = str[3..-1]
        str += str1 + "ay"
        return str

        when /(.)qu/ # cas premiere lettre= n'importe laquelle, suivie de "qu"
        str1 = str[0..2]
        str = str[3..-1]
        str += str1 + "ay"
        return str  
    
    end

    case str[0..1]
        when /qu/
        str1 = str[0..1]
        puts str1
        str = str[2..-1]
        str += str1 + "ay"
        return str
    end

    case str[0]
        when /[aeiouy]/i  # c'est le cas où la premiere lettre est une voyelle
            str += "ay"
            return str
        when /[^aeiouy]/i # cas des consonnes (3, 2, ou 1 consonne en premier)
            
            
            if str.match(/[^aeiouy][^aeiouy][^aeiouy]/i)
                str1 = str[0..2]
                str = str[3..-1]
                str += str1 + "ay" #a faire en slice aussi
                return str

            elsif str.match(/[^aeiouy][^aeiouy]/i)
                str1 = str[0..1]
                str = str[2..-1]
                str += str1 + "ay"
                return str

            else str.match(/[^aeiouy]/i)
                str1 = str[0]
                str = str[1..-1]
                str += str1 + "ay"
                return str
            end
    end


end


translate("quiet")