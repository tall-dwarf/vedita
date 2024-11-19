<?php
require_once __DIR__ . "/DataBase.php";

class CProducts
{
    private $db;

    public function __construct()
    {
        $this->db = new DataBase();
    }

    public function getProducts($order = 'ASC')
    {
        $res = $this->db->query("SELECT * FROM `products` WHERE hide = 0  ORDER BY DATE_CREATE $order ");
        return $res->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getProductsLimit($limmit = 1)
    {
        $res = $this->db->query("SELECT * FROM `products` LIMIT $limmit ");
        return $res->fetchAll(PDO::FETCH_ASSOC);
    }

    public function incProduct($productId)
    {
        $this->db->query("UPDATE `products` SET `PRODUCT_QUANTITY`= `PRODUCT_QUANTITY` + 1 WHERE `ID` = :productId ", ['productId' => $productId]);
    }

    public function decProduct($productId)
    {
        $this->db->query("UPDATE `products` SET `PRODUCT_QUANTITY`= `PRODUCT_QUANTITY` - 1 
                        WHERE `ID` = :productId AND `PRODUCT_QUANTITY` > 0", ['productId' => $productId]);
    }

    public function hideProduct($productId)
    {
        $this->db->query("UPDATE `products` SET `HIDE`= 1 WHERE `products`.`ID` = :productId", ['productId' => $productId]);
    }
}
