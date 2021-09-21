pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

library Operaciones {
    function division(uint _a, uint _b) public pure returns (uint) {
        require(_b > 0, "No se puede dividir por 0");
        return _a / _b;
    }

    function multiplicar(uint _a, uint _b) public pure returns (uint) {
        if (_a == 0 && _b == 0) {
            return 0;
        } else {
            return _a * _b;
        }
    }
}

contract Calculos {
    //using Operaciones for *; el asterisco funciona para usar todo tipo de variable al utilizar la libreria
    using Operaciones for uint;

    function calcularFunciones(uint _a, uint _b) public pure returns (uint, uint) {
        uint _q = _a.division(_b);
        uint _m = _a.multiplicar(_b);
        return (_q, _m);
    }
}
