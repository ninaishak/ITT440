local socket = require("socket")
host = host or "10.12.6.12"
port = port or 9999
if arg then
	host = arg[1] or host
	port = arg[2] or port
end
print("Binding to host '" ..host.. "' and port " ..port.. "...")
s = assert(socket.bind(host, port))
i, p   = s:getsockname()
assert(i, p)
print("Waiting connection from talker on " .. i .. ":" .. p .. "...")
c = assert(c:accept())
print("Connected. Here is the stuff:")
m, err = c:receive()
while not err do
	reversedString = m.reverse(l)
	c:send(reversedString .. "\n")
	m, err = c:receive()
end
print(err)
