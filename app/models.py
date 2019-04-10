import datetime
from flask_sqlalchemy import SQLAlchemy
from app import db


# MODAL ==================================================
class Modal(db.Model):
    __tablename__ = 'modal'

    id_barang = db.Column(db.Integer, primary_key=True)
    nama_barang = db.Column(db.String())
    jumlah_barang = db.Column(db.Integer)
    satuan = db.Column(db.String())
    harga_beli = db.Column(db.Integer)
    harga_jual = db.Column(db.Integer)
    # penjualan = db.relationship('Pembeli', cascade='all,delete', backref='modal', lazy=True)

    def __init__(self, nama_barang, jumlah_barang, satuan, harga_beli, harga_jual):
        self.nama_barang = nama_barang
        self. jumlah_barang = jumlah_barang
        self. satuan = satuan
        self. harga_beli = harga_beli
        self. harga_jual = harga_jual


    def __repr__(self):
        return '<modal id {}>'.format(self.id_barang)

    def serialize(self):
        return{
            'id_barang': self.id_barang,
            'nama_barang': self.nama_barang,
            'jumlah_barang': self.jumlah_barang,
            'satuan': self.satuan,
            'harga_beli': self.harga_beli,
            'harga_jual': self.harga_jual,
            # 'penjualan': [{'id_': item.id_, 'vendor_name': item.vendor_name, 'contract_start_date': item.contract_start_date, 'contract_end_date': item.contract_end_date} for item in self.contract_status]
        }
# MODAL =========================================================

# PEMBELI ==================================================


class Pembeli(db.Model):
    __tablename__ = 'pembeli'

    id_pembeli = db.Column(db.Integer, primary_key=True)
    id_ = db.Column(db.Integer)
    jumlah_belanja = db.Column(db.Integer)

    # penjualan = db.relationship('Pembeli', cascade='all,delete', backref='modal', lazy=True)

    def __init__(self, id_, jumlah_belanja):
        self.id_ = id_
        self. jumlah_belanja = jumlah_belanja
  

    def __repr__(self):
        return '<pembeli id {}>'.format(self.id_pembeli)

    def serialize(self):
        return{
            'id_pembeli': self.id_pembeli,
            'id_': self.id_,
            'jumlah_belanja': self.jumlah_belanja,

            # 'penjualan': [{'id_': item.id_, 'vendor_name': item.vendor_name, 'contract_start_date': item.contract_start_date, 'contract_end_date': item.contract_end_date} for item in self.contract_status]
        }
# PEMBELI =========================================================
