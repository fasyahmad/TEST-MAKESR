var getAllModal = "http://127.0.0.1:5000/getAllModal"
$.ajax({
    url: getAllModal,
    method: "GET",
    success: function (modal) {
        for (var i = 0; i < modal.length; i++) {
            var modals =
               `
               <div class="row" >
               <div class="col-sm">
                                <p style="font-size:20px;" id="id_barang">${modal[i]['id_barang']}</p>
                            </div>
                            <div class="col-sm">
                                <p style="font-size:20px;" id="nama_barang">${modal[i]['nama_barang']}</p>
                            </div>
                            <div class="col-sm">
                                <p style="font-size:20px;" id="jumlah_barang">${modal[i]['jumlah_barang']}</p>
                            </div>
                            <div class="col-sm">
                                <p style="font-size:20px;" id="satuan">${modal[i]['satuan']}</p>
                            </div>
                            <div class="col-sm">
                                <p style="font-size:20px;" id="harga_jual">${modal[i]['harga_jual']}</p>
                            </div>
                            <div class="col-sm">
                                <a href="pembelian.html?id_barang=${modal[i].id_barang}">
                                <button type="button" class="btn btn-info">beli</button>
                                </a>
                            </div>
                            
                            </div>
               `
            $('#infoModal').append(modals)
        }

    },
    error: function () {

    },
    complete: function () {

    }

}) 
