/*
	Aqui são definidos todos os controllers a serem utilizados pelos estados de sua aplicação.
	Cada estado � composto por um controller (js) e uma tela (html)
	Os estados são definidos no App.js
	As páginas são armazenadas na pasta pages
*/
var DEFAULT_VIEW = "splash";

angular.module('webApp').controller('PrincipalController', function ($scope, $rootScope, Log, WebServiceX, Analytics, Error, Utils, Alert) {
        Log.debug("PrincipalController()");
        
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
    });

angular.module('webApp').controller('LoginController', function ($scope, $rootScope, Log, WebServiceX, Analytics, Error, Utils, Alert) {
    Log.debug("LoginController()");
    $scope.user = {};
    $scope.userCadastro = {};
    $scope.isCadastrar=true;
    
    $scope.queroLogar = function(vontade) {
    	
    	$scope.isCadastrar = vontade;
    	
    }
    
    $scope.logar = function() {
    	if($scope.user.login && $scope.user.pwd){
    		
    		WebServiceX.create("ws/usuario/logar", JSON.stringify($scope.user))
        	.then(function(res) {
          		if(!res.temErro) {
          			$rootScope.headers = {token: res.token};
          			$rootScope.usuario = {nome: res.usuario};
          			$rootScope.go("principal");
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
    	} else {
  			Alert.showMessage("Atenção", "Preencha os campos corretamente!");

    	}
    	
    };   
    
    $scope.cadastrar = function() {
    	if($scope.userCadastro.email
    			&& $scope.userCadastro.senha
    			&& $scope.userCadastro.documento
    			&& $scope.userCadastro.telefone){
    		
    		$scope.userCadastro.senha = sha1($scope.userCadastro.senha);
    		
	    	WebServiceX.create("ws/usuario/cadastrar", JSON.stringify($scope.userCadastro))
	    	.then(function(res) {
	      		if(!res.temErro) {
	      			Alert.showMessage("Bem vindo!", "Seu usuario foi cadastrado com sucesso!");
	      			delete $scope.userCadastro;
	      			$scope.isCadastrar=true;
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
    	} else {
  			Alert.showMessage("Atenção", "Preencha os campos corretamente!");
    	}
    };   
    
});

