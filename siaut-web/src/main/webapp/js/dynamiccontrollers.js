	/*
	Aqui são definidos todos os controllers a serem utilizados pelos estados de sua aplicação.
	Cada estado � composto por um controller (js) e uma tela (html)
	Os estados são definidos no App.js
	As páginas são armazenadas na pasta pages
*/
var DEFAULT_VIEW = "splash";
angular.module('webApp').controller('SplashController', function ($scope, $rootScope, Log, WebServiceX, Analytics, Error, Utils) {
        Log.debug("SplashController()");
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
        $scope.lampadaLigaDesligada = 'aaaaaaaaaaaaaaaaa';
        $scope.items = [];
        $scope.id = '11';
        $scope.status = '12';
   //     $scope.addItem = function (itemCodigo, itemDescricao, itemPreco, itemQuantidade) {
     //       $scope.items.push({
       //         codigo: itemCodigo,
         //       descricao: itemDescricao,
           //     preco: itemPreco,
             //   quantidade, itemQuantidade
      //      });
        //};

        
        $scope.ligarBotao = function(componentes) {
        	WebServiceX.read("ws/automacao/ligar/"+componentes.lngId+"/"+componentes.lngSituacao, $rootScope.headers)
        	.then(function(res) {
          		if(!res.temErro) {
          			componentes.lngSituacao = res.objComponentesDTO.lngSituacao;
          			componentes.strNmBotao = res.objComponentesDTO.strNmCampo;
        			//Funcionou
        			Alert.showMessage("Seu serviço é uma ordem",  res.objComponentesDTO.strDeMensagem);
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
        
        $scope.carregarConfiguracoes = function() {
        	WebServiceX.readAll("ws/componentesresource/setup")
        	.then(function(res) {
        		//webstorm
        		if (res.temErro){
        			Alert.showMessage("Atenção",res.msgsErro[0]);
        		} else {
        			$scope.componentesresource = res.lstComponentesEntity;
        		}
        		$scope.$apply();
        		
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
        
        $scope.carregarConfiguracoes();
        
        $scope.abrir_produto = function(codigo){
            console.log('produto aberto : ' + codigo);
        }; 
        
        $scope.abrir_produto = function(codigo){
            console.log('produto aberto : ' + codigo);
        };
        
        
    });

