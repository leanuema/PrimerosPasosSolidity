pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract funciones {

    //aniadir dentro de un array de direcciones, la direccion de la persona que ejecute la funcion
    address[] public direcciones;

    function nueva_direccion() public {
        direcciones.push(msg.sender);
    }

    //computar el hash de los datos proporcionados como parametro
    bytes32 public hash;
    function hash_funcion(string memory _datos) public {
        hash = keccak256(abi.encodePacked(_datos));
    }

    struct Comida {
        string name;
        string ingrediente;
    }

    Comida public hamburguesa;

    function food(string memory ingrediente) public {
        hamburguesa = Comida("hamburguesa", ingrediente);
    }

    struct Alumnos {
        string name;
        address direction;
        uint age;
    }

    bytes32 public hash_id_alumno;
    Alumnos[] public student;
    mapping(string => bytes32) studentMap;

    //calculamos el hash del alumno
    function calculate_student_hash(string memory _name, address _direction, uint _age) private {
        hash_id_alumno = keccak256(abi.encodePacked(_name, _direction, _age));
    }

    //guardamos dentro de una funcion public una lista de alumnos
    function new_student(string memory _name, address _direction, uint _age) public {
        student.push(Alumnos(_name, _direction, _age));
        calculate_student_hash(_name, msg.sender, _age);
        studentMap[_name] = hash_id_alumno;
    }

}
