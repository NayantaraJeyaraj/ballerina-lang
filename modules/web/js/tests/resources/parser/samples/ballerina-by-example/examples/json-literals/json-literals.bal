import ballerina.lang.system;

function main (string[] args) {

    //Creates an empty JSON Object.
    json empty = {};

    int age = 30;
    //Create a JSON object. Keys can be defined with or without quotes.
    //Values can be any expression.
    json p = {fname:"John", lname:"Stallone", "age":age};
    system:println(p);

    //You can access the object values by using dot (.) notation or array index notation.
    json firstName = p.fname;
    system:println(firstName);

    //Array index notation allows you use any string valued expression as the index.
    json lastName = p["lname"];
    system:println(lastName);

    //Add or change object values.
    p.lname = "Silva";
    p["age"] = 31;
    system:println(p);

    //Nested JSON objects.
    json p2 = {fname:"Peter", lname:"Stallone", "age":age,
                  address:{line:"20 Palm Grove",
                              city:"Colombo 03",
                              country:"Sri Lanka"}};
    system:println(p2);

    p2.address.province = "Western";
    system:println(p2);
}
