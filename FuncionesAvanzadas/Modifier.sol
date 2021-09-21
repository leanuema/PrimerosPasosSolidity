pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Modifier {

    //ejemplo de solo propietario del contrato puede ejecutar la funcion
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier soloPropietario() {
        require(msg.sender == owner, "No tiene permisos para ejecutar la funcion");
        _;
    }

    function ejemploUno() public soloPropietario() {
        //codigo de la funcion para el propietario
    }

    struct Cliente {
        address direccionCliente;
        string nombreCliente;
    }

    mapping(string => address) nombreDireccionMapping;

    function nuevoCliente(string memory nombre) public {
        nombreDireccionMapping[nombre] = msg.sender;
    }

    modifier soloClientes(string memory nombre) {
        require(nombreDireccionMapping[nombre] == msg.sender, "");
        _;
    }

    function ejemploDos(string memory nombre) public soloClientes(nombre) {
        //logica de la funcion para clientes
    }

    modifier mayorDeEdad(uint edadMinima, uint edadUsuario) {
        require(edadUsuario >= edadMinima);
        _;
    }

    function ejemploTres(uint edadUsuario) public mayorDeEdad(18, edadUsuario) {
        //codigo a ejecutar para los conductores
    }
}
