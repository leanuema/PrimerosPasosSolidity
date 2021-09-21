pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract eventos {

    //declaramos los eventos a utilizar
    event nombre_event01(string _nombrePersona);
    event nombre_evento2(string _nombrePersona, uint _edad);
    event nombre_evento3(string, uint, address, bytes32);
    event abortar_mision();

    function emitirEvento1(string memory nombre_persona) public {
        emit nombre_event01(nombre_persona);
    }

    function emitirEvento2(string memory nombre_persona, uint edad) public {
        emit nombre_evento2(nombre_persona, edad);
    }

    function emitirEvento3(string memory nombre_persona, uint edad) public {
        bytes32 hash = keccak256(abi.encodePacked(nombre_persona, edad, msg.sender));
        emit nombre_evento3(nombre_persona, edad, msg.sender, hash);
    }

    function emitirEvento4() public {
        emit abortar_mision();
    }
}
