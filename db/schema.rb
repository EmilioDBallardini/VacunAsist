# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_11_20_184655) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_11_21_000330) do
=======
ActiveRecord::Schema.define(version: 2021_11_25_145057) do
>>>>>>> 79f0774edf860e4c73667d81fa8600baeb087454
>>>>>>> 7cd19f2fd3c6b2eaa6b02d412095f21dfbf18172

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "campaingfor_users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "turno_id"
    t.integer "campaingvaccine_id", null: false
    t.integer "user_id", null: false
    t.integer "vaccination_id", null: false
    t.index ["campaingvaccine_id"], name: "index_campaingfor_users_on_campaingvaccine_id"
    t.index ["turno_id"], name: "index_campaingfor_users_on_turno_id"
    t.index ["user_id"], name: "index_campaingfor_users_on_user_id"
<<<<<<< HEAD
  end

  create_table "campaings", force: :cascade do |t|
    t.text "name"
    t.text "vacuna"
    t.date "inicio"
    t.date "fin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
=======
    t.index ["vaccination_id"], name: "index_campaingfor_users_on_vaccination_id"
>>>>>>> 7cd19f2fd3c6b2eaa6b02d412095f21dfbf18172
  end

  create_table "campaingvaccines", force: :cascade do |t|
    t.text "name"
    t.date "inicio"
    t.date "fin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vacuna_id"
    t.index ["vacuna_id"], name: "index_campaingvaccines_on_vacuna_id"
  end

  create_table "noticia", force: :cascade do |t|
    t.string "img_url"
    t.string "pie_de_pagina"
    t.string "cuerpo"
    t.string "epigrafe"
    t.string "titulo"
    t.string "subtitulo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipo_vacunas", force: :cascade do |t|
    t.text "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "turnos", force: :cascade do |t|
    t.datetime "Fecha_hora"
    t.boolean "disponible"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vaccination_id", null: false
    t.index ["vaccination_id"], name: "index_turnos_on_vaccination_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tipo"
    t.integer "dni"
    t.date "nacimiento"
    t.string "nombre"
    t.string "apellido"
    t.boolean "enfermedad"
<<<<<<< HEAD
    t.integer "role"
=======
    t.integer "espera"
>>>>>>> 7cd19f2fd3c6b2eaa6b02d412095f21dfbf18172
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vaccinations", force: :cascade do |t|
    t.text "nombre"
    t.text "direccion"
    t.text "contacto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vacunas", force: :cascade do |t|
    t.text "lote"
    t.integer "cantidad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vaccination_id", null: false
    t.integer "tipo_vacuna_id", null: false
    t.text "nombre"
    t.index ["tipo_vacuna_id"], name: "index_vacunas_on_tipo_vacuna_id"
    t.index ["vaccination_id"], name: "index_vacunas_on_vaccination_id"
  end

  add_foreign_key "campaingfor_users", "campaingvaccines"
  add_foreign_key "campaingfor_users", "turnos"
  add_foreign_key "campaingfor_users", "users"
  add_foreign_key "campaingfor_users", "vaccinations"
  add_foreign_key "campaingvaccines", "vacunas"
  add_foreign_key "turnos", "vaccinations"
  add_foreign_key "vacunas", "tipo_vacunas"
  add_foreign_key "vacunas", "vaccinations"
end
