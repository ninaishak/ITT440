local socket = require("socket")
host = host or "10.12.6.12"
port = port or 9999
if arg then
	host = arg[1] or host
	port = arg[2] or port
end
print("Attempting connection to host '" ..host.. "' and port " ..port.. "...")
c = assert(socket.connect(host, port))
print("Connected! Please type stuff (empty line to stop):")
m = io.read()
while m and m ~= "" and not e do
	assert(s:send(m .. "\n"))

	rev, err = c:receive()
	if not err then
		print("Reversed Message: " .. rev)

	end

	m = io.read()
end
