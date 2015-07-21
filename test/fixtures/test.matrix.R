options( digits = 16 )
library( jsonlite )
library( FAdist )

mu = 12
beta = 1
probs = 0:24 / 25
y = qgumbel( probs, beta, mu )

cat( y, sep = ",\n" )

data = list(
	mu = mu,
	beta = beta,
	data = probs,
	expected = y
)


write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/matrix.json" )
