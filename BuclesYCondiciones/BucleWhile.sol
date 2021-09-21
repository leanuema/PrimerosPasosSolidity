pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract BucleWhile {

    //suma de numeros impares menores a 100
    function suma_impares() public pure returns (uint) {
        uint acumulator = 0;
        uint contador = 1;
        while (contador <= 100) {
            if (contador % 2 != 0) {
                acumulator = acumulator + contador;
            }
            contador ++;
        }
        return acumulator;
    }

    //esperar a usuario 5seg
    uint tiempo;

    function fijar_tiempo() public {
        tiempo = now;
    }

    function esperar() public view returns (bool) {
        while (now < tiempo + 5 seconds) {
            return false;
        }
        return true;
    }

    //devolver el siguiente numero primo
    function siguiente_numero_primo(uint _p) public pure returns (uint) {
        uint acumulator = _p + 1;
        bool flag = true;
        while (true) {
            uint aux = 2;
            while (aux < acumulator) {
                if (acumulator % aux == 0) {
                    flag = false;
                    break;
                }
                aux ++;
            }
            if(flag = true) {
                break;
            }
            acumulator ++;
        }
        return acumulator;
    }
}
