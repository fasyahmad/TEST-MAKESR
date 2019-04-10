function login() {
    var asWho = document.getElementById('asWho').value
    console.log(asWho);
    if (asWho == "pembeli"){
        window.location.href = '../listBarangTersedia.html';
    }
    if (asWho == "pemilik") {
        window.location.href = '../inputModal.html';
    }

}