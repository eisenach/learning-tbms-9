function check(a, b) {
    if (a > b) {
      console.log('A è maggiore di B');
    } else if (a < b) {
      console.log('A è minore di B');
    } else {
      console.log('A deve per forza essere uguale a B');
    }
}

////////////////////////////////7

max = 10;
ciro = 1;

console.log('Avanti Ciro');

while ( ciro < max ) {
	console.log('Ciro e Max: ', ciro, max);
  check( ciro, max );
  ciro = ciro + 2;
}
console.log('Dopo Ciro');

