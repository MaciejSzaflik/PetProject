

Matrix = {}
Matrix.mt = {}
Matrix.mt.__add = Matrix.add


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

function Matrix.add(m1,m2)
	local toReturn = {}
	for i=1,n do
		toReturn = {}
		for j=1,m do
			toReturn[i][j] = m1[i][j] + m2[i][j]
		end
	end
	return toReturn
end

function Matrix.append(m1,m2)
	for i=1,n do
		toReturn = {}
		for j=1,m do
			m1[i][j] = m1[i][j] + m2[i][j]
		end
	end
	return toReturn
end
	