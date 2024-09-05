<?php

class personalView{

    //require 'templates/home.phtml';
    //require 'templates/footer.phtml';
   /* public function viewHeader($artists, $categorys){
        require 'templates/header.phtml';
    }*/
    public function viewHome(){
        require 'templates/home.phtml';
    }

    public function showAllArtistas($artists){

        require 'templates/allArtista.phtml';
    }
    public function showArtistaByName($artistaName){
        //require "templates/header.phtml";
        require 'templates/soloArtista.phtml';
        //require "templates/footer.phtml";
    }
    public function showAllProductores($productores){
        require 'templates/allProductores.phtml';
    }
    public function showProductorByName($productorName){
        require 'templates/soloProductor.phtml';
    }
    public function showAllAudiovisuales($audiovisuales){
        require 'templates/allAudivisuales.phtml';
    }
    public function showAudiovisualByName($audiovisualName){
        require 'templates/soloAudiovisual.phtml';
    }
    public function viewContacto(){
        require 'templates/contacto.phtml';
    }
    public function showError($error){
        require 'templates/showError.phtml';
        
    }
}