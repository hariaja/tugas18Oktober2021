<?php

require('config/config.php');
$query = "SELECT barang.barang_kode, barang.barang_nama, barang.barang_stok_awal FROM barang";
$execute = mysqli_query($conn, $query);
$cekData = mysqli_affected_rows($conn);

if ($cekData > 0) {
  $response['kode'] = 1;
  $response['message'] = 'Semua Data Barang';
  $response['data'] = array();

  while ($getData = mysqli_fetch_object($execute)) {
    $B['barang_kode'] = $getData->barang_kode;
    $B['barang_nama'] = $getData->barang_nama;
    $B['barang_stok_awal'] = $getData->barang_stok_awal;

    array_push($response['data'], $B);
  }
} else {
  $response['kode'] = 0;
  $response['message'] = 'Data Barang Tidak Tersedia';
}

echo json_encode($response);
mysqli_close($conn);
