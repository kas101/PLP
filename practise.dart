const global = 'Hello, world';

void main() {
  var text = null;
  var number = 60;
  var urlString = 'https://www.google.com';
// Make sure the variable has a non-null value.
  assert(text != null, 'text');

// Make sure the value is less than 100.
  assert(number < 100, 'number');

// Make sure this is an https URL.
  assert(
    urlString.startsWith('https'),
    'secure',
  );
}
