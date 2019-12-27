function cantorPair(x,y)
	return (0.5*(x+y)*(x+y+1)) + y
end

function reverseCantorPair(v)
	local t = math.floor((-1 + math.sqrt(1 + 8 * v))/2);
	local x = t * (t + 3) / 2 - v;
	local y = v - t * (t + 1) / 2;
	return x, y
end