pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract bucleFor {

    //sumar los 100 primeros numeros a partir del introducido
    function suma(uint _numero) public pure returns(uint) {
        uint acumulator = 0;
        for(uint i = _numero; i < (100 + _numero); i++) {
            acumulator = acumulator + i;
        }
        return acumulator;
    }

    address[] direcciones;

    function asociar() public {
        direcciones.push(msg.sender);
    }

    function comprobarAsociacion() public view returns(bool, address) {
        bool flag;
        address direccion_for;
        for(uint i = 0; i < direcciones.length; i++) {
            if(msg.sender == direcciones[i]) {
                flag = true;
                direccion_for = direcciones[i];
            }
        }
        return (flag, direccion_for);
    }

    //doble for, suma de los 10 primeros factoriales
    function sumaFactorial() public pure returns(uint) {
        uint acumulator = 0;
        for(uint i = 1; i <= 10; i++) {
            uint factor = 1;
            for(uint j = 2; j <= i; j++ {
                factor = factor * j;
            }
            acumulator = acumulator + factor;
        }
        return acumulator;
    }
}
