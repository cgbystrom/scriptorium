if not require("fail") then return end

terra bar()
end

bar:compile()
local what = bar.definitions[1].fptr

terra foo()
   var a  = what
end
foo()
