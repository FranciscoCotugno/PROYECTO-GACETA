<?php

class personalView{

    public function viewHome($artists, $categorys){
        require 'templates/header.phtml';
        //require 'templates/home.phtml';
        //require 'templates/footer.phtml';
    }

    public function showArtistaById($artistaId){
        require 'templates/header.phtml';
        require 'templates/soloArtista.phtml';
    }
}