def time_string(t)
Time.at(t).utc.strftime("%H:%M:%S") 
end

# .strftime : Formats time according to the directives in the given format string.
