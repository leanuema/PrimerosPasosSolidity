pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;
//import "./Banco.sol"
import {Banco, Banco2, Banco3} from "./Banco.sol";

contract UsuarioBanco is Banco {

    //solo se puede heredar metodos public e internal
    function altaCliente(string memory nombreCliente) public {
        nuevoCliente(nombreCliente);
    }

    function ingresarDinero(string memory nombreCLiente, uint dineroIngresar) public {
        clienteMapping[nombreCLiente].dinero = clienteMapping[nombreCLiente].dinero + dineroIngresar;
    }

    function retirarDinero(string memory nombreCLiente, uint dineroRetirar) public returns (bool) {
        if (int(clienteMapping[nombreCLiente].dinero) - int(dineroRetirar) < 0) {
            clienteMapping[nombreCLiente].dinero = clienteMapping[nombreCLiente].dinero - dineroRetirar;
            return true;
        } else {
            return false;
        }
    }

    function consultarDinero(string memory nombreCLiente) public view returns (uint) {
        return clienteMapping[nombreCLiente].dinero;
    }
}
