<?php
require_once dirname(__DIR__, 1) . "/CProducts.php";

$_POST = json_decode(file_get_contents("php://input"), true);

if (empty($_POST['productId']) || !is_numeric($_POST['productId'])) {
    echo json_encode(['message' => "Ошибка при отправке данных", "status" => false]);
    die();
}

try {
    $product = new CProducts();
    $product->incProduct($_POST['productId']);
    echo json_encode(['message' => "Запись успешно скрыта", "status" => true]);
} catch (Exception $e) {
    echo json_encode(['message' => "Не удалось увеличить колличество товара", "status" => false]);
}
