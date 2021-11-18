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
ActiveRecord::Schema.define(version: 2021_11_18_194026) do
=======
ActiveRecord::Schema.define(version: 2021_11_17_175816) do
>>>>>>> bb76a57940dccd894e3717320f3b21eb6eb87e90

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "campaingfor_users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
<<<<<<< HEAD
    t.integer "turno_id"    add_reference :campaingvaccines,
    t.integer "user_id"
    t.integer "campaingvaccine_id", null: false
    t.index ["campaingvaccine_id"], name: "index_campaingfor_users_on_campaingvaccine_id"
=======
    t.integer "campaing_id", null: false
    t.integer "turno_id"
    t.integer "user_id"
    t.index ["campaing_id"], name: "index_campaingfor_users_on_campaing_id"
>>>>>>> bb76a57940dccd894e3717320f3b21eb6eb87e90
    t.index ["turno_id"], name: "index_campaingfor_users_on_turno_id"
    t.index ["user_id"], name: "index_campaingfor_users_on_user_id"
  end

  create_table "campaings", force: :cascade do |t|
    t.text "name"
<<<<<<< HEAD
=======
    t.text "vacuna"
>>>>>>> bb76a57940dccd894e3717320f3b21eb6eb87e90
    t.date "inicio"
    t.date "fin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
<<<<<<< HEAD
    t.integer "vacuna_id", null: false
    t.index ["vacuna_id"], name: "index_campaings_on_vacuna_id"
  end

  create_table "campaingvaccines", force: :cascade do |t|
    t.text "name"
    t.date "inicio"
    t.date "fin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vacuna_id"
    t.index ["vacuna_id"], name: "index_campaingvaccines_on_vacuna_id"
=======
>>>>>>> bb76a57940dccd894e3717320f3b21eb6eb87e90
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

  create_table "turnos", force: :cascade do |t|
    t.datetime "Fecha_hora"
    t.boolean "disponible"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vaccination_id", null: false
    t.boolean "asistio"
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
    t.text "vacuna"
    t.text "lote"
    t.integer "cantidad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
<<<<<<< HEAD
    t.integer "vaccination_id", null: false
    t.index ["vaccination_id"], name: "index_vacunas_on_vaccination_id"
  end

  add_foreign_key "campaingfor_users", "campaingvaccines"
  add_foreign_key "campaingfor_users", "turnos"
  add_foreign_key "campaingfor_users", "users"
  add_foreign_key "campaings", "vacunas"
  add_foreign_key "campaingvaccines", "vacunas"
  add_foreign_key "turnos", "vaccinations"
  add_foreign_key "vacunas", "vaccinations"
=======
  end

  add_foreign_key "campaingfor_users", "campaings"
  add_foreign_key "campaingfor_users", "turnos"
  add_foreign_key "campaingfor_users", "users"
  add_foreign_key "turnos", "vaccinations"
>>>>>>> bb76a57940dccd894e3717320f3b21eb6eb87e90
end
