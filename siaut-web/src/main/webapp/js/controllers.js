﻿angular.module("starter.controllers", ["ngAnimate", "highcharts-ng", "smart-table", "ui.bootstrap","ui.uploader","angular.qrcode"])
    .run(function ($rootScope, $state, $location, $filter, Utils, Error, Log, Analytics, Alert) {
        Log.info("controller.run()");

        try {
            Analytics.init(ANALYTICS_ID,APP_NAME);
            
            $rootScope.home = DEFAULT_VIEW;
            $rootScope.contextEditable = false;
            $rootScope.user = null;

            Highcharts.setOptions({
                global: {
                    useUTC: false
                },
                lang: {
                    months: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',  'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
                    shortMonths: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
                    weekdays: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sabado']
                }
            });

            $rootScope.currentview = {};

            $rootScope.project = PROJECT;

            $rootScope.headers = null;

            $rootScope.navlock = false;
            $rootScope.contextEditable = false;
            $rootScope.platforms = Utils.getPlatforms();


            $rootScope.feedback = Analytics.isEnabled();
            $rootScope.openFeedback = function(group) {
                var modalmetric = Alert.showModal("resources/modalfeedback.html", null, $rootScope, true, true, "md",null,null);
                modalmetric.result.then(function () {
                    modalmetric.dismiss();
                }, function () {
                    modalmetric.dismiss();
                });
            }

            $rootScope.setAnalytics = function(value) {
                Analytics.setEnable(value);
                $rootScope.feedback = Analytics.isEnabled();
            }

            $rootScope.setPlatforms = function(platforms) {
                $rootScope.platforms = platforms;
            }
            $rootScope.setUser = function(value) {
                $rootScope.user = value;
                $rootScope.$apply();
            }
            $rootScope.setContext = function(value) {
                $rootScope.contextEditable = value;
                $rootScope.$apply();
            }
            $rootScope.setNavlock = function(value) {
                $rootScope.navlock = value;
            }
            $rootScope.isNavlock = function() {
                return $rootScope.navlock;
            }

            $rootScope.dateNow = function(format) {
                return $filter('date')(new Date(), format);
            }
            $rootScope.getCurrentState = function(state) {
                if (!$rootScope.project || !$rootScope.project.views) return;

                for (var i in $rootScope.project.views) {
                    var view = $rootScope.project.views[i];
                    if (view.id == state) {
                        return view;
                    }
                }
                return {};
            }

            $rootScope.getViewContainer = function(view) {
                var found = null;
                for (var i in view.body) {
                    var element = view.body[i];
                    if (element.type == "tab") {
                        found = element;
                        break;
                    }
                }
                if (!found) return null;

                if (found.values.length == 0) return null;

                return found.values[0];

            }

            $rootScope.addState = function(view) {
                if ($state.get(view.id)) {
                    return;
                }

                var state = {
                    url: '/' + view.id,
                    views: {
                        'header-container': {
                            templateUrl: 'pages/header.html'
                        },
                        'menu-container': {
                            templateUrl: 'pages/menu.html'
                        },
                        'page-container': {
                            templateUrl: 'pages/main.html',
                            controller: 'MainController'

                        },
                        /*'tab-container@principal': {
                            templateUrl: 'pages/auth.html'
                        },*/
                        'footer-container': {
                            templateUrl: 'pages/footer.html'
                        }
                    }
                };
                //state.views["tab-container@" + view.id] = {templateUrl: "pages/auth.html"};
                var viewContainer = $rootScope.getViewContainer(view);
                if (viewContainer) {
                    state.views["tab-container@" + view.id] = {templateUrl: 'pages/main.html'};
                }

                $stateProviderRef.state(view.id, state);
                Log.debug("state: " + view.id);

            }

            $rootScope.checkState = function(state) {
                for (var i in $rootScope.project.views) {
                    var view = $rootScope.project.views[i];
                    if (view.id == state) {
                        if (!$state.get(view.id)) {
                            $rootScope.addState(view);
                            return;
                        }
                    }
                }
            }

            $rootScope.loadStates = function() {
                try {
                    if (!$rootScope.project || !$rootScope.project.views) return;
                    for (var i in $rootScope.project.views) {
                            if (i == 0) {
                                $rootScope.home = $rootScope.project.views[0].id;
                            }
                        var view = $rootScope.project.views[i];
                        $rootScope.addState(view);
                    }
                } catch (error) {
                    Log.error("Falhar ao carregar estado:", error);
                }
            }

            /*$rootScope.processState = function(view) {
                var state = {
                    url: '/' + view.id,
                    views: {
                        'header-container': {
                            templateUrl: 'pages/header.html'
                        },
                        'menu-container': {
                            templateUrl: 'pages/menu.html'
                        },
                        'page-container': {
                            templateUrl: 'pages/main.html'
                        },
                        'tab-container@principal': {
                            templateUrl: 'pages/auth.html'
                        },
                        'footer-container': {
                            templateUrl: 'pages/footer.html'
                        }
                    }
                };
                $stateProviderRef.state(view.id, state);

            }*/

            $rootScope.goHome = function() {
                Analytics.trackEvent('root','goHome');
                if ($rootScope.home ) {
                    $rootScope.go($rootScope.home);
                }
            }

            $rootScope.goAuth = function() {
                Analytics.trackEvent('root','goAuth');
                if ($rootScope.home ) {
                    $rootScope.go($rootScope.home);
                }
            }

            $rootScope.goSetup = function() {
                Analytics.trackEvent('root','goSetup');
                $location.path("/setup");
            }

            $rootScope.go = function(state) {
                Analytics.trackEvent('root','go(' + state + ')');

                $rootScope.checkState(state);

                $location.path("/" + state);
            }

            $rootScope.updateProject = function(project) {
                $rootScope.project = project;
                $rootScope.loadStates();
                $rootScope.goHome();
            }
            $rootScope.getProject = function() {
                return $rootScope.project;
            }

            $rootScope.compiler = function(value) {
                try {
                    var result = value;
                    if (result != null) {
                        var variables = $rootScope.project.variables;
                        for (var i in variables) {
                            var variable = variables[i];

                            var eval = null;
                            try {
                                eval = $rootScope.$eval(variable.value);
                            } catch (error) {
                            }
                            if (!eval) eval = variable.value;
                            var variable = "%" + variable.name + "%";
                            result = Utils.replaceAll(result, variable, eval);
                        }
                    }
                } catch (error) {
                    Error.handler("Falha ao processar template", error);
                }
                return result;
            }

            $rootScope.goHome();

        } catch (error) {
            Error.handler("Falha ao processar inicialização", error);
        }
    })

    .controller('AppController', function ($scope, $rootScope, $state, $timeout, $parse, $window, Error, Log, Feedback, Alert, Analytics, Geolocation) {
        Log.info("AppController()");
        
        $window.scrollTo(0, 1); //force Fullscreen on Mobile

        $scope.initDate = function(name) {
            $timeout(function(){
                $('#' + name).daterangepicker({
                    singleDatePicker: true,
                    showDropdowns: true
                });
            });
        }

        $scope.toDate = function(value) {
            return new Date(value);
        }

        $scope.fromDate = function(date, format) {
            try {
                return  moment(date).format(format);
            }catch (error) {
                return date;
            }
        }


        $scope.loadMap = function(mapname) {
            $timeout(function(){
                Geolocation.loadMap("#" + mapname);
            });
        }

        $scope.loadChart = function(container,type) {
            $timeout(function(){
                if (type == 'line-chart') {
                    $scope.linechart = linechart;
                } else if (type == 'column-chart') {
                    $scope.columnchart = columnchart;
                } else if (type == 'pie-chart') {
                    $scope.piechart = piechart;
                }
            });
        }

        $scope.getPlatforms = function(platforms) {
            var result = "";
            var separator = " ";
            var PREVIEW = 'preview';
            var DESKTOP = 'desktop';
            var MOBILE = 'mobile';
            var NATIVO = 'nativo';
            var ADNROID = 'android';
            var IOS = 'ios';
            var WPHONE = 'winphone';

            function getValue(name) {
                for (var i in platforms) {
                    var currentitem = platforms[i];
                    if (currentitem.id == name) {
                        return currentitem.check;
                    }
                }
            }

            if (!platforms || platforms.length == 0) return result;

            result = "hidden-platform ";

            var showPreview = getValue(PREVIEW);
            var showDesktop = getValue(DESKTOP);
            var showMobile =  getValue(MOBILE);
            var showNative =  getValue(NATIVO);
            var showBrowserMobile = showMobile && !showNative;
            var showAndroid = !showDesktop &&  getValue(ADNROID);
            var showIOS = !showDesktop &&  getValue(IOS);
            var showWPhone = !showDesktop &&  getValue(WPHONE);

            if (showPreview) {
                result += " show-preview ";
            }
            if (showDesktop) {
                result += " show-desktop ";
            }
            if (showMobile) {
                if (showAndroid) {
                    result += "show-mobileandroid ";
                }
                if (showIOS) {
                    result += "show-mobileios ";
                }
                if (showWPhone) {
                    result += "show-mobilewinphone ";
                }
                if (!showAndroid && !showIOS && !showWPhone) {
                    result += "show-mobile ";
                }
            }
            if (showNative) {
                if (showAndroid) {
                    result += "show-nativoandroid ";
                }
                if (showIOS) {
                    result += "show-nativoios ";
                }
                if (showWPhone) {
                    result += "show-nativowinphone ";
                }
                if (!showAndroid && !showIOS && !showWPhone) {
                    result += "show-nativo ";
                }
            }
            if (!showMobile && !showNative) {
                if (showAndroid) {
                    result += "show-android ";
                }
                if (showIOS) {
                    result += "show-ios ";
                }
                if (showWPhone) {
                    result += "show-winphone ";
                }
            }

            return result;
        }

        $scope.doPrint = function($event) {
            if ($event) {
                Feedback.loading($event);
            }
            $window.print();

            Feedback.reset();
        }

        $scope.confirmDelete = function() {
            function confirm() {
                Alert.showMessage("Atenção","Exclusão confirmada pelo usuário");
            }
            function deny() {
                Alert.showMessage("Atenção","Exclusão cancelada pelo usuário");
            }
            Alert.showConfirm("Atenção","Confirma a exclusão deste item?",confirm,deny);
        }

        $scope.openViewDelayed = function(id,delay,$event,message) {
            Log.debug("openViewDelayed(" + delay + ")");
            if ($event) {
                Feedback.loading($event);
            }
            var delayms = delay * 1000;
            $scope.dismissOpenDelayed(true);
            $scope.delayedPromise = $timeout(function() {
                if ($event) {
                    Feedback.reset();
                }
                if (id != null && id != '') {
                    $scope.openView(id,true);
                } else {
                    if ($event) {
                        if (!message) message = DEFAULT_BUTTON_MESSAGE;
                        Alert.showMessage("Atenção",message);
                    }
                }

            },delayms);
        }

        $scope.dismissOpenDelayed = function(silent,destination) {
            Log.debug("dismissOpenDelayed()");
            if ($scope.delayedPromise) {
                if ($timeout.cancel($scope.delayedPromise)) {
                    if (!silent) Alert.showMessage("Atenção","Timer cancelado, clique novamente para continuar.");
                }
                $scope.delayedPromise = null;
            } else {
                $scope.openView(destination);
            }
        }

        $scope.openView = function (id,silent) {
            Log.debug("openView(" + id + "," + silent + ")");
            if (!id) return;
            if (id == "") return;
            if ($rootScope.contextEditable) return;
            if ($rootScope.isNavlock()) {
                if (!silent) Alert.showMessage("Atenção","Navegação suspensa durante a edição.||Clique em OK para prosseguir");
                return;
            }

            $scope.dismissOpenDelayed(true);

            $rootScope.go(id);
        }
        
    })

    .controller('SetupController', function ($scope, $rootScope, $state, $stateParams, Log, Feedback, NativeInterface, Analytics, WebServiceX) {
        Log.info("SetupController()");


        var authCode = 4;
        if ($rootScope.project) {
            var id = $rootScope.project.id;
            authCode = 4;
        }

        if ($stateParams.code ) {
            $rootScope.headers = {
                authCode: 4
            }
        } else if (authCode) {
            $rootScope.headers = {
                authCode: 4
            }
        }

        if ( $rootScope.headers) {            
            Analytics.trackEvent('SetupController','autoLogin()');
            WebServiceX.readAll("ws/auth", {}, $rootScope.headers)
                .then(function(res) {

                    NativeInterface.setPreference(id + ":auth",$rootScope.headers.authCode);

                    $rootScope.$apply(function() {
                        $rootScope.goHome();
                    });

                }, function(xhr, status, err) {
                    Log.error("Falha durante auto-autenticação",err);

                    NativeInterface.setPreference(id + ":auth",$rootScope.headers.authCode);

                    $rootScope.$apply(function() {
                        $rootScope.goHome();
                    });
                });

        } else {
            $rootScope.goAuth();
        }

    })

    .controller('PreviewController', function ($scope, $rootScope, $state, $stateParams, Log, Feedback) {
        Log.info("PreviewController()");


        if ($stateParams.code ) {
            $rootScope.headers = {
                authCode: $stateParams.code,
                mode: PREVIEW
            }
        }

        if ($rootScope.project && $rootScope.project.views)	 {
            $rootScope.loadStates();
        }

        if ($stateParams.mode == BYPASS ) {
            $rootScope.goHome();
        }

    })

    .controller('AuthController', function ($scope, $rootScope, $state, $stateParams, $window, Log, Feedback, WebServiceX, Analytics) {
        Log.info("AuthController()");

        $scope.session = {
            authCode: null,
            result: null
        }

        if ($rootScope.headers && $rootScope.headers.authCode) {
            $scope.session.authCode = $rootScope.headers.authCode;
        }

        $scope.doLogin = function($event) {
            Feedback.loading($event);

            if ($rootScope.headers && $rootScope.headers.mode == PREVIEW) {

                if ($scope.session.authCode == $rootScope.headers.authCode) {
                    $rootScope.goHome();
                } else {
                    $scope.session.result = "Código de acesso não autorizado, contate o responsável pelo projeto";
                }

                Feedback.reset();
                return;
            }

            if (!$scope.session.authCode) {
                $scope.session.result = "Aplicação restrita, informe o código de acesso";
                Feedback.reset();
                return;
            }

            $rootScope.headers = {
                "authCode": $scope.session.authCode
            }

            Analytics.trackEvent('AuthController','doLogin()');
            WebServiceX.readAll("ws/auth", {}, $rootScope.headers)
                .then(function(res) {
                    Feedback.reset();

                    $rootScope.$apply(function() {
                        $rootScope.goHome();
                    });

                }, function(xhr, status, err) {
                    Log.error("Falha durante autenticação",err);
                    Feedback.reset();
                    $scope.session.result = "Código de acesso não autorizado, contate o responsável pelo projeto";
                    $scope.$apply();

                });
        };

        if ($stateParams.code ) {
            $scope.session.authCode = $stateParams.code;
            $scope.doLogin();
        }
    })

    .controller('MenuController', function ($scope, $rootScope, Log) {
        Log.info("MenuController()");

    })

    .controller('HeaderController', function ($scope, $rootScope, Log) {
        Log.info("HeaderController()");

    })

    .controller('MainController', function ($scope, $rootScope, $state, $window, Log, Analytics, Utils) {
        Log.info("MainController()");

        //$rootScope.currentview = $rootScope.getCurrentState($state.current.name);
        $rootScope.currentview = $rootScope.getCurrentState($state.current.name);

        $scope.pageOptions = [{name:"3",value:3},{name:"5",value:5},{name:"10",value:10},{name:"20",value:20},{name:"30",value:30},{name:"50",value:50}];
        $scope.itemsOnPage = $scope.pageOptions[0];

        $scope.doExportDataTxt = function(data) {
            var dados = JSON.stringify(data);
            dados  = vkbeautify.json(dados);
            Utils.exportToFile("dados.txt",dados);
        }

        $scope.doExportDataCsv = function(data) {
            Utils.exportJsonToText("dados.csv",data,";");
        }

    })

    .controller('WebGLController', function ($scope, $rootScope, $timeout, Log, Analytics, Utils) {
        Log.info("WebGLController()");
        Analytics.trackEvent('controller','Página WebGL');

        $scope.initWebGL = function(id,title,subtitle,object,material) {
            $timeout(function(){
                var textStyle = $scope.getStyle(".text-primary");
                init(id,title,subtitle,object,material,textStyle);
            });
        }

        $scope.getStyle = function(className) {
            var result = null;

            for (var x=0; document.styleSheets.length; x++) {
                var stylesheets = document.styleSheets[x];
                if (!stylesheets) break;

                var classes = stylesheets.rules || stylesheets.cssRules;
                if (classes) {
                    for (var y = 0; y < classes.length; y++) {
                        if (classes[y].selectorText == className) {
                            result = classes[y].style.color;
                        }
                    }
                }
            }
            return result;
        }

    })

    .controller('FeedbackController', function ($scope, $rootScope, Log, Error, EndPoint, Alert, Analytics) {
        Log.debug("FeedbackController()");
        
        Analytics.trackEvent('controller','FeedbackController');

        $scope.evaluationRate = Analytics.getEvaluationRate();
        $scope.userFeedback = Analytics.getUserFeedback();

        $scope.user = {
            feedback: angular.copy($scope.userFeedback),
            message: null
        }

        $scope.getRate = function(rate) {
            for (var i in $scope.evaluationRate) {
                var evaluation = $scope.evaluationRate[i];
                if (evaluation.rate == rate) return evaluation;
            }
            return null;
        }

        $scope.sendFeedback = function() {

            for (var i in $scope.user.feedback) {
                var feedback = $scope.user.feedback[i];
                if (feedback.rate == null) {
                    Alert.showMessage("Atenção","Faltou avaliar o quesito " + feedback.name + "||Verifique por " + feedback.description);
                    return;
                }
            }

            var generalrate = 0;
            for (var i in $scope.user.feedback) {
                var feedback = $scope.user.feedback[i];
                Analytics.trackEvent('feedback:' + feedback.id,feedback.name,feedback.rate);
                generalrate += feedback.rate;
            }
            generalrate = generalrate / $scope.user.feedback.length;
            Analytics.trackEvent('feedbackGeral','Avaliação Geral',generalrate);

            if ($scope.user.message != null && $scope.user.message.trim() != "") {
                var message = $scope.user.message.replace(/(?:\r\n|\r|\n)/g, '|');
                Analytics.trackEvent('feedbackMessage',message,generalrate);
            }

            $scope.closeDialog();
            Alert.showMessage("Atenção","Sua opnião foi enviada com sucesso!||Obrigado por participar")

        }

    })

    .controller('TabController', function ($scope, $rootScope, $state, $window, Log, Analytics, Utils) {
        Log.info("TabController()");
        Analytics.trackEvent('controller','TabController');

        //$rootScope.currentview = $rootScope.getCurrentState($state.current.name);
        $scope.currentview = null;

        $scope.pageOptions = [{name:"3",value:3},{name:"5",value:5},{name:"10",value:10},{name:"20",value:20},{name:"30",value:30},{name:"50",value:50}];
        $scope.itemsOnPage = $scope.pageOptions[0];

        $scope.doExportDataTxt = function(data) {
            var dados = JSON.stringify(data);
            dados  = vkbeautify.json(dados);
            Utils.exportToFile("dados.txt",dados);
        }

        $scope.doExportDataCsv = function(data) {
            Utils.exportJsonToText("dados.csv",data,";");
        }

        $scope.init = function(element) {
            if (!element) return;
            if (!element.values || element.values.length == 0) return;

            var view = element.values[0];
            //$scope.currentview = $rootScope.getCurrentState(view.value);
            $scope.loadView(view.value);
        }

        $scope.loadView = function(viewid) {
            $scope.currentview = $rootScope.getCurrentState(viewid);
        }

    })

    .controller('uploaderCtrl', function($scope, $rootScope, Log, uiUploader) {
        $scope.btn_remove = function(file) {
            Log.info('deleting=' + file);
            uiUploader.removeFile(file);
        };

        $scope.btn_clean = function() {
            uiUploader.removeAll();
        };

        $scope.btn_upload = function() {
            Log.info('uploading...');
            uiUploader.startUpload({
                concurrency: 2,
                onProgress: function(file) {
                    Log.info(file.name + '=' + file.humanSize);
                    $scope.$apply();
                },
                onCompleted: function(file, response) {
                    Log.info(file + 'response' + response);
                }
            });
        };

        $scope.files = [];
        var element = document.getElementById('uplEscolhaoarquivo');
        element.addEventListener('change', function(e) {
            var files = e.target.files;
            uiUploader.removeAll();
            uiUploader.addFiles(files);
            $scope.files = uiUploader.getFiles();
            $scope.$apply();

            Log.info('uploading...');
            uiUploader.startUpload({
                concurrency: 2,
                onloadstart: function(file) {
                    file.loaded = 1;
                    $scope.$apply();
                },
                onProgress: function(file) {
                    posicao = (file.loaded * 100)/file.size;
                    file.loaded =  Math.floor(posicao);
                    $scope.$apply();
                },
                onCompleted: function(file, response) {
                    file.loaded = 100;
                    $scope.$apply();
                }
            });
        });
    });
