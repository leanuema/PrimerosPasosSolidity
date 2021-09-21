pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract modificadores {

    //modificador de view, funciona como un servicio get unicamente parar visualizar los datos
    string[] student_list;

    function nuevoAlumno(string memory _alumno) public {
        student_list.push(_alumno);
    }

    function verAlumno(uint _i) public view returns(string memory) {
        return student_list[_i];
    }

    uint x = 10;
    function sumarX(uint _i) public view returns(uint) {
        return x + _i;
    }

    //modificador de pure, no accede a los datos, depende de los parametros de la funcion para ejecutar el codigo
    function exponenciacion(uint _a, uint _b) public pure returns(uint) {
        return _a ** _b;
    }

    //modificador de payable, permiten recibir eth
    struct Cartera {
        string nombre_persona;
        address direccion_persona;
        uint dinero_persona;
    }

    mapping(address => Cartera) dinero_cartera;

    function pagarDinero(string memory nombre_persona, uint dinero_persona) public payable {
        Cartera memory mi_cartera;
        mi_cartera = Cartera(nombre_persona, msg.sender, dinero_persona);
        dinero_cartera[msg.sender] = mi_cartera;
    }

    function visualizarSaldo() public view returns(Cartera) {
        return dinero_cartera[msg.sender];
    }
}
