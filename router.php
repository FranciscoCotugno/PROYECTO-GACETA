<?php
require_once 'database/config.php';
require_once 'app/controllers/personalController.php';
define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'home';
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

switch ($params[0]) {
    case 'home':
        $controller = new controllerPersonal();
        $controller->showHome();
        break;
    case 'artistas':
        $controller = new controllerPersonal();
        $controller->showAllArtistas();
        break;    
    case 'artista':
        $controller = new controllerPersonal();
        $controller->showArtista($params[1]);
        break;
    case 'Productores':
        $controller = new controllerPersonal();
        $controller->showAllProductores();
        break;
    case 'Productor':
        $controller = new controllerPersonal();
        $controller->showProductor($params[1]);
        break;
    case 'Audiovisuales':
        $controller = new controllerPersonal();
        $controller->showAllAudiovisuales();
        break;
    case 'audiovisual':
        $controller = new controllerPersonal();
        $controller->showAudiovisual($params[1]);
        break;
    default:
        $controller = new controllerPersonal();
        $controller->showHome();
        break;
}

