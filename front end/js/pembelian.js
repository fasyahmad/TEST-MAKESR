// VIEW PURCHASE ORDER ======================================
var url_string = window.location.href
var url = new URL(url_string);
var contract_id = Number(url.searchParams.get("id_barang"));
ordering(id_barang)
$.ajax({
    url: `http://127.0.0.1:5000/getModalBy/${id_barang}`,
    method: "GET",
    async: true,

    success: function (profil) {
        $('#po_id').val(profil.po_id)
        $('#record_id').val(profil.record_id)
 

        var totalprice = profil.quantity * profil.price_each
        console.log(profil.quantity)
        console.log(profil.price_each)
        console.log(totalprice)
        $('#totalPrice').val(totalprice)
    },
    error: function (error) {
        //error handling

    },
    complete: function () {

    }
})


function addcoy() {
    var url_string = window.location.href
    var url = new URL(url_string);
    var contract_id = Number(url.searchParams.get("id_barang"));
    ordering(id_barang)
}
// ============================================

// ADD PURCHASE ORDER ============================================================
function ordering(id_barang) {
    // var quiz_id = document.getElementById("quiz").value;
    var jumlah_belanja = $('input#jumlah_belanja').val()


    console.log(jumlah_belanja);


    $.ajax({
        url: `http://127.0.0.1:5000/Order/${id_barang}`,
        method: "POST",
        contentType: "application/json",
        data: JSON.stringify({
            jumlah_belanja: jumlah_belanja,

        }),
        success: function () {
            alert("anda berhasil membeli barang IMPIAN");
            // window.location.href = 'contract_list.html'
        },
        error: function () {
            alert("cek semua inputanya");
        },
        complete: function () {
            console.log("mantul");
        }
    });
}

// ADD PURCHASE ORDER ======================================