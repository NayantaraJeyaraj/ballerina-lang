function testOverloading (string a, int b) returns (string) {
    return a + b;
}

function testOverloading (int a, int b) returns (int) {
    return a + b;
}