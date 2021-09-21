pragma solidity >=0.5.4 <0.7.0;

contract ValoresDeRetorno {

    //funcion que nos devuelve un saludo
    function saludos() public returns (string memory) {
        return "Hola mundo";
    }

    //funcion para calcular una multiplicacion
    function multiplicacionEnteros(uint _a, uint _b) public returns (uint) {
        return _a * _b;
    }

    //funcion si el numero es par
    function esImpar(uint _a) public returns (bool) {
        if (_a % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    //funcion que divide cociente y resto con mas de un valor
    function division(uint _a, uint _b) public returns (uint, uint, bool) {
        uint q = _a / _b;
        uint r = _a % _b;
        if (r == 0) {
            return (q, r, true);
        } else {
            return (q, r, false);
        }
    }

    //practica para manejo de valores devueltos
    //asignacion multiple
    function numeros() public  returns (uint, uint, uint, uint, uint, uint) {
        return (1, 2, 3, 4, 5, 6);
    }

    function todos_los_valores() public {
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;
        uint f;
        (a, b, c, d, e, f) = numeros();
    }

    function ultimoValor() public {
    (,,,,,uint ultimo) = numeros();
    }
}
