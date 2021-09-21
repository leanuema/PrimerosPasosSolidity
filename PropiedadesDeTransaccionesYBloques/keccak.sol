pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

//  @title keccak256 and import ABIEncoderV2
//  @author leanuema
//  @notice the contract contains functions to practice keccak256 with method abi.encodePacked
//  @dev Es una funcion criptografica que realiza el computo del hash de los argumentos que recibe por parametro, 
    //  se basa en el algoritomo Secure Hash Algorithm y 256bits es porque realiza un
    //  computo del hash de 256bits que son 32 bytes
    //  para calcular el hash se debera usar la funcion auxiliar abi.encodePacked que devuelve bytes, 
    //  toma una serie de argumentos que devuelve los bytes que se utilizan en el keccak256
//  @param string, uint, address
//  @return bytes32
contract hash {
    
    //Calcular el hash de un solo argumento pasado al hash
    function calcularHash(string memory _cadena) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_cadena));
    }
    
    //Calcular el hash de varios argumentos pasado al hash
    function carcularHash2(string memory _cadena, uint _k, address _direccion) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_cadena, _k, _direccion));
    }
    
    //Calcular hash de varios argumentos ademas de parametros extra en el encodePacked
    function carcularHash3(string memory _cadena, uint _k, address _direccion) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_cadena, _k, _direccion, "hola", uint(2)));
    }
    
}