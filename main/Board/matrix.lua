Matrix = {}
Matrix.mt = {}
Matrix.mt.__add = Matrix.addSimple

function Matrix.new(n,m)
	local mt = {}
	setmetatable(mt, Matrix.mt)
	for i=1,n do
		mt[i] = {}
		for j=1,m do
			mt[i][j] = 0
		end
	end
	return mt
end

function Matrix.addSimple(m1,m2)
	local toReturn = Matrix.new(table.getn(m1),table.getn(m1[1]))
	
	for i=1,table.getn(m1) do
		toReturn[i] = {}
		for j=1,table.getn(m1[i]) do
			toReturn[i][j] = m1[i][j] + m2[i][j]
		end
	end
	return toReturn
end
Matrix.mt.__add = Matrix.addSimple

function Matrix.append(m1,m2)
	for i=1,n do
		toReturn = {}
		for j=1,m do
			m1[i][j] = m1[i][j] + m2[i][j]
		end
	end
	return toReturn
end
	