<?php
require_once __DIR__ . "/CProducts.php";

echo "<pre>";
$product = new CProducts();
$productsLimit = $product->getProductsLimit(1);
print_r($productsLimit);
echo "</pre>";

$allProducts = $product->getProducts("DESC");
?>

<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Можно подключить бутстрап для красаты, можно не подключать -->
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="./public/style.css">
</head>

<body>

    <div class="container">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">PRODUCT_ID</th>
                    <th scope="col">PRODUCT_NAME</th>
                    <th scope="col">PRODUCT_PRICE</th>
                    <th scope="col">PRODUCT_ARTICLE</th>
                    <th scope="col">PRODUCT_QUANTITY</th>
                    <th scope="col">DATE_CREATE</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($allProducts as $prod): ?>
                    <tr data-product-table="<?= $prod['ID'] ?>">
                        <th scope="row"><?= $prod['ID'] ?></th>
                        <td><?= $prod['PRODUCT_ID'] ?></td>
                        <td><?= $prod['PRODUCT_NAME'] ?></td>
                        <td><?= $prod['PRODUCT_PRICE'] ?></td>
                        <td><?= $prod['PRODUCT_ARTICLE'] ?></td>
                        <td class="td-quantity">
                            <div class="loader ">
                                <div class="lds-ring">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                            </div>
                            <span class="row-cnt"><?= $prod['PRODUCT_QUANTITY'] ?></span>
                            <button class="btn-inc">+</button>
                            <button class="btn-dec">-</button>
                        </td>
                        <td><?= $prod['DATE_CREATE'] ?></td>
                        <td><button class="btn-hiide">Скрыть</button></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>

    <script src="./public/api.js"></script>
    <script src="./public/product.events.js"></script>

    <script>

        async function tableItemClick(event, tableElem) {
            const loader = tableElem.querySelector(".loader")
            const cnt = tableElem.querySelector(".row-cnt")
            const productId = Number(tableElem.dataset.productTable)

            if (event.target.classList.contains("btn-hiide")) {
                btnHideClick(productId, tableElem)
            }

            if (event.target.classList.contains("btn-inc")) {
                btnInkClick(productId, loader, cnt)
            }

            if (event.target.classList.contains("btn-dec")) {
                if (Number(cnt.textContent) === 0) return 0;
                btnDecClick(productId, loader, cnt)
            }
        }

        document.querySelectorAll("tr").forEach(tableElem => {
            tableElem.addEventListener("click", (event) => tableItemClick(event, tableElem))
        })
    </script>
</body>

</html>