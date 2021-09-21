pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract sentenciaIf {

    //numero ganador
    function probarSuerte(uint _numero) public pure returns (bool){
        if (_numero == 100) {
            return true;
        } else {
            return false;
        }
    }

    //calculo valor absoluto de un numero
    function valor_absoluto(int256 _numero) public pure returns(uint256) {
        uint256 valorAbsolutoNumero;
        if(_numero < 0) {
            valorAbsolutoNumero = uint256(-_numero);
        } else {
            valorAbsolutoNumero = uint256(_numero);
        }
        return valorAbsolutoNumero;
    }

    //devolver trie si el numero es par y tiene 3 cifras
    function parTresCifras(uint _numero) public pure returns(bool) {
        if(_numero % 2 == 0 && _numero <= 100 && _numero < 999) {
            return true;
        } else {
            return false;
        }
    }

    //votacion con 3 candidatos
    function votar(string memory _nombreCandidato) public pure returns(string memory){
        string memory mensaje;
        if(keccak256(abi.encodePacked(_nombreCandidato)) == keccak256(abi.encodePacked("Leandro"))) {
            mensaje = "se voto correctamente a Leandro";
        } else if(keccak256(abi.encodePacked(_nombreCandidato)) == keccak256(abi.encodePacked("Gabriel"))) {
            mensaje = "se voto correctamente a Gabriel";
        } else if(keccak256(abi.encodePacked(_nombreCandidato)) == keccak256(abi.encodePacked("Maria"))) {
            mensaje = "se voto correctamente a Maria";
        } else {
            mensaje = "no se voto a ninguno";
        }
        return mensaje;
    }
}
