#!/bin/bash

# Check Node.js and npm versions
node -v
npm -v

# Create a working directory
mkdir testem-workshop-yourname
cd testem-workshop-yourname

# Check if Testem is installed
testem --help

# Install Testem if not installed
npm install testem

# Execute Testem
./node_modules/.bin/testem

# Open Testem in browser
echo "Open the following address in your browser: http://localhost:7357"

# Create hello_spec.js
cat <<EOF > hello_spec.js
describe('hello', function() {
  it('should say hello', function() {
    expect(hello()).toBe('hello world');
  });
});
EOF

# Create hello.js
cat <<EOF > hello.js
function hello() {
  return "hello world";
}
EOF

echo "Setup completed. Please follow the steps for Windows if needed."
