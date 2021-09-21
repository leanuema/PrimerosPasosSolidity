pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract causa_beneficas {

    struct Causa {
        uint id;
        string nombre_de_causa;
        uint precio_objetivo;
        uint cantidad_recaudado;
    }

    uint contador_causa = 0;
    mapping(string => Causa) relacion_causa;

    //permite dar de alta una nueva causa
    function nueva_causa_beneficas(string memory nombre_causa, uint precio_objetivo) public {
        contador_causa = contador_causa ++;
        /*Causa memory nuevaCausa = Causa(contador_causa, nombre_causa, precio_objetivo, 0);
        relacion_causa[nombre_causa] = nuevaCausa;*/
        relacion_causa[nombre_causa] = Causa(contador_causa, nombre_causa, precio_objetivo, 0);
    }

    //funcion que valida si se llego a la cantidad recaudada total
    function objetivo_cumplido(string memory nombre_causa, uint cantidad) private view returns (bool) {
        Causa memory causaActual = relacion_causa[nombre_causa];
        if (causaActual.precio_objetivo >= (causaActual.cantidad_recaudado + cantidad)) {
            return true;
        } else {
            return false;
        }
    }

    //permite donar a una causa
    function donar_a_causa(string memory nombre_causa, uint dinero_a_donar) public payable returns (bool) {
        uint recaudado = relacion_causa[nombre_causa].cantidad_recaudado;
        if (objetivo_cumplido(nombre_causa, dinero_a_donar)) {
            recaudado = relacion_causa[nombre_causa].cantidad_recaudado + dinero_a_donar;
            return true;
        } else {
            return false;
        }
    }

    //funcion devuelve si se llego al objetivo
    function comprobar_causa(string memory _nombre) public returns(bool, uint) {
        if(relacion_causa[_nombre].cantidad_recaudado <= relacion_causa[_nombre].precio_objetivo) {
            return (true, relacion_causa[_nombre].cantidad_recaudado);
        } else {
            return (false, relacion_causa[_nombre].cantidad_recaudado);
        }
    }
}
