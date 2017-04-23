﻿angular.module('starter.directives', [])
    .directive('selectOnClick', function () {
        return {
            restrict: 'A',
            link: function (scope, element, attrs) {
                element.on('click', function () {
                    this.select();
                });
            }
        };
    })
    
    .directive('botaoPersonalizado', function(){
    var ddo = {};

    ddo.restrict = 'AE';

    ddo.scope = {
        codigo: '@'
    };

    ddo.templateUrl = 'diretivas/Principal.html';

    return ddo;
    })
    
    .directive('scrollOnClick', function() {
        return {
            restrict: 'A',
            link: function(scope, $elm, attrs) {
                var idToScroll = attrs.href;
                $elm.on('click', function() {
                    var $target;
                    if (idToScroll) {
                        $target = $(idToScroll);
                    } else {
                        $target = $elm;
                    }
                    $("body").animate({scrollTop: $target.offset().top}, "slow");
                });
            }
        }
    })
    
    .directive('input', function(dateFilter) {
        return {
            restrict: 'E',
            require: '?ngModel',
            link: function(scope, element, attrs, ngModel) {
                if (
                       'undefined' !== typeof attrs.type
                    && 'date' === attrs.type
                    && ngModel
                ) {
                    ngModel.$formatters.push(function(modelValue) {
                        return new Date(modelValue); //dateFilter(modelValue, 'yyyy-MM-dd');
                    });
                }
            }
        }
    })


    .directive("contenteditable", function() {
        return {
            require: "ngModel",
            link: function(scope, element, attrs, ngModel) {

                function read() {
                    ngModel.$setViewValue(element.html());
                }

                ngModel.$render = function() {
                    element.html(ngModel.$viewValue || "");
                };

                element.bind("blur keyup change", function() {
                    scope.$apply(read);
                });
            }
        };
    })

    .directive('inputRestrictorAlpha', [
        function() {
            return {
                restrict: 'A',
                require: 'ngModel',
                link: function(scope, element, attr, ngModelCtrl) {
                    var pattern = /[^a-zA-Z]*/g;

                    function fromUser(text) {
                        if (!text)
                            return text;

                        var transformedInput = text.replace(pattern, '');
                        if (transformedInput !== text) {
                            ngModelCtrl.$setViewValue(transformedInput);
                            ngModelCtrl.$render();
                        }
                        return transformedInput;
                    }
                    ngModelCtrl.$parsers.push(fromUser);
                }
            };
        }
    ])

    .directive('inputRestrictorNumber', [
        function() {
            return {
                restrict: 'A',
                require: 'ngModel',
                link: function(scope, element, attr, ngModelCtrl) {
                    var pattern = /[^0-9]*/g;

                    function fromUser(text) {
                        if (!text)
                            return text;

                        var transformedInput = text.replace(pattern, '');
                        if (transformedInput !== text) {
                            ngModelCtrl.$setViewValue(transformedInput);
                            ngModelCtrl.$render();
                        }
                        return transformedInput;
                    }
                    ngModelCtrl.$parsers.push(fromUser);
                }
            };
        }
    ])

    .directive('autofocus', ['$timeout', function($timeout) {
        return {
            restrict: 'A',
            link : function($scope, $element) {
                $timeout(function() {
                    $element[0].focus();
                });
            }
        }
    }])

    .directive("fileread", [function () {
        return {
            scope: {
                fileread: "="
            },
            link: function (scope, element, attributes) {
                element.bind("change", function (changeEvent) {
                    var reader = new FileReader();
                    reader.onload = function (loadEvent) {
                        scope.$apply(function () {
                            scope.fileread = loadEvent.target.result;
                        });
                    };
                    reader.readAsDataURL(changeEvent.target.files[0]);
                });
            }
        };
    }])
    
    .directive('analyticsEvent', function(Analytics) {
        var help = {};
        return {
            restrict: 'A',
            link: function(scope, $elm, attrs) {
                $elm.click(function(){
                    var element = $($elm);
                    var event = attrs.analyticsEvent;
                    if (!event) return;

                    Analytics.trackEvent(scope.pagename,"click:" + event);
                });
            }
        }
    })//Analytics.1.0.7

    .directive('analyticsPage', function(Analytics) {
        var help = {};
        return {
            restrict: 'A',
            link: function(scope, $elm, attrs) {
                var element = $($elm);
                var page = attrs.analyticsPage;
                if (!page) return;

                scope.pagename = page;
                Analytics.trackPage(scope.pagename);
            }
        }
    });//Analytics.1.0.7


