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

    //$artists = $this->model->getArtist();
    //$categorys = $this->model->getCategorys();
    public function showHome()
    {
        $this->view->viewHome();
    }
    public function showAllArtistas(){
        $artists = $this->model->getPersonalByCategory(1);
        $this->view->showAllArtistas($artists);
    }
    public function showArtista($name){
        $artistaName = $this->model->getArtistByName($name);
        if(empty($artistaName)){
            $this->view->showError("Error 404"); //HACERLO CON TODOS
        }else{
            $this->view->showArtistaByName($artistaName);
        }
    }
    public function showAllProductores(){
        $productores = $this->model->getPersonalByCategory(2);
        $this->view->showAllProductores($productores);
    }
    public function showProductor($name){
        $productorName = $this->model->getArtistByName($name);
        $this->view->showProductorByName($productorName);
    }
    public function showAllAudiovisuales(){
        $audiovisuales = $this->model->getPersonalByCategory(3);
        $this->view->showAllAudiovisuales($audiovisuales);
    }
    public function showAudiovisual($name){
        $audiovisualName = $this->model->getArtistByName($name);
        $this->view->showAudiovisualByName($audiovisualName);
    }
}