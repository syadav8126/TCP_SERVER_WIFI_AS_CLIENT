local module={}
function module.start()
x=5
print("loc 8")
srv=net.createServer(net.TCP)
print("New Server Started");
srv:listen(80,wifi.sta.getip(),function(conn)
conn:on("receive",function(conn,payload)
print(payload)
conn:send(x)
x=x+1
end)
end)
end
return module
