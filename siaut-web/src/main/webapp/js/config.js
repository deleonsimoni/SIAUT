
/*
	Aqui poderão ser definidas variáveis globais de sua aplicação
	
	ANALYTICS_ID - codigo de rastreamento do Caixa Analythics
	ENDPOINT - Endereço do webservice que dá suporte a esta interface
	
*/

var ANALYTICS_ID = 'ae2dfd70c8cda69bce3e61279a96644b486a2111';
var APP_NAME = 'SITES_APP';
var APP_ID = 'SITES:ab92d3ebda6285d3615d3f635d74aae23112fdef';

var ENDPOINT = "/app/sites/endpoint";

 
var PROJECT = {
   "model": 2,
   "id":"SITES",
   "name":"teste",
   "owner":"Caixa Econômica Federal",
   "description":"teste",
   "version":"1.0",
   "menu":true,
   "icon":"fa-ils",
   "type":"ANGULAR003v200",
   "user":"5079",
   "contact": "andre.lourdes@caixa.gov.br",
   "header": {"title":"SITES","help":"SITES - teste","subtitle":"v1.0"},
   "footer": {"left":"Caixa Econômica Federal","right":"15-02-2017"},
   "menus": [{"icon":"fa-home","title":"Principal","description":"Tela Principal","target":"principal","locked":true},{"icon":"fa-question","title":"Sobre","description":"Sobre a aplicação","target":"sobre"},{"icon":"fa-database","title":"teste","description":"Cadastro de teste","target":"cadastroteste","platforms":[{"id":"desktop","icon":"fa fa-desktop","check":true,"name":"Desktop"},{"id":"mobile","icon":"glyphicon glyphicon-globe","check":true,"name":"Browser Mobile"},{"id":"nativo","icon":"fa fa-mobile","check":true,"name":"App Mobile"},{"id":"android","icon":"fa fa-android","check":true,"name":"Android"},{"id":"ios","icon":"fa fa-apple","check":true,"name":"IOS"},{"id":"winphone","icon":"fa fa-windows","check":true,"name":"WinPhone"},{"id":"printer","icon":"fa fa-print","check":true,"name":"Impressão"}],"locked":false,"group":"teste","notes":[]}],
   "theme": {"id":0,"content":".theme-app {\n\tbackground-color: #fff;\n}\n\n.theme-header {\n\tbackground-color: #296fa7;\n\tborder-bottom: 3px solid #F39A00!important;\n}\n.theme-app.tabbed .theme-header {\n\tborder-bottom: none!important;\n}\n\n.theme-header-tabs {\n\tborder-top: 3px solid #F39A00!important;\n}\n\n.theme-header-right > .navbar-brand {\n\tcolor: #fff;\n\tpadding-right: 5px;\n}\n.theme-header-left > .navbar-brand {\n\tcolor: #fff;\n}\n\n.theme-header-middle.navbar-brand{\n\tcolor: #fff;\n}\n.theme-header-tabs {\n\t    background-color: #fff;\n}\n\n.theme-header-tabs > li.active > a {\n\tbackground-color: #296fa7;\n\tcolor: #fff;\n}\n.theme-footer {\n\tbackground-color: #296fa7;\n\tborder-top: 3px solid #F39A00!important;\n}\n\n.theme-footer-right {\n\tpadding-right: 10px;\n}\n.theme-footer-middle {\n\n}\n.theme-footer-left {\n\tpadding-left: 10px;\n}\n\n.theme-header-left > a {\n\tbackground: url(../imgs/theme-padrao/caixab.png) no-repeat!important;\n\twidth: 112px;\n\theight: 24px;\n\tmargin-top: 20px!important;\n\tmargin-left: 10px!important;\n}\n.theme-header-left-caption {\n\tdisplay: none!important;\n}\n\n.theme-header-title {\n\theight: 63px;\n}\n\n.theme-header-right {\n\tpadding: 7px;\n\t/*padding-right: 15px;*/\n}\n\n.theme-app.tabbed .theme-menu-container {\n    margin-top: 120px!important;\n}\n.theme-app .theme-menu-container {\n    margin-top: 80px!important;\n}\n\n.theme-app.collapse.in .theme-submenu-item > a {\n\tpadding-left: 20px;\n}\n\n.theme-app .theme-main-container {\n\tborder-left: 0px;\n\tbackground-color: transparent;\n\tmargin: 70px 0 50px 0px;\n}\n\n.theme-app.menu .theme-main-container {\n\tmargin: 10px 0 50px 0px;\n}\n\t\n@media (min-width: 768px) {\n\t.theme-app.tabbed .theme-menu-container {\n\t    margin-top: 20px!important;\n\t}\n\t.theme-app .theme-menu-container {\n\t    margin-top: 0px!important;\n\t}\n\t.theme-app.collapse.in .theme-menu-container {\n\t\tmargin-top: 15px!important;\n\t}\n\t.theme-menu-container {\n\t\tposition: fixed;\n\t}\n\n\t.theme-app.menu .theme-main-container {\n\t\tmargin: 65px 0 50px 250px;\n\t}\n\n\t.theme-app.menu .theme-main-container {\n\t\tmargin: 65px 0 50px 250px;\n\t}\n\n\t.theme-app.collapse.in  .page-wrapper {\n\t\tmargin: 65px 0 50px 250px;\n\t}\n\n\t.theme-header-right {\n\t\tpadding-right: 15px;\n\t}\n\n\t.theme-app.collapse.in .theme-menu-container {\n\t\tmargin-top: 10px!important;\n\t}\n\n\n\n\t.theme-app.collapse.in  .page-wrapper {\n\t\tmargin: 65px 0 0 70px!important;\n\t}\n\n\t.theme-app.collapse.in .theme-menu-container {\n\t\tmargin-top: 0px!important;\n\t}\n\n\t.theme-main-container {\n\t\tmargin: 67px 0 0 70px;\n\t}\n\t.theme-menu-container {\n\t\tmargin-top: 3px!important;\n\t}\n}\n\n\n.sidebar-nav > .nav li > a.active {\n    margin: 0;\n    border-left: 4px solid #ffa100;\n    border-left-width: 4px;\n    border-left-style: solid;\n    border-left-color: #ffa100;\n    border-top: 1px solid #d9d9d9;\n    border-top-width: 1px;\n    border-top-style: solid;\n    border-top-color: rgb(217, 217, 217);\n    border-bottom: 1px solid #d9d9d9;\n    border-bottom-width: 1px;\n    border-bottom-style: solid;\n    border-bottom-color: rgb(217, 217, 217);\n    background-color: #f5f7f7;\n}\n\n.theme-header .navbar-brand:hover {\n\tcolor: #fff;\n}\n.theme-footer .navbar-brand:hover {\n\tcolor: #fff;\n}\n\n\nbutton {\n\tmargin-right: 5px;\n}\n\n\n/* texto */\n.text-primary {\n\tcolor: #296fa7;\n}\n.text-primary-important {\n\tcolor: #296fa7!important;\n}\n.text-warning {\n\tcolor: #ffa100;\n}\n.text-warning-important {\n\tcolor: #ffa100!important;\n}\n.text-success {\n\tcolor: #3c763d;\n}\n.text-success-important {\n\tcolor: #3c763d!important;\n}\n.text-black {\n\tcolor: #464646;\n\tfont-weight: 100;\n}\n.text-purple {\n\tcolor: #494d62;\n\tfont-weight: 100;\n}\n.text-laranja {\n\tcolor: #ffa100;\n\tfont-weight: 100;\n}\n.text-info {\n\tcolor: #c0b723;\n\tfont-weight: 100;\n}\n.text-danger {\n\tcolor: #920A04;\n\tfont-weight: 100;\n}\n\n/* Botoes */\n.btn-outline {\n\tcolor: inherit;\n\tbackground-color: transparent;\n\ttransition: all .5s;\n}\n\n.btn-primary.btn-outline {\n\tcolor: #428bca;\n}\n\n.btn-success.btn-outline {\n\tcolor: #5cb85c;\n}\n\n.btn-info.btn-outline {\n\tcolor: #5bc0de;\n}\n\n.btn-warning.btn-outline {\n\tcolor: #f0ad4e;\n}\n\n.btn-danger.btn-outline {\n\tcolor: #d9534f;\n}\n\n.btn-primary.btn-outline:hover,\n.btn-success.btn-outline:hover,\n.btn-info.btn-outline:hover,\n.btn-warning.btn-outline:hover,\n.btn-danger.btn-outline:hover {\n\tcolor: #fff;\n}\n\n.theme-menu-container {\n\tborder-right: 1px solid #ADADAD;\n\theight: 100%;\n\tbackground: #fff;\n}\n\n.theme-main-container.menu {\n\tborder-left: 0px;\n\tbackground-color: transparent;\n\tmargin: 0px 0 50px 0px;\n}\n\n.theme-app.tabbed .page-wrapper {\n\tmargin-top: 110px;\n}\n\n\n.theme-menu-item {\n\tborder-bottom: 0px!important;\n}\n\n","icon":"fa-dropbox","name":"Caixa Material","value":"theme-padrao.css"}
};

var DEFAULT_BUTTON_MESSAGE = "Procedimento executado com sucesso";

