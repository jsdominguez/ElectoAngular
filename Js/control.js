//dependencia ngMessages para la validacion
//=================================================

var control = angular.module("eleccion", ['ngMessages']);

control.controller("main", function($scope, $http)
 {

  //  funcion que trae lista la cantidad de votos , se ejecuta al inicio
  //=================================================
  $http.get("PHP/votos.php").success(function(data) {
    $scope.res = data;
  });
  //=================================================

  //funion que se ejecuta al momento de emitir el voto
  //=================================================
  $scope.votar = function(datos)
   {
     //Recibe los parametros de insercion y los lleva al servidor
    $http.post("PHP/insert.php", datos).success(function(info)
    {
      var mensage = info;
      if (mensage.length > 0) //Si la respuesta(info) tiene un mensage es que hay un error en el DNI
      {
        $scope.datosincorrectos = mensage; //imprimos el mensaje de error que trae el servidor
        $scope.validar = "validarnumero"; // Le damos estilo al mensage de error
      }
      else // Si la respuesta no trae ni un mensage entoncs DNI es corrcto
      {
        $http.get("PHP/votos.php").success(function(data)
        {
          $scope.res = data; // cargamos los nuevos votos que se han Emitido
        });
        swal({ //Lanzamos en alert de Agradecimiento
          title: "Genial!",
          text: "Gracias por participar en esta simulacion de voto electoral.",
          imageUrl: "img/pelo.jpg"
        });
      }
    });
  };
  //=================================================
});
