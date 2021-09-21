pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Banco {

    //se define un struct
    struct Cliente {
        string nombre;
        address direccion;
        uint dinero;
    }

    //mapping que relaciona el nombre del cliuente con el tipo de dato del cliente
    mapping(string => Cliente) clienteMapping;

    function nuevoCliente(string memory nombreCliente) public {
        clienteMapping[nombreCliente] = Cliente(nombreCliente, msg.sender, 0);
    }
}

contract Banco2 {

}

contract Banco3 {

}