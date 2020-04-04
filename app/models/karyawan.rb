class Karyawan < ApplicationRecord
    belongs_to :posisi
    belongs_to :pendidikan
end
