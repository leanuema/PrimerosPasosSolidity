pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract masVariables {
    
    //variables de tipo string (cadena de texto UTF8)
    string miPrimerString;
    string public saludo = "Hola mundo";
    string public vacio = "";
    
    //variables de tipo boolean
    bool miPrimerBoolean;
    bool public flagTrue = true;
    bool public flagFalse = false;
    
    //variables de tipo bytes (se declaran desde 1 bytes hasta 32)
    bytes32 miPrimerBytes;
    bytes4 segundoBytes;
    string public nombre = "leandro";
    bytes32 public hash = keccak256(abi.encodePacked(nombre));
    
    bytes4 public identificador;
    function ejemploBytes4 () public {
        identificador = msg.sig;
    }
    
    //variables de tipo address
    address miPrimeraDireccion;
    address public direccionLocal = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
}