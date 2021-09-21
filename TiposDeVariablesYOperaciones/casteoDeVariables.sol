pragma solidity >=0.5.4 <0.7.0;

contract casteo {
    
    //casteo de variables enteros
    uint8 enteroOchoBits = 42;
    uint64 enteroSesentaCuatroBits = 60000;
    uint enteroDocientosCincuentaYSeisBits = 1000000;
    
    int16 enteroDiesseisBits = -156;
    int120 enteroCientoVeinteBits = 900000;
    int entero = 5000000;
    
    //casteo de variables
    uint64 public casteoUno = uint64(enteroOchoBits);
    uint64 public casteoDos = uint64(enteroDocientosCincuentaYSeisBits);
    int public casteoCuatro = int(enteroCientoVeinteBits);
    
    //casteo de entero con signo a entero sin signo
    uint8 public casteoTres = uint8(enteroDiesseisBits);
    int public casteoCinco = int(enteroDocientosCincuentaYSeisBits);
    
    function convertir(uint8 _k) public returns(uint64) {
        return uint64(_k);
    }
}