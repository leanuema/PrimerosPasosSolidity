pragma solidity >=0.5.4 <0.7.0;

contract operadores {

    //operadores arigmeticos
    uint a = 32;
    uint b = 4;
    uint public suma = a + b;
    uint public resta = a - b;
    uint public division = a / b;
    uint public multiplicacion = a * b;
    uint public resto = a % b;
    uint public exponencial = a ** b;

    //comprar enteros
    uint c = 3;
    uint d = 3;

    bool public test_1 = a > b;
    bool public test_2 = a < b;
    bool public test_3 = c == d;
    bool public test_4 = a == d;
    bool public test_5 = a != b;
    bool public test_6 = a >= b;

    //operadores booleanos, criterio de divisibilidad entre 5: si el numero termina en 0 o 5
    function divisible(uint _k) public view returns(bool) {
        uint ultimaCifra = _k % 10;
        if(ultimaCifra == 0 || ultimaCifra == 5) {
            return true;
        } else {
            return false;
        }
    }

    function divisibleV2(uint _k) public view returns(bool) {
        uint ultimaCifra = _k % 10;
        if(ultimaCifra != 0 && ultimaCifra != 5) {
            return false;
        } else {
            return true;
        }
    }
}
