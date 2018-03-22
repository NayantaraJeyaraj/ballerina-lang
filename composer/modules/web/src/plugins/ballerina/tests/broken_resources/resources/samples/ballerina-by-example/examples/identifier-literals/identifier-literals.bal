import ballerina/lang.system;
import ballerina/doc;

function main (string[] args) {
    //The vertical bar (|) character is used to demarcate the identifier name.
    //This is similar to string literals (using double quote characters to demarcate).
    string |first name| = "John";
    string |last name| = "Gosling";

    //Invoking a function with identifier literal as a parameter.
    string name = |combine names|(|first name|, |last name|);
    system:println(name);
}

@doc:Description {value:"Sample function defined with function name and input parameter using identifier literals."}
function |combine names| (string |first value|,
                          string |last name|) (string) {
    return |first name| + |last name|;
}

@doc:Description {value:"Struct defined using identifier literals"}
struct |person record| {
    string |first name|
    string |last name|
    int age;
}


