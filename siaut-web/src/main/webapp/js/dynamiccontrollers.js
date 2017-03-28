	/*
	Aqui s�o definidos todos os controllers a serem utilizados pelos estados de sua aplica��o.
	Cada estado � composto por um controller (js) e uma tela (html)
	Os estados s�o definidos no App.js
	As p�ginas s�o armazenadas na pasta pages
*/
var DEFAULT_VIEW = "splash";
angular.module('webApp').controller('SplashController', function ($scope, $rootScope, Log, WebServiceX, Analytics, Error, Utils) {
        Log.debug("SplashController()");
        $scope.container = {};     
        $rootScope.currentview.id = 'splash';
        $rootScope.currentview.group = 'Splash';
        $rootScope.currentview.title = 'Splash';
        $rootScope.currentview.icon = 'fa-picture-o';
        $rootScope.currentview.locked = false;
        $rootScope.currentview.menu = false;
        $rootScope.currentview.description = 'Tela de Splash';        
    });
angular.module('webApp').controller('PrincipalController', function ($scope, $rootScope, Log, WebServiceX, Analytics, Error, Utils, Alert) {
        Log.debug("PrincipalController()");
        
        //IMPLEMENTAR OS BOTOES
        
        $rootScope.currentview.id = 'principal';
        $rootScope.currentview.group = 'Principal';
        $rootScope.currentview.title = 'Principal';
        $rootScope.currentview.icon = 'fa-home';
        $rootScope.currentview.locked = true;
		$rootScope.currentview.menu = true;
        $rootScope.currentview.description = 'Tela Principal';       
        $scope.lampadaCozinhaLigado = false;
        
        $scope.ligarBotao = function(id, status) {
        	WebServiceX.read("ws/automacao/ligar/"+id+"/"+status, $rootScope.headers)
        	.then(function(res) {
        		if(!res.temErro) {
        			$scope.lampadaCozinhaLigado = true;
        			//Funcionou
        			Alert.showMessage("Seu serviço é uma ordem", res.msgsErro[0]);
        			$scope.$apply();
        		} else if(res.temErro) {
        			//Erro esperado
        			Alert.showMessage("Canal fechado", res.msgsErro[0]);
        			console.info(res.msgsErro[0]);
        			$scope.$apply();
        		}
        	}, function(xhr, status, err) {
        		
        		//Erro Inesperado
      				var message = "Falha ao executar ação";
      				if (xhr && xhr.responseText) {
        				try {
        					var response = JSON.parse(xhr.responseText);
	      					if (response && response.msgsErro && response.msgsErro.length > 0) {
	      						message = response.msgsErro[0];
	      					}	        					        					
        				} catch(ignore) {
        				}
      				}
      				Error.handler(message, err);
	        		if (err == UNAUTH) {
	        				$rootScope.goAuth();
	        		}
        	});
        };   
        
        
    });

