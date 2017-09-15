	/*
	Aqui são definidos todos os controllers a serem utilizados pelos estados de sua aplicação.
	Cada estado � composto por um controller (js) e uma tela (html)
	Os estados são definidos no App.js
	As páginas são armazenadas na pasta pages
*/
var DEFAULT_VIEW = "splash";

angular.module('webApp').controller('CountdownController', function($scope, $timeout,$rootScope, Log, WebServiceX, Analytics, Error, Utils) {
	$scope.count = 0;
	
	
//	$scope.incremento = function() {
//	      $scope.count++;
//	      if ($scope.count < 100) {
//	        $timeout($scope.incremento, 1000);
//	      }
//	    };
//	$scope.incremento();
	 
	 
    $scope.carregarTemperatura = function() {
     	WebServiceX.readAll("ws/temperaturaresource/temperatura")
    	.then(function(res) {
    		$scope.count++;
    		if ($scope.count < 100) {
//    			if (res.temErro){
//        			Alert.showMessage("Atenção",res.msgsErro[0]);
//        		} else {
//        			Alert.showMessage("Sucessoo",res.msgsErro[0]);
//        		}
    			$scope.sensoresresource = res.data;
    			$timeout($scope.carregarTemperatura, 1000);
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
    $scope.carregarTemperatura();
});


angular.module('webApp').controller('PrincipalController', function ($http, $scope, $rootScope, Log, WebServiceX, Analytics, Error, Utils, Alert, UsuarioSIAUT) {
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
        
        //função para carregar os dados do json.
        $scope.getUserInfo = function () {
        	//$http é para obtermos od dados do json.
            $http.post('http://localhost:8089/siaut/arquivo/objeto.json')
                .then(function (result) {
                	//Converter os dados para array.
    				//Teremos que disponibilizarmos os dados para $scope.user.
                    $scope.Objeto = result.data;
                    console.log(result.data);
                }, function(result) {
                    //somente error
                	$scope.Objeto = "Ocorreu erro ao abrir o arquivo JSON.";
                    console.log(result);
                });
        };
        $scope.getUserInfo();

        
        $scope.carregarConfiguracoesImovel = function() {
        	WebServiceX.create("ws/componentesresource/setup", JSON.stringify($rootScope.usuario.nuImovel),  JSON.stringify($rootScope.headers))
        	.then(function(res) {
        		//webstorm
        		if (res.temErro){
        			Alert.showMessage("Atenção",res.msgsErro[0]);
        		} else {
        			$scope.componentesresource = res.data;    
        			$scope.consolidadoresource = res.total;
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
        
        
        
        
        $scope.listarComodos = function() {
        	WebServiceX.create("ws/dispositivos/listarComodos", JSON.stringify($rootScope.headers))
        	.then(function(res) {
        		if (res.temErro){
        			Alert.showMessage("Atenção",res.msgsErro[0]);
        		} else {
        		   			  
        			$scope.comodos = res.comodos;
           		}
        		$scope.$apply();
        		
        	}, function(xhr, status, err) {
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
        
        $scope.listarImoveis = function() {
        	WebServiceX.create("ws/dispositivos/listarImoveis", JSON.stringify($rootScope.headers))
        	.then(function(res) {
        		if (res.temErro){
        			Alert.showMessage("Atenção",res.msgsErro[0]);
        		} else {
        			$scope.imoveis = res.imoveis;
        			if($scope.imoveis.length == 1){
        				$rootScope.headers.nuImovel = $scope.imoveis[0].nuImovel;
        				$scope.listarComodos();
        			}
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
        
        $scope.ligarTodosDispositivosImovel = function(){
        	WebServiceX.create("ws/dispositivos/ligarTodosDispositivosImovel", JSON.stringify($rootScope.headers))
        	.then(function(res) {
        		if (res.temErro){
        			Alert.showMessage("Atenção",res.msgsErro[0]);
        		} else {
        			$scope.dispositivos = res.dispositivos;
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
    	}
        
       /* $scope.ligarTodosDispositivosImovel = function(){
        	var res = UsuarioSIAUT.ligarTodosDispositivosImovel($rootScope.headers);
    		if (res.temErro){
    			Alert.showMessage("Atenção",res.msgsErro[0]);
    		} else {
    			$scope.dispositivos = res.dispositivos;
    		}
    		$scope.$apply();
        };
        
        $scope.listarImoveis = function() {
        	UsuarioSIAUT.listarImoveis($rootScope.headers).then(function(res) {
        			if (res.temErro){
            			Alert.showMessage("Atenção",res.msgsErro[0]);
            		} else {
            			$scope.imoveis = res.imoveis;
            			if($scope.imoveis.length == 1){
            				$rootScope.headers.nuImovel = $scope.imoveis[0].nuImovel;
            				$scope.listarComodos();
            			}
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
        		//$scope.$apply()
        };
        
        $scope.listarComodos = function() {
        	var res =  UsuarioSIAUT.listarComodos($rootScope.headers);
        		if (res.temErro){
        			Alert.showMessage("Atenção",res.msgsErro[0]);
        		} else {
        			$scope.comodos = res.comodos;
        		}
        		$scope.$apply();
        };*/
        

        
        
        $scope.irParaDispositivos = function(nuComodo) {
        	$rootScope.headers.nuComodo = nuComodo;
        	$scope.openView('listarDispositivos');
        };
    
        $scope.listarImoveis();
    	//$scope.carregarConfiguracoesImovel();
        
});

angular.module('webApp').controller('ListarDispositivosController', function ($scope, $rootScope, Log, WebServiceX, Analytics, Error, Utils, Alert) {
    Log.debug("DispositivosController()");
    
    $scope.ligarTodosDispositivosComodo = function(){
    	WebServiceX.create("ws/dispositivos/ligarTodosDispositivosComodo", JSON.stringify($rootScope.headers))
    	.then(function(res) {
    		if (res.temErro){
    			Alert.showMessage("Atenção",res.msgsErro[0]);
    		} else {
    			$scope.dispositivos = res.dispositivos;
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
	}
    
    $scope.listarDispositivosComodo = function() {
    	WebServiceX.create("ws/dispositivos/listarDispositivosComodo", JSON.stringify($rootScope.headers))
    	.then(function(res) {
    		if (res.temErro){
    			Alert.showMessage("Atenção",res.msgsErro[0]);
    		} else {
    			$scope.dispositivos = res.dispositivos;
    		}
    		delete $rootScope.headers.nuImovel;
        	delete $rootScope.headers.nuComodo;
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
    
    $scope.ligarDispositivo = function(dispositivo) {
    	WebServiceX.create("ws/dispositivos/listarDispositivos", JSON.stringify($rootScope.headers))
    	.then(function(res) {
    		if (res.temErro){
    			Alert.showMessage("Atenção",res.msgsErro[0]);
    		} else {
    			$scope.dispositivos = res.dispositivos;
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
    
    $scope.desligarDispositivo = function(dispositivo) {
    	WebServiceX.create("ws/dispositivos/listarDispositivos", JSON.stringify($rootScope.headers))
    	.then(function(res) {
    		if (res.temErro){
    			Alert.showMessage("Atenção",res.msgsErro[0]);
    		} else {
    			$scope.dispositivos = res.dispositivos;
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
    
    $scope.listarDispositivosComodo();
    
});

angular.module('webApp').controller('GerenciarDispositivoController', function ($scope, $rootScope, Log, WebServiceX, Analytics, Error, Utils, Alert) {
    Log.debug("GerenciarDispositivoController()");
    
    $scope.ligarTodosDispositivosComodo = function(){
    	WebServiceX.create("ws/dispositivos/ligarTodosDispositivosComodo", JSON.stringify($rootScope.headers))
    	.then(function(res) {
    		if (res.temErro){
    			Alert.showMessage("Atenção",res.msgsErro[0]);
    		} else {
    			$scope.dispositivos = res.dispositivos;
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
	}
    
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
    		$scope.user.pwd = sha1($scope.user.pwd);
    		WebServiceX.create("ws/usuario/logar", JSON.stringify($scope.user))
        	.then(function(res) {
          		if(!res.temErro) {
          			$rootScope.headers = {token: res.token};
        			$rootScope.usuario = {nome: res.usuario, nuImovel: res.nuImovel};
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

