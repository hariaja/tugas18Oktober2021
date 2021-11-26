<?php

require('config/config.php');
$query = "SELECT 
barang.barang_kode,
barang.barang_nama,
barang.barang_stok_awal, 
barang_golongan.barang_golongan_nama,
barang_satuan.barang_satuan_nama,
barang_jenis.barang_jenis_nama
FROM barang 
JOIN barang_golongan ON barang_golongan.barang_golongan_id = barang.barang_golongan_id
JOIN barang_satuan ON barang_satuan.barang_satuan_id = barang.barang_satuan_id
JOIN barang_jenis ON barang_jenis.barang_jenis_id = barang.barang_jenis_id
WHERE barang_nama LIKE 'B%'";

$execute = mysqli_query($conn, $query);
$cekData = mysqli_affected_rows($conn);

if ($cekData > 0) {
  $response['kode'] = 1;
  $response['message'] = 'Semua Data Barang dan Detailnya';
  $response['data'] = array();

  while ($getData = mysqli_fetch_object($execute)) {
    $B['barang_kode'] = $getData->barang_kode;
    $B['barang_nama'] = $getData->barang_nama;
    $B['barang_stok_awal'] = $getData->barang_stok_awal;
    $B['barang_golongan_nama'] = $getData->barang_golongan_nama;
    $B['barang_satuan_nama'] = $getData->barang_satuan_nama;
    $B['barang_jenis_nama'] = $getData->barang_jenis_nama;

    array_push($response['data'], $B);
  }
} else {
  $response['kode'] = 0;
  $response['message'] = 'Data Barang Tidak Tersedia';
}

echo json_encode($response);
mysqli_close($conn);
