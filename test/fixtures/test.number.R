options( digits = 16 )
library( jsonlite )
library( FAdist )

mu = 0.5
beta = 1
probs = c( 0, 0.25, 0.5, 0.75, 1 )
y = qgumbel( probs, beta, mu )

cat( y, sep = ",\n" )

data = list(
	mu = mu,
	beta = beta,
	data = probs,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/number.json" )
