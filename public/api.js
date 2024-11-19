function requestByFetch(url, body) {
    return fetch(url, {
        method: "POST",
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(body)
    })
}

async function incProduct(productId) {
    const response = await requestByFetch("/api/incProduct.php", {
        productId
    });
    return await response.json()
}

async function decProduct(productId) {
    const response = await requestByFetch("/api/decProduct.php", {
        productId
    });
    return await response.json()
}

async function hideProduct(productId) {
    const response = await requestByFetch("/api/hideProduct.php", {
        productId
    });
    return await response.json()
}