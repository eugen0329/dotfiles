mw = tonumber(arg[1])
a = string.gsub(arg[2], os.getenv("HOME"), '~')
s = string.sub(a, -mw)
d = string.len(a) - string.len(s)
dd = mw - string.len(s)

function round(x)
  return x>=0 and math.floor(x+0.5) or math.ceil(x-0.5)
end


if d == 0 then
  print(string.rep(' ', math.floor(dd/2)) .. s .. string.rep(' ', round(dd/2)))
else
  print('…' .. s)
end

