options( digits = 16 )
library( jsonlite )
library( FAdist )

mu = 2
beta = 3
probs = seq( 0, 1, 0.01 )
y = qgumbel( probs, beta, mu )

cat( y, sep = ",\n" )

data = list(
	mu = mu,
	beta = beta,
	data = probs,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/array.json" )
