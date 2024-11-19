<?php

class DataBase
{
    private $connector;

    public function __construct()
    {
        try {
            // Все конфиги нужно выносить в .env файл. Здесь так сделано для упрощения
            $this->connector = new PDO('mysql:dbname=vedita;host=localhost', 'root', 'root');
        } catch (PDOException $e) {
            die($e->getMessage());
        }
    }

    public function query($query, $params = []) 
    {
        $sth = $this->connector->prepare($query);
        foreach($params as $key => $param){
            $sth->bindParam($key, $param);
        }   
        $sth->execute();
        return $sth;
    }
}
