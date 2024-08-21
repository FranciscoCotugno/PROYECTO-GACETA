<?php
require_once "model.php";

class personalModel extends Model
{
    public function getCategorys()
    {
        $query = $this->db->prepare('SELECT * FROM categorys');
        $query->execute();

        $categorys = $query->fetchAll(PDO::FETCH_OBJ);

        return $categorys;
    }

    public function getArtist()
    {
        $query = $this->db->prepare('SELECT * FROM artist');
        $query->execute();

        $artist = $query->fetchAll(PDO::FETCH_OBJ);

        return $artist;
    }

    public function getArtistByName($name)
    {
        $name = trim($name); // Elimina espacios al inicio y al final
        //$name = preg_replace('/[^\p{L}\p{N}\s]/u', '', $name);

        $query = $this->db->prepare('SELECT * FROM `artist` WHERE `Artist_name` =?');
        
        $query->execute([$name]);

        $artist = $query->fetch(PDO::FETCH_OBJ);

        return $artist;
    }

    
    public function getPersonalByCategory($id)
    {
        $query = $this->db->prepare("SELECT * FROM artist WHERE Category_id =?");
        $query->execute([$id]);

        $id = $query->fetchAll(PDO::FETCH_OBJ);

        return $id;
    } 

}