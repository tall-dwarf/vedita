async function btnInkClick(productId, loader, cnt) {
    try {
        loader.classList.add("visible")
        const result = await incProduct(productId)
        if(result.status) cnt.textContent = Number(cnt.textContent) + 1
        loader.classList.remove("visible")
    } catch {
        alert("Произошла ошибка")
    }
}

async function btnDecClick(productId, loader, cnt) {
    try {
        loader.classList.add("visible")
        const result = await decProduct(productId)
        if(result.status) cnt.textContent = Math.max(Number(cnt.textContent) - 1, 0)
        loader.classList.remove("visible")
    } catch {
        alert("Произошла ошибка")
    }
}

async function btnHideClick(productId, tableElem) {
    try {
        const result = await hideProduct(productId)
        if(result.status) tableElem.remove()
        alert(result['message'])
    } catch {
        alert("Ошибка отправки данных")
    }
}