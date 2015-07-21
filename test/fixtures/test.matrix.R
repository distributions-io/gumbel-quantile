options( digits = 16 )
library( jsonlite )

mu = 0
beta = 1
probs = 0:24 / 25
y = qgumbel( probs, mu, beta )

cat( y, sep = ",\n" )

data = list(
	mu = mu,
	beta = beta,
	data = probs,
	expected = y
)


write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/matrix.json" )
