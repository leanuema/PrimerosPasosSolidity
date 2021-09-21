pragma solidity >=0.5.4 <0.7.0;

contract EjemplosEnums {
    
    //enumeracion de interruptor
    enum estado {ON, OFF}
    
    //variable enum de tipo enum
    estado state;
    
    //modo inicializando la variable mediante nombre de la variable del enum
    function encenderInterruptor() public {
        state = estado.ON;
    }
    
    //modo inicializando la variable mediante puntero
    function fijarEstado(uint _k) public {
        state = estado(_k);
    }
    
    function Estado() public view returns(estado) {
        return state;
    }
    
    //enumeracion de direcciones
    enum direcciones {ARRIBA, ABAJO, DERECHA, IZQUIERDA}
    direcciones direccion = direcciones.ARRIBA;
    
    function arriba() public {
        direccion = direcciones.ARRIBA;
    }
    
    function abajo() public {
        direccion = direcciones.ABAJO;
    }
    
    function derecha() public {
        direccion = direcciones.DERECHA;
    }
    
    function izquierda() public {
        direccion = direcciones.IZQUIERDA;
    }
    
    function fijarDirecciones(uint _k) public {
        direccion = direcciones(_k);
    }
    
    function Direcciones () public view returns(direcciones) {
        return direccion;
    }
}