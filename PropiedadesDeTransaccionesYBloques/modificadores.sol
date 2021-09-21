pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

//  modificadores "memory" se guardan en memoria unicamente, mientras que los "storage" se guardan en la blockchain
//  modificador "payable" sirve para enviar y recibir ethers, se utiliza para variables de tipo address
contract public_private_internal {
    
    //modificadores public, forma parte de la interfaz del contrato
    uint public miEntero = 45;
    string public miString = "Leandro";
    address public miAddress;
    
    constructor() public {
        miAddress = msg.sender;
    }
    
    //modificador de private, solo estan visibles en el contrato que estan definidos, no por fuera
    uint private miEnteroPrivado = 10;
    bool private flag = true;
    
    function test(uint _k) public {
        miEnteroPrivado = _k;
    }
    
    //modificador internal, al igual que private, solo visibles dentro del contrato, o contratos que deriven de el, se utiliza en herencia
    bytes32 internal hash = keccak256(abi.encodePacked("hola"));
    address internal direccion = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
}