<?php
require_once 'app/models/personalModel.php';
require_once 'app/views/personalView.php';
class controllerPersonal
{
    private $model;
    private $view;

    public function __construct()
    {
        $this->model = new personalModel();
        $this->view = new personalView();
    }

    public function homeController()
    {
        $artists = $this->model->getArtist();
        $categorys = $this->model->getCategorys();
        $this->view->viewHome($artists, $categorys);
    }

    public function showArtista($name){
       // $artists = $this->model->getArtist();
        //$categorys = $this->model->getCategorys();
        $artistaId = $this->model->getArtistByName($name);
        $this->view->showArtistaById($artistaId);
    }

    public function showError()
    {
       // $this->view->showError();
    }
}