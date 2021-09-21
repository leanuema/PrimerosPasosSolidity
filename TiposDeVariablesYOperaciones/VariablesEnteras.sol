pragma solidity >=0.5.4 <0.7.0;

contract enteros {
    
    //variables enteras sin signo(solo enteros)
    uint miPrimerEntero;
    uint miPrimerEnteroInicializado = 3;
    uint cota = 5000;
    
    //variables enteras sin signo con un numero especifico de bits
    uint8 entero8Bits;
    uint64 entero64Bits = 7000;
    uint16 entero16Bits;
    
    //variables enteras con signo(pueden ser positivas como negativas)
    int miPrimerEnteroConSigno;
    int miPrimerEnteroInicializadoConSigno = -32;
    int miEntero2 = 65;
    
    //variables enteras con signo con numero especifico de bits
    int72 enteroConSigno72Bits;
    int240 enteroConSigno240Bits = 90000;
    
}