Laba Kotor Skenario Normal
SELECT
  tahun,
  SUM(pendapatan) - SUM(beban_operasional + penyusutan) AS laba_kotor
FROM
  `pph_badan.transaksi_keuangan`
WHERE
  skenario = 'normal'
GROUP BY
  tahun
ORDER BY
  tahun;

Laba Kotor Skenario Tax Holiday
SELECT
  tahun,
  SUM(pendapatan) - SUM(beban_operasional + penyusutan) AS laba_kotor
FROM
  `pph_badan.transaksi_keuangan`
WHERE
  skenario = 'tax holiday'
GROUP BY
  tahun
ORDER BY
  tahun;

Simulasi Depresiasi Metode Garis Lurus
SELECT
  aset_id,
  kategori,
  nilai_perolehan,
  umur_ekonomis,
  nilai_perolehan / umur_ekonomis AS depresiasi_tahunan
FROM
  `pph_badan.aset_tetap`
WHERE
  metode = 'garis lurus';

Simulasi Depresiasi Metode Saldo Menurun
SELECT
  aset_id,
  kategori,
  nilai_perolehan,
  umur_ekonomis,
  nilai_perolehan / umur_ekonomis AS depresiasi_tahunan
FROM
  `pph_badan.aset_tetap`
WHERE
  metode = 'saldo menurun';