json.extract! karyawan, :id, :nama, :pendidikan_id, :posisi_id, :created_at, :updated_at
json.url karyawan_url(karyawan, format: :json)
